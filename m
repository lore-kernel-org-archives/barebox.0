Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Wcttg-0002xy-JE
 for barebox@lists.infradead.org; Wed, 23 Apr 2014 09:55:21 +0000
Date: Wed, 23 Apr 2014 11:54:58 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140423095458.GL5858@pengutronix.de>
References: <1397290265-21273-1-git-send-email-shc_work@mail.ru>
 <1397290265-21273-7-git-send-email-shc_work@mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1397290265-21273-7-git-send-email-shc_work@mail.ru>
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
Subject: Re: [PATCH 07/12] commands/umount: Return real error code if
 "umount" fail
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On Sat, Apr 12, 2014 at 12:11:00PM +0400, Alexander Shiyan wrote:
> Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
> ---
>  commands/umount.c | 7 +++----
>  1 file changed, 3 insertions(+), 4 deletions(-)
> 
> diff --git a/commands/umount.c b/commands/umount.c
> index e6de1bc..8dcf7f0 100644
> --- a/commands/umount.c
> +++ b/commands/umount.c
> @@ -28,11 +28,10 @@ static int do_umount(int argc, char *argv[])
>  	if (argc != 2)
>  		return COMMAND_ERROR_USAGE;
>  
> -	if ((ret = umount(argv[1]))) {
> +	if ((ret = umount(argv[1])))
>  		perror("umount");
> -		return 1;
> -	}

Here perror() also should be removed.

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
