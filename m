Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1X0TTS-0004sw-1n
 for barebox@lists.infradead.org; Fri, 27 Jun 2014 10:33:42 +0000
Date: Fri, 27 Jun 2014 12:33:18 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140627103318.GO14257@pengutronix.de>
References: <CAOpc7mENrjdk-caJh3QA=S5_hdf21SCt_JNToQkx4p9qBnTPrg@mail.gmail.com>
 <1403777490.4254.11.camel@weser.hi.pengutronix.de>
 <20140626194212.GK14257@pengutronix.de>
 <CAOpc7mFTyx9FD8Gk2qtMGYN_bA5_wn_zUu_cPuZ7bqUgfwz6CQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAOpc7mFTyx9FD8Gk2qtMGYN_bA5_wn_zUu_cPuZ7bqUgfwz6CQ@mail.gmail.com>
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

On Fri, Jun 27, 2014 at 11:07:13AM +0200, Holger Schurig wrote:
> Hmm, this is really weird.
> 
> On my device, I have a WinCE image on a MMC card. When I insert this
> MMC card, the hardware boots from it and I see the output of the EBOOT
> on the serial port. So I know that the hardware can boot from SDCARD
> (e.g. BOOTCFG setup etc). If I remove the card, then the CPU instead
> activates serial (USB) boot, as I can see with lsusb/journalctl -f.
> 
> Now I use the exact same MMC card and put
> barebox/images/barebox-ahs2.img onto it. This is an image that I can
> boot via "barebox/scripts/imx/imx-usb-loader -v
> barebox/images/barebox-ahs2.img". So I know that this image isn't
> totally borked up ...  As I insert this card now and turn the power on
> ....   nothing happens. The hardware seems dead, even with
> CONFIG_DEBUG_LL.

Have you tried without DEBUG_LL? It might be that you write to an
uninitialized UART.

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
