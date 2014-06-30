Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pa0-f51.google.com ([209.85.220.51])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X1gbd-00028e-FY
 for barebox@lists.infradead.org; Mon, 30 Jun 2014 18:47:10 +0000
Received: by mail-pa0-f51.google.com with SMTP id hz1so9073235pad.24
 for <barebox@lists.infradead.org>; Mon, 30 Jun 2014 11:46:47 -0700 (PDT)
Message-ID: <53B1B091.8060103@exegin.com>
Date: Mon, 30 Jun 2014 11:46:41 -0700
From: Owen Kirby <osk@exegin.com>
MIME-Version: 1.0
References: <53AC8C84.6030907@exegin.com>	<20140627020641.1b899265639de0dc4c6c88f0@gmail.com>	<53ACA82F.8090206@exegin.com>
 <20140627091005.d6135f847b27ee687a383d06@gmail.com>
In-Reply-To: <20140627091005.d6135f847b27ee687a383d06@gmail.com>
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
Subject: Re: [PATCH] Support for booting ELF images.
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On 14-06-26 10:10 PM, Antony Pavlov wrote:
> Yes, my kexec series have not been checked in.
> I can fix it this weekend.
>
> The main problem of my series is that it's a MIPS series but barebox is essentially a ARM bootloader.
> It seems that I have to add kexec ARM support :)
>
> Which hardware platform do you use?
We are indeed using an ARM platform (based on an Atmel AT91 SoC, but I 
haven't submitted a patch for our specific board yet). We are primarily 
using Barebox as a bootloader for the Linux kernel, but some of our 
customers want to our boards as eval kits for other operating systems 
(ie: eCos and FreeRTOS).

It's only for those other operating systems that we need the ability to 
load and execute ELF images, we're still using zImage for the Linux 
kernel and I'd feel bad for dumping a lot of kexec work on you when we 
don't really need to be able to boot Linux with it.

Cheers,
Owen


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
