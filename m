Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-yh0-x22b.google.com ([2607:f8b0:4002:c01::22b])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Wk9r5-0005bS-Ht
 for barebox@lists.infradead.org; Tue, 13 May 2014 10:22:40 +0000
Received: by mail-yh0-f43.google.com with SMTP id v1so84556yhn.16
 for <barebox@lists.infradead.org>; Tue, 13 May 2014 03:22:13 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20140513100044.GO5858@pengutronix.de>
References: <CAOpc7mEUPrZtvd6uVApfcs4Wap42EhxLzGiD=8GaJWW8an8wkQ@mail.gmail.com>
 <20140513100044.GO5858@pengutronix.de>
Date: Tue, 13 May 2014 12:22:13 +0200
Message-ID: <CAOpc7mFPDrfWRW3+kP5=EcPvzGtPdx++ac1NrvNz=qaLR2xN7w@mail.gmail.com>
From: Holger Schurig <holgerschurig@gmail.com>
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
Subject: Re: Question about SPI NOR flash
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

> Your device is detected as a 32KB mr25h256 instead
> of the n25q512 you really have.

Oh, something here is flaky. Because sometimes it get's detected
correctly. Sigh. This here with dev_dbg() turned into dev_info() and
the partition things removed from the DTS:

detected i.MX6 Quad revision 1.2
mdio_bus: miibus0: probed
m25p80 spiflash@00: n25q512 (65536 Kbytes)
m25p80 spiflash@00: mtd .name = <NULL>, .size = 0x4000000 (64MiB)
.erasesize = 0x00001000 (4KiB) .numeraseregions = 0
imx-esdhc 2194000.usdhc: registered as 2194000.usdhc
imx-esdhc 219c000.usdhc: registered as 219c000.usdhc
environment load /dev/env0: No such file or directory
Maybe you have to create the partition.
no valid environment found on /dev/env0. Using default environment
running /env/bin/init...




> http://lists.infradead.org/pipermail/linux-mtd/2014-January/051382.html?#

Hmm, this isn't in origin/master. I'm a bit confused.

What should I use, master or next?  And why do both get patches
applied regularly?

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
