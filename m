Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from zimbra2.kalray.eu ([92.103.151.219])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h7Gl6-00011n-6R
 for barebox@lists.infradead.org; Fri, 22 Mar 2019 09:46:41 +0000
References: <CAD_Pvub19JJgwwkZrNX7iz47f-jib5hiUgE+8Z=2cSf80=YygQ@mail.gmail.com>
 <20190321073332.b3725avve4p6ascg@pengutronix.de>
 <CAD_PvubAaFD=zJVrzpjq__F2Qre4XedjE8op_1GAQcf19jYOrg@mail.gmail.com>
 <201903211025.18488.jbe@pengutronix.de>
 <CAD_PvuYsX9jMjjS8tmbOO52397dMw-xegh54aUm2hU2wTUGJqw@mail.gmail.com>
 <73e974ac-11a7-6ee7-ee1a-d5fab51e3b2f@eurek.it>
From: Yann Sionneau <ysionneau@kalray.eu>
Message-ID: <09d70666-fe6d-0bfb-bbcc-e232d52d3e6d@kalray.eu>
Date: Fri, 22 Mar 2019 10:46:31 +0100
MIME-Version: 1.0
In-Reply-To: <73e974ac-11a7-6ee7-ee1a-d5fab51e3b2f@eurek.it>
Content-Language: en-US
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: STM32MP1 SoC support in latest Barebox
To: gianluca <gianlucarenzi@eurek.it>, barebox@lists.infradead.org

Hello,

By searching in list archive you could have found:

http://lists.infradead.org/pipermail/barebox/2019-March/037572.html

So there is a bit of support, which has been commited in "next" branch.

See 
https://git.pengutronix.de/cgit/barebox/tree/arch/arm/boards/stm32mp157c-dk2?h=next

No idea how far this boots.

On 3/22/19 9:07 AM, gianluca wrote:
> Hello list!
>
> I need a __very quick__ answer to this subject, because a customer 
> wants to migrate from a iMX28 based board to a STM32MP1.
>
> Actually the iMX28 board was developed by me, 6 years ago and it has 
> Barebox 2013.02, Linux Kernel 3.12.1 and a Debian Wheezy. It runs from 
> eMMC, but it can boot from microSD for production line.
>
> I modified Barebox with custom made init scripts to enable some i2c 
> hardware before running Linux kernel, and Barebox had access/drivers 
> for ethernet, serial for debugging console, i2c (bit-banging) and some 
> gpios.
>
> It had access to ext4 filesystem on eMMC partition and managed somehow 
> the device tree to pass to Linux and it works like charms!
>
> Now I would like to know (without spending too much time to gitclone 
> the repo and reading the configuration stuff) if Barebox is still able 
> to boot off a microSD, and having the same drivers available as the 
> iMX28 has, just to reduce the porting session at their minimum levels.
>
> P.S.: I know UBoot for the evaluation board has all stuff I need, but 
> I hate the way it works: too messy, too #ifdef clauses, etc.,...
>
> Thank you in advance,

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
