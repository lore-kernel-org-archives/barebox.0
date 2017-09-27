Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from vsmx009.vodafonemail.xion.oxcs.net ([153.92.174.87])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dx7iU-00024o-Ak
 for barebox@lists.infradead.org; Wed, 27 Sep 2017 08:29:17 +0000
Date: Wed, 27 Sep 2017 10:28:45 +0200 (CEST)
From: Giorgio Dal Molin <iw3gtf@arcor.de>
Message-ID: <2068226802.92408.1506500925602@mail.vodafone.de>
In-Reply-To: <40bfec7f-1874-a29e-74c0-44d35e95ca06@rempel-privat.de>
References: <1905880803.90654.1506495106339@mail.vodafone.de>
 <40bfec7f-1874-a29e-74c0-44d35e95ca06@rempel-privat.de>
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
Subject: Re: barebox on an intel efi system
To: Oleksij Rempel <linux@rempel-privat.de>, barebox@lists.infradead.org

Hi Oleksij,

this was the solution to my problems,

thank you very much.

giorgio

> Oleksij Rempel hat am 27. September 2017 um 09:11 geschrieben:
> 
> Hi,
> 
> you probably need this fix:
> https://git.pengutronix.de/cgit/barebox/commit/?h=next&id=fc7c42ff3c889ccc993061ee183b0cf1621e3f1c
> 
> It is in barebox/next.
> 
> Am 27.09.2017 um 08:51 schrieb Giorgio Dal Molin:
> > Hi,
> > 
> > I'm currently working with an embedded system based on a "normal"
> > intel (atom) PC with an AMI Bios on it supporting EFI.
> > 
> > I've built a barebox for it based on the 'arch/x86/configs/efi_defconfig'
> > and it basically runs on the target: I get a prompt on the screen, the
> > keyboard works and I can issue commands and boot a kernel.
> > 
> > My problem is now that the '/boot' and '/efi' dirs do not automatically
> > appear as described in http://www.barebox.org/doc/latest/boards/efi.html
> > 
> > After a bit of grepping and browsing in the barebox sources I've found
> > the file:
> > 
> >  fs/efi.c
> > 
> > At the end of it there is the 'efi_fs_driver' and its probe function;
> > I think the driver is registered with the core but the probe function
> > is never called on my system.
> > 
> > Could this be OK on an EFI system or is it an indication that something
> > is not properly configured ?
> > 
> > giorgio
> > 
> > _______________________________________________
> > barebox mailing list
> > barebox@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/barebox
> 
> -- 
> Regards,
> Oleksij
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
