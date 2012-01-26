Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-yw0-f49.google.com ([209.85.213.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RqDGh-0005Uy-RU
 for barebox@lists.infradead.org; Thu, 26 Jan 2012 00:32:48 +0000
Received: by yhjj72 with SMTP id j72so10383yhj.36
 for <barebox@lists.infradead.org>; Wed, 25 Jan 2012 16:32:45 -0800 (PST)
From: Marc Reilly <marc@cpdesign.com.au>
Date: Thu, 26 Jan 2012 11:32:32 +1100
References: <1327525133.19793.23.camel@hp-dhlii>
 <20120125220848.GC5446@pengutronix.de>
In-Reply-To: <20120125220848.GC5446@pengutronix.de>
MIME-Version: 1.0
Message-Id: <201201261132.32331.marc@cpdesign.com.au>
Reply-To: marc@cpdesign.com.au
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: i.MX53 QSB
To: barebox@lists.infradead.org

Hi,

> > If I am booting from the SD card how do I get it onto the card
> > 
> > dd if=barebox.bin of=/dev/sdc bs=512 seek=2 ??
> 
> cat barebox.bin > /dev/sdc
> 
> Of course this means that you will overwrite the partition table of the
> SD card. I'm still loooking for a good way to make this behaviour more
> convenient.

(For iMX35 at least): The barebox image doesn't contain anything in the first 
1K apart from an unconditional branch to the reset vector (at 2K offset). This 
branch is not necessary for internal booting, because the app entry point is 
specified in the flash header information.

sudo dd if=barebox.bin of=/dev/sde bs=512 seek=2 skip=2

similarly for the env and kernel...

sudo dd if=barebox_default_env of=/dev/sde bs=512 seek=512
sudo dd if=${KERNEL_LOC}/arch/arm/boot/uImage of=/dev/sde bs=512 seek=1536
sync && sync


Make sure that your boot pins are set to boot from SD!! 

Cheers,
Marc

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
