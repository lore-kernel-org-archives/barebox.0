Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYNWN-0000ZC-BX
 for barebox@lists.infradead.org; Tue, 12 May 2020 05:32:04 +0000
References: <20200511153352.7121-1-christian.mauderer@embedded-brains.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <44092c04-2060-1b08-4687-441288d826a0@pengutronix.de>
Date: Tue, 12 May 2020 07:31:58 +0200
MIME-Version: 1.0
In-Reply-To: <20200511153352.7121-1-christian.mauderer@embedded-brains.de>
Content-Language: en-US
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
Subject: Re: [PATCH] scripts: imd: Fix missing argument for open
To: Christian Mauderer <christian.mauderer@embedded-brains.de>, barebox@lists.infradead.org

Hello Christian,

On 5/11/20 5:33 PM, Christian Mauderer wrote:
> According to POSIX open needs a third argument if O_CREAT is specified:
> 
>>  O_CREAT  If  the  file exists, this flag has no effect.
>>           Otherwise, the file shall be created; [...] and the access
>>           permission bits (see <sys/stat.h>) of the file  mode shall
>>           be set to the value of the argument following the oflag
>>           argument taken as type mode_t modified as follows [...]

Thanks for the patch. The issue has been already addressed though
by 6f0e2f65b3 ("scripts/bareboximd: add mode argument to open call"),
which is part of v2020.04.0.

Cheers
Ahmad

> 
> Signed-off-by: Christian Mauderer <christian.mauderer@embedded-brains.de>
> ---
>  scripts/bareboximd.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/scripts/bareboximd.c b/scripts/bareboximd.c
> index e5000e0ae..b332d435a 100644
> --- a/scripts/bareboximd.c
> +++ b/scripts/bareboximd.c
> @@ -59,7 +59,7 @@ static int write_file(const char *filename, const void *buf, size_t size)
>  	int fd, ret;
>  	int now;
>  
> -	fd = open(filename, O_WRONLY | O_TRUNC | O_CREAT);
> +	fd = open(filename, O_WRONLY | O_TRUNC | O_CREAT, S_IRUSR | S_IWUSR | S_IRGRP | S_IROTH);
>  	if (fd < 0)
>  		return fd;
>  
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
