Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Xb17f-00030i-BD
 for barebox@lists.infradead.org; Mon, 06 Oct 2014 05:46:16 +0000
Date: Mon, 6 Oct 2014 07:45:48 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20141006054548.GL4992@pengutronix.de>
References: <1412268044-1360-1-git-send-email-r.schwebel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1412268044-1360-1-git-send-email-r.schwebel@pengutronix.de>
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
Subject: Re: [PATCH] commands: select FILE_LIST for usbgadget
To: Robert Schwebel <r.schwebel@pengutronix.de>
Cc: barebox@lists.infradead.org

On Thu, Oct 02, 2014 at 06:40:44PM +0200, Robert Schwebel wrote:
> Otherwhise we get this error message:
> 
> commands/built-in.o: In function `do_usbgadget':
> barebox-2014.10.0/commands/usbgadget.c:77: undefined reference to `file_list_parse'
> 
> Signed-off-by: Robert Schwebel <r.schwebel@pengutronix.de>

Applied, thanks

Sascha

> ---
>  commands/Kconfig | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/commands/Kconfig b/commands/Kconfig
> index 3a49baf..aafa80f 100644
> --- a/commands/Kconfig
> +++ b/commands/Kconfig
> @@ -1851,6 +1851,7 @@ config CMD_USB
>  config CMD_USBGADGET
>  	bool
>  	depends on USB_GADGET
> +	select FILE_LIST
>  	prompt "usbgadget"
>  
>  config CMD_WD
> -- 
> 2.1.0
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
