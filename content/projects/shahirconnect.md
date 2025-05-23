+++
title = "Building an AI App for Family Accountability"
date = 2025-03-15
+++

As an adult, I have the responsibility of keeping my siblings accountable. I should know their goals and what they want to achieve, helping them build long-lasting, healthy, consistent habits to reach those goals. However, I often encounter one recurring problem: time management.

I don't have enough time to check in daily with my four siblings, guiding them on what to do each day or each month. To address this, I created an AI-powered web app. When someone enters a goal, like "I want to read a book this month," the app asks follow-up questions such as how many pages to read daily. It then breaks down the goal into manageable chunks, assigns tasks to specific days throughout the month, and sends daily email reminders. Additionally, users can't just mark tasks as complete; they must provide a brief summary of what they learned. The AI evaluates this summary, marks the task as complete, and awards points. The app further gamifies goal achievement by including a family leaderboard, showing who completed the most tasks each month.

Importantly, the app isn't limited to reading goals; it can handle any objective. For instance, if my younger sibling wants to learn basic arithmetic, so he enters a goal like "I want to learn multiplication this month." The AI splits this goal into smaller daily tasks and practice problems, assigns them to specific days throughout the month, and sends daily email reminders. My brother then answers these problems, and the AI evaluates his responses to determine correctness. This workflow significantly reduces my direct daily involvement while effectively supporting his learning.

I named this app [shahirconnect.com](http://shahirconnect.com/) after our family name, Shahir, emphasizing its role as a family-focused tool. Initially, it addresses a specific need within our family, but if we see sustained positive results, I plan to expand it into a multi-tenant architecture, allowing other families to benefit from the same functionalities.

For the technical part, I set up shahirconnect with a separate frontend and backend architecture.

On the frontend, I used React with TypeScript and Vite to make sure everything loads fast. For design, I used Tailwind CSS so I don’t waste time on manual styling. I used Shadcn/ui for all the UI components. For forms, I used React Hook Form and Zod to make sure users can’t submit garbage data. Finally, I used Recharts for the leaderboards and charts, so everything looks clean and appealing.

On the backend, I used Node.js with Express. I exposed every feature as a simple REST API at [api.shahirconnect.com](http://api.shahirconnect.com). I used Supabase for the PostgreSQL database, authentication, and file storage (like user profile pictures). Then, I set up cron jobs with Resend to automate daily email reminders. For generating and evaluating goals, I used the OpenAI API (GPT-4o). When someone submits their daily summary, the backend sends it to OpenAI, gets back a JSON response, and then decides if the task is complete or not.

For hosting, I split everything up. The frontend is on Vercel, so it auto-deploys every time I push to GitHub. The backend runs on my own [homelab](https://www.hassanshahir.com/projects/homelab/) server using Docker, exposed to the internet via port forwarding.

What this whole project really taught me is this: if you approach problems as systems, you can build almost anything today. Everything you need, like skills, knowledge, and tools, is already out there. The only things you have to bring are time, dedication, and the willingness to learn. When you put those together with all the resources available, you can build almost anything.
