Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOKLk-000628-5b
 for barebox@lists.infradead.org; Wed, 08 May 2019 11:03:01 +0000
Date: Wed, 8 May 2019 13:02:54 +0200
From: Roland Hieber <rhi@pengutronix.de>
Message-ID: <20190508110254.rpupxhasd6lvn7g7@pengutronix.de>
References: <20190508090307.17729-1-s.hauer@pengutronix.de>
 <20190508090307.17729-9-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190508090307.17729-9-s.hauer@pengutronix.de>
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
Subject: Re: [PATCH 08/10] filetype: Detect Layerscape PBL images
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

Hi Sascha,

On Wed, May 08, 2019 at 11:03:05AM +0200, Sascha Hauer wrote:
> The Layerscape SoCs have their own boot image format. Add filetype
> detection for it.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  common/filetype.c  | 4 ++++
>  include/filetype.h | 1 +
>  2 files changed, 5 insertions(+)
> 
> diff --git a/common/filetype.c b/common/filetype.c
> index fb029a7739..f8ae214446 100644
> --- a/common/filetype.c
> +++ b/common/filetype.c
> @@ -75,6 +75,7 @@ static const struct filetype_str filetype_str[] = {
>  	[filetype_elf] = { "ELF", "elf" },
>  	[filetype_imx_image_v1] = { "i.MX image (v1)", "imx-image-v1" },
>  	[filetype_imx_image_v2] = { "i.MX image (v2)", "imx-image-v2" },
> +	[filetype_layerscape_image] = { "Layerscape image", "layerscape PBL" },

The comment above that array says for the "shortname" member:

  const char *shortname;  /* short string without spaces for shell scripts */

So I would recommend to "layerscape-pbl" instead.

 - Roland

>  };
>  
>  const char *file_type_to_string(enum filetype f)
> @@ -329,6 +330,9 @@ enum filetype file_detect_type(const void *_buf, size_t bufsize)
>  	if (is_sparse_image(_buf))
>  		return filetype_android_sparse;
>  
> +	if (buf[0] == 0x55aa55aa && buf[1] == 0x0001ee01)
> +		return filetype_layerscape_image;
> +
>  	if (bufsize < 64)
>  		return filetype_unknown;
>  
> diff --git a/include/filetype.h b/include/filetype.h
> index 395053dd59..cdb39fad38 100644
> --- a/include/filetype.h
> +++ b/include/filetype.h
> @@ -45,6 +45,7 @@ enum filetype {
>  	filetype_elf,
>  	filetype_imx_image_v1,
>  	filetype_imx_image_v2,
> +	filetype_layerscape_image,
>  	filetype_max,
>  };
>  
> -- 
> 2.20.1
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Roland Hieber                     | r.hieber@pengutronix.de     |
Pengutronix e.K.                  | https://www.pengutronix.de/ |
Peiner Str. 6-8, 31137 Hildesheim | Phone: +49-5121-206917-5086 |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
