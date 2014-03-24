Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WRyrA-0005d6-7B
 for barebox@lists.infradead.org; Mon, 24 Mar 2014 06:59:37 +0000
Date: Mon, 24 Mar 2014 07:59:14 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140324065914.GK17250@pengutronix.de>
References: <1395509944-1512-1-git-send-email-vicencb@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1395509944-1512-1-git-send-email-vicencb@gmail.com>
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
Subject: Re: [PATCH] OMAP4_USBboot: Change output text formatting
To: Vicente Bergas <vicencb@gmail.com>
Cc: barebox@lists.infradead.org

On Sat, Mar 22, 2014 at 05:39:04PM +0000, Vicente Bergas wrote:
> The basic console used for USBboot has two different formattings,
> one for text coming from the host and another for text coming from
> the target.
> This change makes both formattings readable regardless of the
> console background color.
> 
> Signed-off-by: Vicente Bergas <vicencb@gmail.com>

Applied, thanks

Sascha

> ---
>  scripts/omap4_usbboot/omap4_usbboot.c | 17 +++++++++--------
>  1 file changed, 9 insertions(+), 8 deletions(-)
> 
> diff --git a/scripts/omap4_usbboot/omap4_usbboot.c b/scripts/omap4_usbboot/omap4_usbboot.c
> index e521086..0e5abcb 100644
> --- a/scripts/omap4_usbboot/omap4_usbboot.c
> +++ b/scripts/omap4_usbboot/omap4_usbboot.c
> @@ -35,16 +35,17 @@
>  #define WHITE   8
>  #define RED     1
>  #define BLACK   0
> -#define FORMAT        "%c[%d;%d;%dm"
> -#define TARGET_FORMAT 0x1B, BRIGHT, RED+30, BLACK+40
> -#define HOST_FORMAT   0x1B, RESET, WHITE+30, BLACK+40
> -#define host_print(fmt, arg...)	printf(FORMAT fmt FORMAT, \
> +#define TFORMAT       "%c[%d;%dm"
> +#define HFORMAT       "%c[%dm"
> +#define TARGET_FORMAT 0x1B, BRIGHT, RED+30
> +#define HOST_FORMAT   0x1B, RESET
> +#define host_print(fmt, arg...)	printf(HFORMAT fmt TFORMAT, \
>  					HOST_FORMAT, ##arg, TARGET_FORMAT)
>  
>  void panic(struct termios *t_restore)
>  {
>  	tcsetattr(STDIN_FILENO, TCSANOW, t_restore);
> -	printf(FORMAT, HOST_FORMAT);
> +	printf(HFORMAT, HOST_FORMAT);
>  	exit(1);
>  }
>  
> @@ -354,7 +355,7 @@ int usb_boot(
>  	tcgetattr(STDIN_FILENO, &vars.t_restore);
>  	tn = vars.t_restore;
>  	tn.c_lflag &= ~(ICANON | ECHO);
> -	printf(FORMAT, TARGET_FORMAT);
> +	printf(TFORMAT, TARGET_FORMAT);
>  	tcsetattr(STDIN_FILENO, TCSANOW, &tn);
>  	if (pthread_create(&thread, NULL, listenerTask, &vars))
>  		host_print("listenerTask failed\n");
> @@ -375,7 +376,7 @@ int usb_boot(
>  	usb_close(usb);
>  	pthread_mutex_destroy(&vars.usb_mutex);
>  	tcsetattr(STDIN_FILENO, TCSANOW, &vars.t_restore);
> -	printf(FORMAT, HOST_FORMAT);
> +	printf(HFORMAT, HOST_FORMAT);
>  	return 0;
>  }
>  
> @@ -415,7 +416,7 @@ int main(int argc, char **argv)
>  	sz = s.st_size;
>  	close(fd);
>  	argv++;
> -	printf(FORMAT, HOST_FORMAT);
> +	printf(HFORMAT, HOST_FORMAT);
>  	for (once = 1;;) {
>  		usb = usb_open(match_omap4_bootloader);
>  		if (usb)
> -- 
> 1.9.1
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
