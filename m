Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk4.altibox.net ([109.247.116.15])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gk0gp-0004Wq-Fp
 for barebox@lists.infradead.org; Thu, 17 Jan 2019 05:58:08 +0000
Date: Thu, 17 Jan 2019 06:55:58 +0100
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20190117055558.GA28203@ravnborg.org>
References: <20190117044506.20628-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190117044506.20628-1-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH 1/3] crypto: digest: Return -errno if open() fails
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Wed, Jan 16, 2019 at 08:45:04PM -0800, Andrey Smirnov wrote:
> Strictly speaking, open() doesn't return a detailed error code as its
> return value and it can and should be obtained via 'errno'.
> 
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---
>  crypto/digest.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/crypto/digest.c b/crypto/digest.c
> index 9b7b73019..493e56902 100644
> --- a/crypto/digest.c
> +++ b/crypto/digest.c
> @@ -289,7 +289,7 @@ int digest_file_window(struct digest *d, const char *filename,
>  	fd = open(filename, O_RDONLY);
>  	if (fd < 0) {
>  		perror(filename);
> -		return fd;
> +		return -errno;
>  	}
>  
>  	buf = memmap(fd, PROT_READ);

Looks fine,
Reviewed-by: Sam Ravnborg <sam@ravnborg.org>

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
