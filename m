Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gAWNR-0002xT-5j
 for barebox@lists.infradead.org; Thu, 11 Oct 2018 08:31:26 +0000
Date: Thu, 11 Oct 2018 10:31:13 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20181011083113.kxcgiljgdkr7mhvb@pengutronix.de>
References: <20181009173805.26181-1-andrew.smirnov@gmail.com>
 <20181009173805.26181-9-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20181009173805.26181-9-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH v2 08/17] linux: string: Port kbasename()
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Tue, Oct 09, 2018 at 10:37:56AM -0700, Andrey Smirnov wrote:
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---
>  include/linux/string.h | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
> 
> diff --git a/include/linux/string.h b/include/linux/string.h
> index 3418b4fbe..c9823dab8 100644
> --- a/include/linux/string.h
> +++ b/include/linux/string.h
> @@ -111,6 +111,18 @@ extern char *strim(char *);
>  
>  void *memchr_inv(const void *start, int c, size_t bytes);
>  
> +/**
> + * kbasename - return the last part of a pathname.
> + *
> + * @path: path to extract the filename from.
> + */
> +static inline const char *kbasename(const char *path)
> +{
> +	const char *tail = strrchr(path, '/');
> +	return tail ? tail + 1 : path;
> +}

We already have basename() and posix_basename(). How does this one
differ or could this be an alias for one of them?

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
