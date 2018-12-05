Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gURz5-0004Co-6P
 for barebox@lists.infradead.org; Wed, 05 Dec 2018 07:52:40 +0000
Date: Wed, 5 Dec 2018 08:52:27 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20181205075227.clmrz7gaqcgp7xc6@pengutronix.de>
References: <20181204091317.17106-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20181204091317.17106-1-a.fatoum@pengutronix.de>
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
Subject: Re: [PATCH] lib: bootstrap: fix instance of possibly mismatched
 pointer sizes
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, Dec 04, 2018 at 10:13:18AM +0100, Ahmad Fatoum wrote:
> len was int but &len is passed to read_file(..., size_t *size),
> Fix this.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  lib/bootstrap/disk.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/lib/bootstrap/disk.c b/lib/bootstrap/disk.c
> index a55d5d77f4cf..fd016166e6e4 100644
> --- a/lib/bootstrap/disk.c
> +++ b/lib/bootstrap/disk.c
> @@ -18,7 +18,7 @@ void* bootstrap_read_disk(const char *dev, const char *fstype)
>  {
>  	int ret;
>  	void *buf;
> -	int len;
> +	size_t len;
>  	const char *path = "/";
>  
>  	ret = mount(dev, fstype, path, NULL);
> -- 
> 2.19.1
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
