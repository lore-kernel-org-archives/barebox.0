Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UNHrR-0000mp-Oy
 for barebox@lists.infradead.org; Wed, 03 Apr 2013 07:11:58 +0000
Date: Wed, 3 Apr 2013 09:11:55 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130403071155.GQ1906@pengutronix.de>
References: <20130329163237.GP1568@game.jcrosoft.org>
 <1364890027-7807-1-git-send-email-h.feurstein@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1364890027-7807-1-git-send-email-h.feurstein@gmail.com>
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
Subject: Re: [PATCH v2] commands/tftp: use debug() for debug output
To: Hubert Feurstein <h.feurstein@gmail.com>
Cc: barebox@lists.infradead.org

On Tue, Apr 02, 2013 at 10:07:07AM +0200, Hubert Feurstein wrote:
> Signed-off-by: Hubert Feurstein <h.feurstein@gmail.com>

Applied, thanks

Sascha

> ---
>  commands/tftp.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/commands/tftp.c b/commands/tftp.c
> index 558b0ac..c83d174 100644
> --- a/commands/tftp.c
> +++ b/commands/tftp.c
> @@ -76,7 +76,7 @@ static int do_tftpb(int argc, char *argv[])
>  	if (ret)
>  		goto err_rmdir;
>  
> -	printk("%s: %s -> %s\n", __func__, source, dest);
> +	debug("%s: %s -> %s\n", __func__, source, dest);
>  
>  	ret = copy_file(source, dest, 1);
>  
> -- 
> 1.8.1.3
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
