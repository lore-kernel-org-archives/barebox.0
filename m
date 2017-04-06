Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cw1QH-00026p-0r
 for barebox@lists.infradead.org; Thu, 06 Apr 2017 07:01:43 +0000
Date: Thu, 6 Apr 2017 09:01:15 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170406070115.o2ne4qb6dsqccrk6@pengutronix.de>
References: <20170405100336.15275-1-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170405100336.15275-1-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH] sandbox_defconfig: enable squashfs support
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Wed, Apr 05, 2017 at 01:03:36PM +0300, Antony Pavlov wrote:
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> ---
>  arch/sandbox/configs/sandbox_defconfig | 1 +
>  1 file changed, 1 insertion(+)

Applied, thanks

Sascha

> 
> diff --git a/arch/sandbox/configs/sandbox_defconfig b/arch/sandbox/configs/sandbox_defconfig
> index c20dd15a0..dbaff12bf 100644
> --- a/arch/sandbox/configs/sandbox_defconfig
> +++ b/arch/sandbox/configs/sandbox_defconfig
> @@ -79,6 +79,7 @@ CONFIG_FS_FAT_WRITE=y
>  CONFIG_FS_FAT_LFN=y
>  CONFIG_FS_BPKFS=y
>  CONFIG_FS_UIMAGEFS=y
> +CONFIG_FS_SQUASHFS=y
>  CONFIG_BZLIB=y
>  CONFIG_LZ4_DECOMPRESS=y
>  CONFIG_XZ_DECOMPRESS=y
> -- 
> 2.11.0
> 
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
