Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1ct7RW-00022a-08
 for barebox@lists.infradead.org; Wed, 29 Mar 2017 06:50:56 +0000
Date: Wed, 29 Mar 2017 08:50:32 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170329065032.qzav23kufhpoyffr@pengutronix.de>
References: <1490537832-14971-1-git-send-email-akurz@blala.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1490537832-14971-1-git-send-email-akurz@blala.de>
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
Subject: Re: [PATCH] console: console_get_by_name: do not strcmp NULL
To: Alexander Kurz <akurz@blala.de>
Cc: barebox@lists.infradead.org

On Sun, Mar 26, 2017 at 04:17:12PM +0200, Alexander Kurz wrote:
> console_get_by_name iterates through the console_list using strcmp to mach
> a given console by name. console_list may contain entries with devname = NULL,
> inserted there e.g. by KEYBOARD_GPIO. In worst case loady -t usbserial
> will crash barebox when strcmp hits 0 NULL devname:
> > unable to handle NULL pointer dereference at address 0x00000000
> 
> Let console_get_by_name just ignore the anonymous consoles.
> 
> Signed-off-by: Alexander Kurz <akurz@blala.de>
> ---

Applied to master, thanks

Sascha

>  common/console_common.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/common/console_common.c b/common/console_common.c
> index 2e5869f..d051458 100644
> --- a/common/console_common.c
> +++ b/common/console_common.c
> @@ -246,7 +246,7 @@ struct console_device *console_get_by_name(const char *name)
>  	struct console_device *cdev;
>  
>  	for_each_console(cdev) {
> -		if (!strcmp(cdev->devname, name))
> +		if (cdev->devname && !strcmp(cdev->devname, name))
>  			return cdev;
>  	}
>  
> -- 
> 2.1.4
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
