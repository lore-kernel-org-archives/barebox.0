Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bxWS1-0003L0-3H
 for barebox@lists.infradead.org; Fri, 21 Oct 2016 09:49:22 +0000
Date: Fri, 21 Oct 2016 11:48:58 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20161021094858.6ttowohdw5n3mrfk@pengutronix.de>
References: <20161021065124.7328-1-s.hauer@pengutronix.de>
 <20161021065124.7328-6-s.hauer@pengutronix.de>
 <fa561303-8330-208b-3588-bf9f4807d8cd@systec-electronic.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <fa561303-8330-208b-3588-bf9f4807d8cd@systec-electronic.com>
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
Subject: Re: [PATCH 6/6] fs: squashfs: Do not default on xz
To: Daniel =?iso-8859-15?Q?Kr=FCger?= <daniel.krueger@systec-electronic.com>
Cc: Barebox List <barebox@lists.infradead.org>

On Fri, Oct 21, 2016 at 10:23:55AM +0200, Daniel Kr=FCger wrote:
> Hi Sascha,
> =

> I tried this patch series, because I need Squashfs zlib support.
> =

> I get the following output during configuration/build:
> >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
> scripts/kconfig/conf --silentoldconfig Kconfig
> lib/lzo/Kconfig:1:error: recursive dependency detected!
> lib/lzo/Kconfig:1:	symbol LZO_DECOMPRESS is selected by SQUASHFS_LZO
> fs/squashfs/Kconfig:49:	symbol SQUASHFS_LZO depends on LZO_DECOMPRESS
> lib/Kconfig:21:error: recursive dependency detected!
> lib/Kconfig:21:	symbol XZ_DECOMPRESS is selected by SQUASHFS_XZ
> fs/squashfs/Kconfig:63:	symbol SQUASHFS_XZ depends on XZ_DECOMPRESS
> lib/Kconfig:9:error: recursive dependency detected!
> lib/Kconfig:9:	symbol ZLIB is selected by SQUASHFS_ZLIB
> fs/squashfs/Kconfig:24:	symbol SQUASHFS_ZLIB depends on ZLIB
> lib/Kconfig:17:error: recursive dependency detected!
> lib/Kconfig:17:	symbol LZ4_DECOMPRESS is selected by SQUASHFS_LZ4
> fs/squashfs/Kconfig:35:	symbol SQUASHFS_LZ4 depends on LZ4_DECOMPRESS
> <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

What a pity, then this does not work like this. I'll rework it.

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
