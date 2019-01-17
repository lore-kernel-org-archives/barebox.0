Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk4.altibox.net ([109.247.116.15])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gk0f7-0004XO-A9
 for barebox@lists.infradead.org; Thu, 17 Jan 2019 05:56:22 +0000
Date: Thu, 17 Jan 2019 06:56:16 +0100
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20190117055616.GB28203@ravnborg.org>
References: <20190117044506.20628-1-andrew.smirnov@gmail.com>
 <20190117044506.20628-2-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190117044506.20628-2-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH 2/3] crypto: digest: Return -errno if lseek() fails
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Wed, Jan 16, 2019 at 08:45:05PM -0800, Andrey Smirnov wrote:
> Strictly speaking, lseek() doesn't return a detailed error code as its
> return value and it can and should be obtained via 'errno'. In this
> case this change also allows us to avoid potential problems from
> downconverting 'loff_t' to 'int'.
> 
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---
>  crypto/digest.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/crypto/digest.c b/crypto/digest.c
> index 493e56902..230db26e8 100644
> --- a/crypto/digest.c
> +++ b/crypto/digest.c
> @@ -226,9 +226,9 @@ static int digest_update_from_fd(struct digest *d, int fd,
>  	unsigned char *buf = xmalloc(PAGE_SIZE);
>  	int ret = 0;
>  
> -	ret = lseek(fd, start, SEEK_SET);
> -	if (ret == -1) {
> +	if (lseek(fd, start, SEEK_SET) != start) {
>  		perror("lseek");
> +		ret = -errno;
>  		goto out_free;
>  	}
Looks fine,
Reviewed-by: Sam Ravnborg <sam@ravnborg.org>


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
