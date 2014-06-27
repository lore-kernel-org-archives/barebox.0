Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-yh0-x232.google.com ([2607:f8b0:4002:c01::232])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X0S87-0005ik-O3
 for barebox@lists.infradead.org; Fri, 27 Jun 2014 09:07:36 +0000
Received: by mail-yh0-f50.google.com with SMTP id t59so2834118yho.23
 for <barebox@lists.infradead.org>; Fri, 27 Jun 2014 02:07:14 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20140626194212.GK14257@pengutronix.de>
References: <CAOpc7mENrjdk-caJh3QA=S5_hdf21SCt_JNToQkx4p9qBnTPrg@mail.gmail.com>
 <1403777490.4254.11.camel@weser.hi.pengutronix.de>
 <20140626194212.GK14257@pengutronix.de>
Date: Fri, 27 Jun 2014 11:07:13 +0200
Message-ID: <CAOpc7mFTyx9FD8Gk2qtMGYN_bA5_wn_zUu_cPuZ7bqUgfwz6CQ@mail.gmail.com>
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
Subject: Re: Booting barebox on i.MX6 from SDCARD?
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Hmm, this is really weird.

On my device, I have a WinCE image on a MMC card. When I insert this
MMC card, the hardware boots from it and I see the output of the EBOOT
on the serial port. So I know that the hardware can boot from SDCARD
(e.g. BOOTCFG setup etc). If I remove the card, then the CPU instead
activates serial (USB) boot, as I can see with lsusb/journalctl -f.

Now I use the exact same MMC card and put
barebox/images/barebox-ahs2.img onto it. This is an image that I can
boot via "barebox/scripts/imx/imx-usb-loader -v
barebox/images/barebox-ahs2.img". So I know that this image isn't
totally borked up ...  As I insert this card now and turn the power on
....   nothing happens. The hardware seems dead, even with
CONFIG_DEBUG_LL.

Doesn't seem to matter if I put the image onto the MMC card with or
without bs=512 skip=1 seek=1.

(I also used SDCARD in a Sandisk MMC->SDCARD adapter. But beware: my
sandisk adapter doesn't provide a proper card detect signal ...)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
