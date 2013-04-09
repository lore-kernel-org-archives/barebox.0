Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UPSYr-0001SJ-NQ
 for barebox@lists.infradead.org; Tue, 09 Apr 2013 07:01:46 +0000
Date: Tue, 9 Apr 2013 09:01:43 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130409070143.GZ1906@pengutronix.de>
References: <1365435808-32517-1-git-send-email-jlu@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1365435808-32517-1-git-send-email-jlu@pengutronix.de>
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
Subject: Re: [PATCH] commands: i2c: change 0X to 0x
To: Jan Luebbe <jlu@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Apr 08, 2013 at 05:43:28PM +0200, Jan Luebbe wrote:
> Signed-off-by: Jan Luebbe <jlu@pengutronix.de>
> ---
>  commands/i2c.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/commands/i2c.c b/commands/i2c.c
> index 8370b43..626255d 100644
> --- a/commands/i2c.c
> +++ b/commands/i2c.c
> @@ -45,7 +45,7 @@ static int do_i2c_probe(int argc, char *argv[])
>  	if (stopaddr > 0x7F)
>  		stopaddr = 0x7F;
>  
> -	printf("probing i2c range 0X%02x - 0x%02x :\n", startaddr, stopaddr);
> +	printf("probing i2c range 0x%02x - 0x%02x :\n", startaddr, stopaddr);
>  	for (addr = startaddr; addr <= stopaddr; addr++) {
>  		client.addr = addr;
>  		ret = i2c_write_reg(&client, 0x00, &reg, 0);
> -- 
> 1.8.2.rc2
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
