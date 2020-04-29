Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jThIH-0000IB-NM
 for barebox@lists.infradead.org; Wed, 29 Apr 2020 07:38:11 +0000
Date: Wed, 29 Apr 2020 09:38:07 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200429073807.GE5877@pengutronix.de>
References: <20200429064040.5845-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200429064040.5845-1-a.fatoum@pengutronix.de>
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
Subject: Re: [PATCH 1/2] scripts: imd: fix uninitialized variable read
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, Apr 29, 2020 at 08:40:39AM +0200, Ahmad Fatoum wrote:
> Errors are propagated in the loop and ret is never set. Remove it.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  scripts/bareboximd.c | 5 +----
>  1 file changed, 1 insertion(+), 4 deletions(-)
> 
> diff --git a/scripts/bareboximd.c b/scripts/bareboximd.c
> index b733cae61c87..d11b661fa391 100644
> --- a/scripts/bareboximd.c
> +++ b/scripts/bareboximd.c
> @@ -53,7 +53,7 @@ int imd_command_setenv(const char *variable_name, const char *value)
>  
>  static int write_file(const char *filename, const void *buf, size_t size)
>  {
> -	int fd, ret;
> +	int fd;
>  	int now;
>  
>  	fd = open(filename, O_WRONLY | O_TRUNC | O_CREAT, S_IRUSR | S_IWUSR | S_IRGRP | S_IROTH);
> @@ -74,9 +74,6 @@ static int write_file(const char *filename, const void *buf, size_t size)
>  
>  	close(fd);
>  
> -	if (ret < 0)
> -		return ret;
> -

There's more wrong in this function. In the error path the file is never
closed. It is not an error when write() returns 0. The return value of
write_file() is never checked by the caller. Steffen, care to fix some
of these?

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
