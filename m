Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f8Kzd-0003jB-Ql
 for barebox@lists.infradead.org; Tue, 17 Apr 2018 07:25:36 +0000
Date: Tue, 17 Apr 2018 09:25:22 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180417072522.u3tvxjph5vehw4bt@pengutronix.de>
References: <20180417035829.11841-1-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180417035829.11841-1-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH] commands: i2c_write: enable reg == 0 too
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Tue, Apr 17, 2018 at 06:58:29AM +0300, Antony Pavlov wrote:
> This commit fixes the mistake introduced in the commit 34fadb685905
> ('commands: i2c_write: enable raw write to address').
> The intended behaviour for i2c_write command is
> "use raw i2c write only if reg address is not defined".
> Before the commit 34fadb685905 reg address == 0
> was acceptable. After the commit 34fadb685905 reg address == 0
> became unacceptable ("undefined") and will lead to raw i2c write.
> 
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> ---
>  commands/i2c.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/commands/i2c.c b/commands/i2c.c
> index 21c39fe5af..f0d16af0cb 100644
> --- a/commands/i2c.c
> +++ b/commands/i2c.c
> @@ -131,7 +131,7 @@ static int do_i2c_write(int argc, char *argv[])
>  	for (i = 0; i < count; i++)
>  		*(buf + i) = (char) simple_strtol(argv[optind+i], NULL, 0);
>  
> -	if (reg > 0) {
> +	if (reg >= 0) {
>  		ret = i2c_write_reg(&client, reg | wide, buf, count);
>  	} else {
>  		ret = i2c_master_send(&client, buf, count);
> -- 
> 2.17.0
> 
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
