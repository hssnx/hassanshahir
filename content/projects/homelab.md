+++
title = "Building My First Homelab"
date = 2024-11-29
+++

A few weeks ago, I got really influenced by [r/homelab](https://old.reddit.com/r/homelab/) and [r/selfhosted](https://old.reddit.com/r/selfhosted/). Everyone was posting photos of their setups, flexing all the services they managed to self-host. I became genuinely curious and thought, "I have to try this myself at some point."

In this write-up, I'll explain how I set up a dirt-cheap mini homelab, what real-world problems it solved for me, and whether I think you should bother doing the same.

So, after getting really hyped from seeing sysadmins and other redditors flexing their setups, I directly searched the internet and watched several YouTube videos. The saying that you can learn almost everything on the internet is so true.

To be honest, owning a home server, even a mini one, seemed "cool," but I didn't exactly understand how people used them. Some had huge racks filled with servers, and I was curious about what the heck they used such extensive setups for personal use.

After a lot of research, I learned that a homelab is basically an IT setup you build at home, usually with one or more machines called servers. These servers are similar to personal computers, but instead of consuming content (like watching videos or browsing websites), their main purpose is serving content or services to others.

My question at that time was: if a server is for serving, what should I serve if I want to build my own homelab? I'm not running a company or some "big" thing. However, I found multiple services you can run on your home server that drastically enhance your digital experience. For example, personal cloud storage like your own iCloud or Microsoft Drive, media servers like your own Netflix, game servers like Minecraft, a VPN server, a DNS server, or a Pi-hole to block ads network-wide. All these services need to run 24/7, which is exactly what a server is designed for. Or, if you're developing real-world full-stack applications, you can host your entire backend on your homelab.

Another important reason people set up a homelab is because they enjoy tinkering and learning. Actually, I've learned more about networking by setting up my mini homelab than from any course I can remember. It's a fantastic way to learn by actually doing something fun.

With all this information, I was really hyped and wanted to set up my own homelab. But, as a student, I didn't have money to buy expensive racks, so I did what most beginners do and bought a used Dell Optiplex.

I installed Proxmox on it, which allows me to run several operating systems on a single CPU, and then installed Ubuntu Server on top of Proxmox. Now, I had a server running Ubuntu, ready to serve "stuff" from my room.

First, I installed AdGuard, a personal DNS server with extensive block lists that prevent access to malicious websites. This was crucial because my network users are mostly children, and as a responsible adult, protecting them online is extremely important.

Next, I spun up Windows Server 2019 and built a mini Active Directory lab for pentesting practice. This was both fun and a complete headache, as I had to deal with group policies, permissions, network configurations... the full Windows IT headache.

I also installed File Browser, allowing easy file sharing within the network without dealing with FTP or USB sticks. It's just a simple drag-and-drop way of sharing files. And a few more services...

But, one of the most significant things I did was host my backend server for my full-stack web application ([shahirconnect.com](http://shahirconnect.com/)). This was when I realized how powerful a homelab could be. Instead of paying for a VPS every month, I now had full control over everything.

So, the big question is: should you set up your own homelab? My honest answer is NO. You shouldn't set up a homelab unless you're someone who genuinely enjoys tinkering with hardware and software, and has time to dedicate to manually configuring everything. I did it precisely because I'm that kind of person.

My blunt advice: if you value efficiency over exploration, just use available online services. Rent a VPS if you want to run a backend server, use OpenDNS for DNS, and pay for iCloud or Microsoft Drive for storage. But if you enjoy exploring, breaking, rebuilding things, and learning by doing, definitely give it a shot.

Ultimately, what I learned from building my homelab is that it's not about saving money or maximizing efficiency. But rather, it's more about the thrill of experimenting, the satisfaction of learning new things, and the pride you feel when your entire digital life runs on something you've crafted yourself.
