Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZhuaL-0006Fh-M8
 for barebox@lists.infradead.org; Fri, 02 Oct 2015 07:16:54 +0000
Date: Fri, 2 Oct 2015 09:16:30 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20151002071630.GP7858@pengutronix.de>
References: <1443761811-15621-1-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1443761811-15621-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH] commands: ls: use 14 digits for filesize
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Fri, Oct 02, 2015 at 07:56:51AM +0300, Antony Pavlov wrote:
> 10 digits are not enough for modern SATA/USB storages. E.g.:
> 
>     barebox> ls -l /dev/
>     cr-------- 500107862016 ata0
>     cr--------   33554432 ata0.0
>     cr-------- 500073258496 ata0.1
>     cr-------- 32224837632 disk0
>     cr--------   67108864 disk0.0
>     cr-------- 32156680192 disk0.1
> 
> 14 digits look much better. E.g.:
> 
>     barebox> ls -l /dev/
>     cr--------   500107862016 ata0
>     cr--------       33554432 ata0.0
>     cr--------   500073258496 ata0.1
>     cr--------    32224837632 disk0
>     cr--------       67108864 disk0.0
>     cr--------    32156680192 disk0.1
> 
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> ---
>  commands/ls.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/commands/ls.c b/commands/ls.c
> index 1a5925d..09437af 100644
> --- a/commands/ls.c
> +++ b/commands/ls.c
> @@ -32,7 +32,7 @@ static void ls_one(const char *path, const char* fullname, struct stat *s)
>  	unsigned int namelen = strlen(path);
>  
>  	mkmodestr(s->st_mode, modestr);
> -	printf("%s %10llu %*.*s", modestr, s->st_size, namelen, namelen, path);
> +	printf("%s %14llu %*.*s", modestr, s->st_size, namelen, namelen, path);

Maybe we should autogenerate that number from the current compile year
taking Moores law into account ;)

Until that is done: Applied this one

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
