Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1baGjk-0006YK-35
 for barebox@lists.infradead.org; Thu, 18 Aug 2016 06:23:32 +0000
Date: Thu, 18 Aug 2016 08:23:10 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160818062310.GB20657@pengutronix.de>
References: <1470746252-3146-1-git-send-email-s.trumtrar@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1470746252-3146-1-git-send-email-s.trumtrar@pengutronix.de>
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
Subject: Re: [PATCH 1/7] filetype: add new filetype for SoCFPGA xload image
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, Aug 09, 2016 at 02:37:26PM +0200, Steffen Trumtrar wrote:
> Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
> ---
>  common/filetype.c  | 4 ++++
>  include/filetype.h | 1 +
>  2 files changed, 5 insertions(+)

Applied 1 and 3-7.

Sascha

> 
> diff --git a/common/filetype.c b/common/filetype.c
> index a8666a1439df..4728f877c975 100644
> --- a/common/filetype.c
> +++ b/common/filetype.c
> @@ -61,6 +61,7 @@ static const struct filetype_str filetype_str[] = {
>  	[filetype_xz_compressed] = { "XZ compressed", "xz" },
>  	[filetype_exe] = { "MS-DOS executable", "exe" },
>  	[filetype_mxs_bootstream] = { "Freescale MXS bootstream", "mxsbs" },
> +	[filetype_socfpga_xload] = { "SoCFPGA prebootloader image", "socfpga-xload" },
>  };
>  
>  const char *file_type_to_string(enum filetype f)
> @@ -294,6 +295,9 @@ enum filetype file_detect_type(const void *_buf, size_t bufsize)
>  	if (le32_to_cpu(buf[5]) == 0x504d5453)
>  		return filetype_mxs_bootstream;
>  
> +	if (buf[16] == 0x31305341)
> +		return filetype_socfpga_xload;
> +
>  	if (is_barebox_arm_head(_buf))
>  		return filetype_arm_barebox;
>  	if (buf[9] == 0x016f2818 || buf[9] == 0x18286f01)
> diff --git a/include/filetype.h b/include/filetype.h
> index e87ca174a89d..cde73c1170c6 100644
> --- a/include/filetype.h
> +++ b/include/filetype.h
> @@ -36,6 +36,7 @@ enum filetype {
>  	filetype_exe,
>  	filetype_xz_compressed,
>  	filetype_mxs_bootstream,
> +	filetype_socfpga_xload,
>  	filetype_max,
>  };
>  
> -- 
> 2.8.1
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
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
