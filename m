Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UQD9r-0001OM-NK
 for barebox@lists.infradead.org; Thu, 11 Apr 2013 08:47:04 +0000
Date: Thu, 11 Apr 2013 10:47:02 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130411084702.GL1906@pengutronix.de>
References: <20130410172212.3c672251@e6520eb>
 <1365609892-2322-1-git-send-email-eric@eukrea.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1365609892-2322-1-git-send-email-eric@eukrea.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v2] nand_base: detect more ONFI flash
To: Eric =?iso-8859-15?Q?B=E9nard?= <eric@eukrea.com>
Cc: barebox@lists.infradead.org

On Wed, Apr 10, 2013 at 06:04:52PM +0200, Eric B=E9nard wrote:
> if the flash has a known type, the ONFI detection won't occur
> and thus we may not detect the right parameters.
> By testing both namd and pagesize, as done in the kernel, we
> can detect ONFI flash with know IDs.
> =

> As an example on an i.MX53 board :
> - without the patch :
> NAND device: Manufacturer ID: 0x2c, Chip ID: 0xd3
> (Micron NAND 1GiB 3,3V 8-bit), page size: 4096, OOB size: 128
> =

> - with the patch :
> ONFI flash detected ... ONFI param page 0 valid
> NAND device: Manufacturer ID: 0x2c, Chip ID: 0xd3
> (Micron MT29F8G08ABACAWP), page size: 4096, OOB size: 224
> =

> in the first case the OOB size is wrong.
> =

> Signed-off-by: Eric B=E9nard <eric@eukrea.com>

Applied, thanks

Sascha

-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
