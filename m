Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from webbox1416.server-home.net ([77.236.96.61])
 by bombadil.infradead.org with esmtp (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bxV7i-00053h-RI
 for barebox@lists.infradead.org; Fri, 21 Oct 2016 08:24:19 +0000
References: <20161021065124.7328-1-s.hauer@pengutronix.de>
 <20161021065124.7328-6-s.hauer@pengutronix.de>
From: =?UTF-8?Q?Daniel_Kr=c3=bcger?= <daniel.krueger@systec-electronic.com>
Message-ID: <fa561303-8330-208b-3588-bf9f4807d8cd@systec-electronic.com>
Date: Fri, 21 Oct 2016 10:23:55 +0200
MIME-Version: 1.0
In-Reply-To: <20161021065124.7328-6-s.hauer@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 6/6] fs: squashfs: Do not default on xz
To: Sascha Hauer <s.hauer@pengutronix.de>, Barebox List <barebox@lists.infradead.org>

Hi Sascha,

I tried this patch series, because I need Squashfs zlib support.

I get the following output during configuration/build:
 >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
scripts/kconfig/conf --silentoldconfig Kconfig
lib/lzo/Kconfig:1:error: recursive dependency detected!
lib/lzo/Kconfig:1:	symbol LZO_DECOMPRESS is selected by SQUASHFS_LZO
fs/squashfs/Kconfig:49:	symbol SQUASHFS_LZO depends on LZO_DECOMPRESS
lib/Kconfig:21:error: recursive dependency detected!
lib/Kconfig:21:	symbol XZ_DECOMPRESS is selected by SQUASHFS_XZ
fs/squashfs/Kconfig:63:	symbol SQUASHFS_XZ depends on XZ_DECOMPRESS
lib/Kconfig:9:error: recursive dependency detected!
lib/Kconfig:9:	symbol ZLIB is selected by SQUASHFS_ZLIB
fs/squashfs/Kconfig:24:	symbol SQUASHFS_ZLIB depends on ZLIB
lib/Kconfig:17:error: recursive dependency detected!
lib/Kconfig:17:	symbol LZ4_DECOMPRESS is selected by SQUASHFS_LZ4
fs/squashfs/Kconfig:35:	symbol SQUASHFS_LZ4 depends on LZ4_DECOMPRESS
<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

cu,
   Daniel

Am 21.10.2016 um 08:51 schrieb Sascha Hauer:
> The default compression algorithm for squashfs is zlib, so only
> do a 'default y' there. For xz change to 'default y if the algorithm
> is enabled anyway' likke the other compression algorithms do.
>
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  fs/squashfs/Kconfig | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/fs/squashfs/Kconfig b/fs/squashfs/Kconfig
> index 2e28e90..b84ef75 100644
> --- a/fs/squashfs/Kconfig
> +++ b/fs/squashfs/Kconfig
> @@ -60,7 +60,7 @@ config SQUASHFS_LZO
>
>  config SQUASHFS_XZ
>  	bool "Include support for XZ compressed file systems"
> -	default y
> +	default y if XZ_DECOMPRESS
>  	depends on FS_SQUASHFS
>  	select XZ_DECOMPRESS
>  	help
>

-- 

SYS TEC electronic GmbH
Am Windrad 2
08468 Heinsdorfergrund

Telefon : +49 (0) 3765 38600-0
Fax     : +49 (0) 3765 38600-4100
Email   : daniel.krueger@systec-electronic.com
Website : http://www.systec-electronic.com

Managing Directors  :
   Dipl.-Phys. Siegmar Schmidt, Dipl. Ing. (FH) Armin von Collrepp
Commercial registry : Amtsgericht Chemnitz, HRB 28082
USt.-Id Nr.         : DE150534010


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
