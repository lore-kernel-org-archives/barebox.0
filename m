Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PvQP8-00075r-0f
	for barebox@lists.infradead.org; Fri, 04 Mar 2011 08:30:31 +0000
Date: Fri, 4 Mar 2011 09:30:28 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20110304083028.GC29521@pengutronix.de>
References: <6EE7D1502C48E44E92DCADF9DD3E0DB9017FF3B0104E@SRV-VS06.TELEVIC.COM>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6EE7D1502C48E44E92DCADF9DD3E0DB9017FF3B0104E@SRV-VS06.TELEVIC.COM>
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
Subject: Re: bootargs
To: Vanalme Filip <F.Vanalme@TELEVIC.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Fri, Mar 04, 2011 at 09:18:26AM +0100, Vanalme Filip wrote:
> 
> I think it might have something to do with the BI-swapping issue. The
> BI-swapping is, as far as I know, not yet implemented in the kernel's
> NAND driver. So, if I flash the rootfs with Barebox (doing the
> BI-swap) and then read the rootfs from within the kernel (not doing
> the BI-swap), I will for sure have problem...

Using 2k NAND flash on the i.MX27 will most likely lead to problems...

> 
> Remarkable : the Linux version I use is a version we downloaded from
> Freescale's git repositry. In this version, we could select the
> i.MX27PDK board. However, that board's code is obviously not
> registering the NAND flash driver... knowing that the i.MX27PDK only
> contains NAND-flash, this is very weird...

Normally we do root over nfs during development, so this is not very
surprising. As Freescale does not support the i.MX27 anymore the
i.MX27PDK support in FSLs git kernel is probably identical to mainline.

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
