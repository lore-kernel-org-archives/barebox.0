Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1X0Ge4-0002QL-MO
 for barebox@lists.infradead.org; Thu, 26 Jun 2014 20:51:49 +0000
Date: Thu, 26 Jun 2014 22:51:23 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140626205123.GM14257@pengutronix.de>
References: <1403591596-13955-1-git-send-email-dev@lynxeye.de>
 <20140624071749.GD15686@pengutronix.de>
 <CAOpc7mF83vBoY6an=CqSz_ovq9rVdr9tjtR32fVdNqneD=_pfw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAOpc7mF83vBoY6an=CqSz_ovq9rVdr9tjtR32fVdNqneD=_pfw@mail.gmail.com>
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
Subject: Re: [PATCH 1/3] arm: imx6: move imx6_init_lowlevel to single initcall
To: Holger Schurig <holgerschurig@gmail.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Thu, Jun 26, 2014 at 02:02:07PM +0200, Holger Schurig wrote:
> Hmm, I have removed the imx6_init_lowlevel() from my (out-of-tree)
> board.c file. Still I get this warning:
> 
> __request_region: 0x10000000:0x4fffffff conflicts with 0x10000000:0x4fffffff
> 
> Could this be related to your patchset?  In the log below, the text "
> ahs2_postcore_init, after barebox_set_hostname()" is a printf()
> directly before the return of that function.
> 
> Switch to console [cs0]
> in ahs2_postcore_init
> ahs2_postcore_init, after barebox_set_hostname()
> detected i.MX6 Quad revision 1.2
> Switch to console [cs0]
> in ahs2_postcore_init
> ahs2_postcore_init, after barebox_set_hostname()
> detected i.MX6 Quad revision 1.2
> __request_region: 0x10000000:0x4fffffff conflicts with 0x10000000:0x4fffffff
> mdio_bus: miibus0: probed
> m25p80 spiflash@00: n25q512 (65536 Kbytes)
> imx-esdhc 2194000.usdhc: registered as 2194000.usdhc
> imx-esdhc 219c000.usdhc: registered as 219c000.usdhc
> 
> 
> When I remove
> 
>     memory {
>       reg = <0x10000000 0x40000000>;
>     };
> 
> from my DTS, then the error vanishes, but how could some other part in
> barebox possible know how much memory my board has?

The values are read back from the SDRAM controller, see
arch/arm/mach-imx/esdctl.c.

The idea was that the SDRAM should be used from the SDRAM controller
or the DTS. That worked well and nobody noticed until the warning
about conflicting resources was introduced...

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
