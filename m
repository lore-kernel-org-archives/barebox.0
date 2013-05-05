Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UYsuv-00064Z-Jl
 for barebox@lists.infradead.org; Sun, 05 May 2013 06:59:30 +0000
Date: Sun, 5 May 2013 08:59:07 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130505065907.GZ32299@pengutronix.de>
References: <1367599871-28479-1-git-send-email-thomas.petazzoni@free-electrons.com>
 <1367599871-28479-6-git-send-email-thomas.petazzoni@free-electrons.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1367599871-28479-6-git-send-email-thomas.petazzoni@free-electrons.com>
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
Subject: Re: [PATCH 5/7] arm: add basic support for Armada XP OpenBlocks AX3
 platform
To: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
Cc: Lior Amsalem <alior@marvell.com>, barebox@lists.infradead.org, Willy Tarreau <w@1wt.eu>, Ezequiel Garcia <ezequiel.garcia@free-electrons.com>

On Fri, May 03, 2013 at 06:51:09PM +0200, Thomas Petazzoni wrote:
> diff --git a/arch/arm/boards/plathome-openblocks-ax3/kwbimage.cfg b/arch/arm/boards/plathome-openblocks-ax3/kwbimage.cfg
> new file mode 100644
> index 0000000..0ae1efd
> --- /dev/null
> +++ b/arch/arm/boards/plathome-openblocks-ax3/kwbimage.cfg
> @@ -0,0 +1,8 @@
> +VERSION 1
> +BOOT_FROM spi
> +DESTADDR 00000000
> +EXECADDR 00000000
> +NAND_BLKSZ 00000000
> +NAND_BADBLK_LOCATION 00
> +BINARY binary.0 0000005b 00000068
> +PAYLOAD barebox.bin

I think the payload file should be configurable on the commandline of
the kwbimage tool. When using compressed images the filename would be
zbarebox.bin for example.

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
