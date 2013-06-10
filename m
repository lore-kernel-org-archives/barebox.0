Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Um5uI-00009i-Jj
 for barebox@lists.infradead.org; Mon, 10 Jun 2013 17:29:27 +0000
Date: Mon, 10 Jun 2013 19:29:01 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130610172901.GN32299@pengutronix.de>
References: <51B0B2D6.3030407@knowtrek.com> <51B5C56C.4050801@knowtrek.com>
 <51B6066A.5020801@knowtrek.com> <1370884028.154515180@f150.mail.ru>
 <51B60B95.8020506@knowtrek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <51B60B95.8020506@knowtrek.com>
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
Subject: Re: how to flash barebox and set root variable? - barebox is gone :(
To: Adam Furmanczuk <afurmanczuk@knowtrek.com>
Cc: barebox@lists.infradead.org

On Mon, Jun 10, 2013 at 07:23:33PM +0200, Adam Furmanczuk wrote:
> -----BEGIN PGP SIGNED MESSAGE-----
> Hash: SHA1
> 
> On 10.06.2013 19:07, Alexander Shiyan wrote:
> >> flashing barebox.bin to /dev/nor0.kernel
> >>> 
> >>> Unknown command 'tftp' - try 'help'
> > Seems tftp command is not compiled in. Ensure that you have 
> > CONFIG_CMD_TFTP in your .config.
> 
> Thanks Alexander,
> 
> but my barebox binary is gone :(. Have been a bit careles... I would
> need to flash the binary over my OCD USB controller, but do not realy
> have a clue how to do this.
> I am waiting for support reply for this ICnova iMX536 SODIMM module,
> they should give me some steps how to proceed.

Connect your board via USB to a host. Do you see a device? If yes,
enable CONFIG_ARCH_IMX_USBLOADER in a recent barebox. After compiling
you will have scripts/imx/imx-usb-loader which you can use to recover
via USB.

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
