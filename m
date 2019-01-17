Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk3.altibox.net ([109.247.116.14])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gk0fQ-0004bx-7k
 for barebox@lists.infradead.org; Thu, 17 Jan 2019 05:56:41 +0000
Date: Thu, 17 Jan 2019 06:56:35 +0100
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20190117055635.GC28203@ravnborg.org>
References: <20190117044506.20628-1-andrew.smirnov@gmail.com>
 <20190117044506.20628-3-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190117044506.20628-3-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH 3/3] crypto: digest: Return -errno if stat() fails
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Wed, Jan 16, 2019 at 08:45:06PM -0800, Andrey Smirnov wrote:
> Strictly speaking, stat() doesn't return a detailed error code as its
> return value and it can and should be obtained via 'errno'.
> 
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---
>  crypto/digest.c | 7 ++-----
>  1 file changed, 2 insertions(+), 5 deletions(-)
> 
> diff --git a/crypto/digest.c b/crypto/digest.c
> index 230db26e8..2c4de2e4f 100644
> --- a/crypto/digest.c
> +++ b/crypto/digest.c
> @@ -317,12 +317,9 @@ int digest_file(struct digest *d, const char *filename,
>  		const unsigned char *sig)
>  {
>  	struct stat st;
> -	int ret;
> -
> -	ret = stat(filename, &st);
>  
> -	if (ret < 0)
> -		return ret;
> +	if (stat(filename, &st))
> +		return -errno;
>  
>  	return digest_file_window(d, filename, hash, sig, 0, st.st_size);
>  }
Likewise fine,
Reviewed-by: Sam Ravnborg <sam@ravnborg.org>

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
