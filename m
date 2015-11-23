Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1a0lVp-000507-E3
 for barebox@lists.infradead.org; Mon, 23 Nov 2015 07:26:09 +0000
Date: Mon, 23 Nov 2015 08:25:47 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20151123072547.GS11966@pengutronix.de>
References: <1448195492-29194-1-git-send-email-u74147@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1448195492-29194-1-git-send-email-u74147@gmail.com>
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
Subject: Re: [PATCH] fix warning: remove unused variable
To: Du Huanpeng <u74147@gmail.com>
Cc: barebox@lists.infradead.org

On Sun, Nov 22, 2015 at 08:31:32PM +0800, Du Huanpeng wrote:
> Signed-off-by: Du Huanpeng <u74147@gmail.com>
> ---
>  common/filetype.c | 1 -
>  1 file changed, 1 deletion(-)

squashed into "common: filetype: do not redetect MBR-type devices as a
FAT-type"

Sascha

> 
> diff --git a/common/filetype.c b/common/filetype.c
> index 5229869..8cfae88 100644
> --- a/common/filetype.c
> +++ b/common/filetype.c
> @@ -326,7 +326,6 @@ enum filetype file_name_detect_type(const char *filename)
>  	int fd, ret;
>  	void *buf;
>  	enum filetype type = filetype_unknown;
> -	unsigned long bootsec;
>  
>  	fd = open(filename, O_RDONLY);
>  	if (fd < 0)
> -- 
> 1.9.1
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
