Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1X06gG-0001t1-L8
 for barebox@lists.infradead.org; Thu, 26 Jun 2014 10:13:26 +0000
Message-ID: <1403777490.4254.11.camel@weser.hi.pengutronix.de>
From: Lucas Stach <l.stach@pengutronix.de>
Date: Thu, 26 Jun 2014 12:11:30 +0200
In-Reply-To: <CAOpc7mENrjdk-caJh3QA=S5_hdf21SCt_JNToQkx4p9qBnTPrg@mail.gmail.com>
References: <CAOpc7mENrjdk-caJh3QA=S5_hdf21SCt_JNToQkx4p9qBnTPrg@mail.gmail.com>
Mime-Version: 1.0
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
To: Holger Schurig <holgerschurig@gmail.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Am Donnerstag, den 26.06.2014, 12:04 +0200 schrieb Holger Schurig:
> Hi all,
> 
> In the Freescale i.MX6Q Reference manual they say in "8. System Boot"
> near the end of "8.5.3.1 Expansion Device eFUSE configuration" that
> the processor can load from SDCARD, but only up to 32 MB.
> 
> Did any one of you succeeded in booting barebox from SDCARD, maybe
> with a trampoline code?  Or can the PBL do that? AFAIK U-Boot can boot
> from sdcard, at least Boundary Devices have some web pages about this
> (for Nitrogen/SabreLite) on their web page. Anyone already found out
> how U-Boot does it?  I could think about whatever U-Boot uses to load
> the "real" Barebox instead :-)

Um, we started barebox from SD-card on a lot of boards where the boot
mode strapping allows this.

Just dd the resulting *.img to an SD-card (you may skip the first 512
byte to leave your MBR in place). If you got the boot mode selection
right it should just work.

Regards,
Lucas

-- 
Pengutronix e.K.             | Lucas Stach                 |
Industrial Linux Solutions   | http://www.pengutronix.de/  |


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
