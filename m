Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SSuKa-0001PE-V7
 for barebox@lists.infradead.org; Fri, 11 May 2012 18:12:46 +0000
Date: Fri, 11 May 2012 20:12:42 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120511181242.GJ27341@pengutronix.de>
References: <1336750939-18572-1-git-send-email-shc_work@mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1336750939-18572-1-git-send-email-shc_work@mail.ru>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 1/2] i2c: Fix barebox crash when 'count' is not set for
 i2c_read command
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On Fri, May 11, 2012 at 07:42:18PM +0400, Alexander Shiyan wrote:
> Running i2c_read without the 'count' setting causes an error and reboots.
> 

Applied to master.

Thanks
 Sascha

> barebox@Phytec phyCORE-i.MX27:/ i2c_read -b 1 -a 0x4a -r 0x00
> ERROR: out of memory
> no stack data available
> ---
>  commands/i2c.c |    2 +-
>  1 files changed, 1 insertions(+), 1 deletions(-)
> 
> diff --git a/commands/i2c.c b/commands/i2c.c
> index b3d09dc..39bae35 100644
> --- a/commands/i2c.c
> +++ b/commands/i2c.c
> @@ -170,7 +170,7 @@ static int do_i2c_read(int argc, char *argv[])
>  		}
>  	}
>  
> -	if ((addr < 0) || (reg < 0) || (count == 0) || (addr > 0x7F))
> +	if ((addr < 0) || (reg < 0) || (count < 1) || (addr > 0x7F))
>  		return COMMAND_ERROR_USAGE;
>  
>  	adapter = i2c_get_adapter(bus);
> -- 
> 1.7.3.4
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
