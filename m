Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SIGqK-0003ca-Mt
 for barebox@lists.infradead.org; Thu, 12 Apr 2012 10:01:33 +0000
Date: Thu, 12 Apr 2012 12:01:25 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120412100125.GW3852@pengutronix.de>
References: <1334122954-19623-1-git-send-email-plagnioj@jcrosoft.com>
 <1334129124-6903-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1334129124-6903-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 1/1] filetype: add Android boot image support
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Wed, Apr 11, 2012 at 09:25:24AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>

Applied this one, thanks

Sascha

> ---
>  common/filetype.c  |    3 +++
>  include/filetype.h |    1 +
>  2 files changed, 4 insertions(+), 0 deletions(-)
> 
> diff --git a/common/filetype.c b/common/filetype.c
> index 40faff3..b784bff 100644
> --- a/common/filetype.c
> +++ b/common/filetype.c
> @@ -37,6 +37,7 @@ static const char *filetype_str[] = {
>  	[filetype_gzip] = "gzip compressed",
>  	[filetype_bzip2] = "bzip2 compressed",
>  	[filetype_oftree] = "open firmware flat device tree",
> +	[filetype_aimage] = "Android boot image",
>  };
>  
>  const char *file_type_to_string(enum filetype f)
> @@ -72,6 +73,8 @@ enum filetype file_detect_type(void *_buf)
>                  return filetype_bzip2;
>  	if (buf[0] == be32_to_cpu(0xd00dfeed))
>  		return filetype_oftree;
> +	if (strncmp(buf8, "ANDROID!", 8) == 0)
> +		return filetype_aimage;
>  
>  	return filetype_unknown;
>  }
> diff --git a/include/filetype.h b/include/filetype.h
> index 88f31df..d0b6226 100644
> --- a/include/filetype.h
> +++ b/include/filetype.h
> @@ -15,6 +15,7 @@ enum filetype {
>  	filetype_gzip,
>  	filetype_bzip2,
>  	filetype_oftree,
> +	filetype_aimage,
>  };
>  
>  const char *file_type_to_string(enum filetype f);
> -- 
> 1.7.9.1
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
