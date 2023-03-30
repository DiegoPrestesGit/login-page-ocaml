#!/usr/bin/env node

import chalk from 'chalk'
import inquirer from 'inquirer'
import gradient from 'gradient-string'
import chalkAnimation from 'chalk-animation'
import figlet from 'figlet'
import { createSpinner } from 'nanospinner'

let playerName = ''

const sleep = (ms = 2000) => new Promise(resolve => setTimeout(resolve, ms))

const welcome = async () => {
  const rainbowTitle = chalkAnimation.rainbow('hey hey people, Diego here \n')

  await sleep()
  rainbowTitle.stop()

  console.log(`
    ${chalk.bgBlue('HOW TO PLAY')}
    I am a process on our computer.
    If you get any question wrong I will be ${chalk.bgRed('DEAD')}
  `)
}

const askName = async () => {
  const answer = await inquirer.prompt({
    name: 'playerName',
    type: 'input',
    message: 'what is your name?',
    default: () => 'Player' // TODO: will this work?
  })

  playerName = answer.playerName
}

const question1 = async () => {
  const answer = await inquirer.prompt({
    name: 'question1',
    type: 'list',
    message:
      'Javascript was created in 10 days (or 7, idk, actually) then released on \n',
    choices: [
      'May 23rd, 1995',
      'Nov 24th, 19995',
      'Dec 4th, 1995',
      'Dec 17, 1996'
    ]
  })

  return handleAnswer(answer.question1 === 'Dec 4th, 1995')
}

const winner = async () => {
  console.clear()
  const msg = `Impressive, ${playerName} !\n very nice! `

  figlet(msg, (err, data) => {
    try {
      console.log(gradient.pastel.multiline(data))
    } catch (error) {
      console.log(err)
    }
  })
}

const handleAnswer = async isCorrent => {
  const spinner = createSpinner('Checking answer...').start()
  await sleep()

  if (isCorrent) {
    spinner.success({ text: `Good job ${playerName}` })
  } else {
    spinner.error({ text: `💀💀💀 Game over, you lose ${playerName}` })
    process.exit(1)
  }
}

await welcome()
await askName()
await question1()
await winner()
