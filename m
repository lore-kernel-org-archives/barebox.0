Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp.mei.co.jp ([133.183.100.20])
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XZXQu-0001hd-I4
 for barebox@lists.infradead.org; Thu, 02 Oct 2014 03:52:01 +0000
Date: Thu, 02 Oct 2014 12:51:33 +0900
From: Masahiro Yamada <yamada.m@jp.panasonic.com>
In-Reply-To: <20141001120643.GH4992@pengutronix.de>
References: <20141001193534.5A4B.AA925319@jp.panasonic.com>
 <20141001120643.GH4992@pengutronix.de>
Message-Id: <20141002125132.4702.AA925319@jp.panasonic.com>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: Newbie question
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Sascha,



On Wed, 1 Oct 2014 14:06:43 +0200
Sascha Hauer <s.hauer@pengutronix.de> wrote:

> Hi,
> 
> On Wed, Oct 01, 2014 at 07:35:34PM +0900, Masahiro Yamada wrote:
> > Hi.
> > 
> > 
> > Please forgive me if I am asking a silly newbie question.
> > 
> > I have some knowledge of U-Boot
> > but I have just started digging into barebox.
> > 
> > 
> > My simple question is, something like SPL
> > (secondary program loader) in U-boot is covered by barebox?
> 
> Yes, it is, in barebox it's called PBL (PreBootLoader).
> 
> If enabled the ROM will load the PBL from the boot device (Or sometimes
> the whole image, depends on the ROM). The PBL will then load the rest
> of the image from the device, uncompress it and jump to it.
> 
> > [1] BootROM (hard-wired)
> > 
> > [2] Tiny boot program
> >     for initializing SDRAM, etc.
> > 
> > [3] High-level boot loader
> >     for loading the kernel, handling device tree etc.
> > 
> > [4] Linux
> > 
> > 
> > 
> > I guess [3] is covered by barebox.
> > 
> > Is [2] supported by barebox? Or is it like Do-It-Yourself thing?
> 
> Well, there's infrastructure for it, but due to the limited space
> and restricted environment in the PBL there's still some DIY left ;)
> 



Now I understood how it works.

 obj-y  => Main barebox
 pbl-y  => PBL


Thanks!



Best Regards
Masahiro Yamada


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
