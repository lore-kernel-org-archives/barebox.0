Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ea0-x233.google.com ([2a00:1450:4013:c01::233])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WJIQO-0001uU-Ut
 for barebox@lists.infradead.org; Fri, 28 Feb 2014 08:04:05 +0000
Received: by mail-ea0-f179.google.com with SMTP id q10so2429127ead.38
 for <barebox@lists.infradead.org>; Fri, 28 Feb 2014 00:03:42 -0800 (PST)
Date: Fri, 28 Feb 2014 09:03:34 +0100
From: Alexander Aring <alex.aring@gmail.com>
Message-ID: <20140228080333.GA31407@omega>
References: <1393573468-31105-1-git-send-email-alex.aring@gmail.com>
 <1393573468-31105-4-git-send-email-alex.aring@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1393573468-31105-4-git-send-email-alex.aring@gmail.com>
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
Subject: Re: [RFC 3/3] libbb: read_full: use read return instead size
To: barebox@lists.infradead.org

On Fri, Feb 28, 2014 at 08:44:28AM +0100, Alexander Aring wrote:
> Signed-off-by: Alexander Aring <alex.aring@gmail.com>
> ---
>  lib/libbb.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/lib/libbb.c b/lib/libbb.c
> index 189a170..c8d0835 100644
> --- a/lib/libbb.c
> +++ b/lib/libbb.c
> @@ -162,7 +162,7 @@ int read_full(int fd, void *buf, size_t size)
>  	int now;
>  	int total = 0;
>  
> -	while (size) {
> +	while (now) {
>  		now = read(fd, buf, size);
>  		if (now == 0)
>  			return total;
and this should be a:

do {
...
} while (now);

sry, it's only to demonstrate the issue.

- Alex

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
