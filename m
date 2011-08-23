Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QvkZL-0002pU-Fr
	for barebox@lists.infradead.org; Tue, 23 Aug 2011 06:34:40 +0000
Date: Tue, 23 Aug 2011 08:34:36 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20110823063436.GF31404@pengutronix.de>
References: <1314038738-32189-1-git-send-email-antonynpavlov@gmail.com>
	<1314038738-32189-2-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1314038738-32189-2-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH 1/5] remove LOADS_BAUD_CHANGE from broken commands/loads.c
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

Hi Antony,

I applied this series to next. Definately a step in the right direction.

Sascha

On Mon, Aug 22, 2011 at 10:45:34PM +0400, Antony Pavlov wrote:
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> ---
>  commands/loads.c |  109 +-----------------------------------------------------
>  1 files changed, 1 insertions(+), 108 deletions(-)
> 
> diff --git a/commands/loads.c b/commands/loads.c
> index c6617a4..2672c39 100644
> --- a/commands/loads.c
> +++ b/commands/loads.c
> @@ -47,11 +47,6 @@ int do_load_serial(struct command *cmdtp, int argc, char *argv[])
>  	int i;
>  	char *env_echo;
>  	int rcode = 0;
> -#ifdef	CFG_LOADS_BAUD_CHANGE
> -	int load_baudrate, current_baudrate;
> -
> -	load_baudrate = current_baudrate = gd->baudrate;
> -#endif
>  
>  	if (((env_echo = getenv("loads_echo")) != NULL) && (*env_echo == '1')) {
>  		do_echo = 1;
> @@ -59,34 +54,9 @@ int do_load_serial(struct command *cmdtp, int argc, char *argv[])
>  		do_echo = 0;
>  	}
>  
> -#ifdef	CFG_LOADS_BAUD_CHANGE
> -	if (argc >= 2) {
> -		offset = simple_strtoul(argv[1], NULL, 16);
> -	}
> -	if (argc == 3) {
> -		load_baudrate = (int)simple_strtoul(argv[2], NULL, 10);
> -
> -		/* default to current baudrate */
> -		if (load_baudrate == 0)
> -			load_baudrate = current_baudrate;
> -	}
> -	if (load_baudrate != current_baudrate) {
> -		printf ("## Switch baudrate to %d bps and press ENTER ...\n",
> -			load_baudrate);
> -		udelay(50000);
> -		gd->baudrate = load_baudrate;
> -		serial_setbrg ();
> -		udelay(50000);
> -		for (;;) {
> -			if (getc() == '\r')
> -				break;
> -		}
> -	}
> -#else	/* ! CFG_LOADS_BAUD_CHANGE */
>  	if (argc == 2) {
>  		offset = simple_strtoul(argv[1], NULL, 16);
>  	}
> -#endif	/* CFG_LOADS_BAUD_CHANGE */
>  
>  	printf ("## Ready for S-Record download ...\n");
>  
> @@ -112,20 +82,6 @@ int do_load_serial(struct command *cmdtp, int argc, char *argv[])
>  		load_addr = addr;
>  	}
>  
> -#ifdef	CFG_LOADS_BAUD_CHANGE
> -	if (load_baudrate != current_baudrate) {
> -		printf ("## Switch baudrate to %d bps and press ESC ...\n",
> -			current_baudrate);
> -		udelay (50000);
> -		gd->baudrate = current_baudrate;
> -		serial_setbrg ();
> -		udelay (50000);
> -		for (;;) {
> -			if (getc() == 0x1B) /* ESC */
> -				break;
> -		}
> -	}
> -#endif
>  	return rcode;
>  }
>  
> @@ -234,43 +190,14 @@ int do_save_serial(struct command *cmdtp, int flag, int argc, char *argv[])
>  {
>  	ulong offset = 0;
>  	ulong size   = 0;
> -#ifdef	CFG_LOADS_BAUD_CHANGE
> -	int save_baudrate, current_baudrate;
> -
> -	save_baudrate = current_baudrate = gd->baudrate;
> -#endif
>  
>  	if (argc >= 2) {
>  		offset = simple_strtoul(argv[1], NULL, 16);
>  	}
> -#ifdef	CFG_LOADS_BAUD_CHANGE
> -	if (argc >= 3) {
> -		size = simple_strtoul(argv[2], NULL, 16);
> -	}
> -	if (argc == 4) {
> -		save_baudrate = (int)simple_strtoul(argv[3], NULL, 10);
>  
> -		/* default to current baudrate */
> -		if (save_baudrate == 0)
> -			save_baudrate = current_baudrate;
> -	}
> -	if (save_baudrate != current_baudrate) {
> -		printf ("## Switch baudrate to %d bps and press ENTER ...\n",
> -			save_baudrate);
> -		udelay(50000);
> -		gd->baudrate = save_baudrate;
> -		serial_setbrg ();
> -		udelay(50000);
> -		for (;;) {
> -			if (getc() == '\r')
> -				break;
> -		}
> -	}
> -#else	/* ! CFG_LOADS_BAUD_CHANGE */
>  	if (argc == 3) {
>  		size = simple_strtoul(argv[2], NULL, 16);
>  	}
> -#endif	/* CFG_LOADS_BAUD_CHANGE */
>  
>  	printf ("## Ready for S-Record upload, press ENTER to proceed ...\n");
>  	for (;;) {
> @@ -282,20 +209,7 @@ int do_save_serial(struct command *cmdtp, int flag, int argc, char *argv[])
>  	} else {
>  		printf ("## S-Record upload complete\n");
>  	}
> -#ifdef	CFG_LOADS_BAUD_CHANGE
> -	if (save_baudrate != current_baudrate) {
> -		printf ("## Switch baudrate to %d bps and press ESC ...\n",
> -			(int)current_baudrate);
> -		udelay (50000);
> -		gd->baudrate = current_baudrate;
> -		serial_setbrg ();
> -		udelay (50000);
> -		for (;;) {
> -			if (getc() == 0x1B) /* ESC */
> -				break;
> -		}
> -	}
> -#endif
> +
>  	return 0;
>  }
>  
> @@ -376,23 +290,12 @@ write_record (char *buf)
>  }
>  # endif /* CFG_CMD_SAVES */
>  
> -#ifdef	CFG_LOADS_BAUD_CHANGE
> -BAREBOX_CMD(
> -	loads, 3, 0,	do_load_serial,
> -	"loads   - load S-Record file over serial line\n",
> -	"[ off ] [ baud ]\n"
> -	"    - load S-Record file over serial line"
> -	" with offset 'off' and baudrate 'baud'\n"
> -);
> -
> -#else	/* ! CFG_LOADS_BAUD_CHANGE */
>  BAREBOX_CMD(
>  	loads, 2, 0,	do_load_serial,
>  	"loads   - load S-Record file over serial line\n",
>  	"[ off ]\n"
>  	"    - load S-Record file over serial line with offset 'off'\n"
>  );
> -#endif	/* CFG_LOADS_BAUD_CHANGE */
>  
>  /*
>   * SAVES always requires LOADS support, but not vice versa
> @@ -400,21 +303,11 @@ BAREBOX_CMD(
>  
>  
>  #if (CONFIG_COMMANDS & CFG_CMD_SAVES)
> -#ifdef	CFG_LOADS_BAUD_CHANGE
> -BAREBOX_CMD(
> -	saves, 4, 0,	do_save_serial,
> -	"saves   - save S-Record file over serial line\n",
> -	"[ off ] [size] [ baud ]\n"
> -	"    - save S-Record file over serial line"
> -	" with offset 'off', size 'size' and baudrate 'baud'\n"
> -);
> -#else	/* ! CFG_LOADS_BAUD_CHANGE */
>  BAREBOX_CMD(
>  	saves, 3, 0,	do_save_serial,
>  	"saves   - save S-Record file over serial line\n",
>  	"[ off ] [size]\n"
>  	"    - save S-Record file over serial line with offset 'off' and size 'size'\n"
>  );
> -#endif	/* CFG_LOADS_BAUD_CHANGE */
>  #endif	/* CFG_CMD_SAVES */
>  
> -- 
> 1.7.5.4
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
