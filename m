Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TBodq-0002ex-PQ
 for barebox@lists.infradead.org; Wed, 12 Sep 2012 15:14:15 +0000
Date: Wed, 12 Sep 2012 17:14:10 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120912151410.GU6180@pengutronix.de>
References: <20120912132443.GQ31207@game.jcrosoft.org>
 <1347457369-9215-1-git-send-email-plagnioj@jcrosoft.com>
 <1347457369-9215-9-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1347457369-9215-9-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 09/11] filetype: add PNG support
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Wed, Sep 12, 2012 at 03:42:47PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>  common/filetype.c  |    3 +++
>  include/filetype.h |    1 +
>  2 files changed, 4 insertions(+)
> 
> diff --git a/common/filetype.c b/common/filetype.c
> index 5710394..0eaf119 100644
> --- a/common/filetype.c
> +++ b/common/filetype.c
> @@ -71,6 +71,7 @@ static int is_fat(u8 *buf)
>  enum filetype file_detect_type(void *_buf)
>  {
>  	u32 *buf = _buf;
> +	u64 *buf64 = _buf;
>  	u8 *buf8 = _buf;
>  
>  	if (strncmp(buf8, "#!/bin/sh", 9) == 0)
> @@ -103,6 +104,8 @@ enum filetype file_detect_type(void *_buf)
>  		return filetype_fat;
>  	if (strncmp(buf8, "BM", 2) == 0)
>  		return filetype_bmp;
> +	if (buf64[0] == le64_to_cpu(0x0a1a0a0d474e5089ull))
> +		return filetype_png;

The corresponding string in filetype_str is missing


>  
>  	return filetype_unknown;
>  }
> diff --git a/include/filetype.h b/include/filetype.h
> index 6c97159..2924032 100644
> --- a/include/filetype.h
> +++ b/include/filetype.h
> @@ -20,6 +20,7 @@ enum filetype {
>  	filetype_mips_barebox,
>  	filetype_fat,
>  	filetype_bmp,
> +	filetype_png,
>  };
>  
>  const char *file_type_to_string(enum filetype f);
> -- 
> 1.7.10.4
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
