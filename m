Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x243.google.com ([2a00:1450:4010:c07::243])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bFfpN-00043y-AL
 for barebox@lists.infradead.org; Wed, 22 Jun 2016 10:56:13 +0000
Received: by mail-lf0-x243.google.com with SMTP id w130so13382001lfd.2
 for <barebox@lists.infradead.org>; Wed, 22 Jun 2016 03:55:52 -0700 (PDT)
Date: Wed, 22 Jun 2016 13:57:35 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20160622135735.67d30c13d9e86d8681162a22@gmail.com>
In-Reply-To: <1466570369-1950-3-git-send-email-andrew.smirnov@gmail.com>
References: <1466570369-1950-1-git-send-email-andrew.smirnov@gmail.com>
 <1466570369-1950-3-git-send-email-andrew.smirnov@gmail.com>
Mime-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 3/3] GUI: Add fbtest command
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org, Andrey Gusakov <andrey.gusakov@cogentembedded.com>

On Tue, 21 Jun 2016 21:39:29 -0700
Andrey Smirnov <andrew.smirnov@gmail.com> wrote:

> Add 'fbtest' - a command to produce test patterns on a screen
> =

> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> Signed-off-by: Andrey Gusakov <andrey.gusakov@cogentembedded.com>
> ---
>  commands/Kconfig  |   9 +++
>  commands/Makefile |   1 +
>  commands/fbtest.c | 187 ++++++++++++++++++++++++++++++++++++++++++++++++=
++++++
>  3 files changed, 197 insertions(+)
>  create mode 100644 commands/fbtest.c
> =

> diff --git a/commands/Kconfig b/commands/Kconfig
> index 880cd45..107cc3e 100644
> --- a/commands/Kconfig
> +++ b/commands/Kconfig
> @@ -1417,6 +1417,15 @@ config CMD_SPLASH
>  		  -b COLOR	background color in 0xttrrggbb
>  		  -o		render offscreen
>  =

> +config CMD_FBTEST
> +	bool
> +	depends on VIDEO
> +	select 2D_PRIMITIVES
> +	prompt "FB test"
> +	help
> +	  Framebuffer test command that allows to produce a number of
> +	  test patterns on the screen.
> +
>  config CMD_READLINE
>  	tristate
>  	prompt "readline"
> diff --git a/commands/Makefile b/commands/Makefile
> index b8c07f3..5a899ab 100644
> --- a/commands/Makefile
> +++ b/commands/Makefile
> @@ -57,6 +57,7 @@ obj-$(CONFIG_CMD_HELP)		+=3D help.o
>  obj-$(CONFIG_CMD_LSMOD)		+=3D lsmod.o
>  obj-$(CONFIG_CMD_INSMOD)	+=3D insmod.o
>  obj-$(CONFIG_CMD_SPLASH)	+=3D splash.o
> +obj-$(CONFIG_CMD_FBTEST)	+=3D fbtest.o
>  obj-$(CONFIG_USB_GADGET_DFU)	+=3D dfu.o
>  obj-$(CONFIG_USB_GADGET_SERIAL)	+=3D usbserial.o
>  obj-$(CONFIG_CMD_GPIO)		+=3D gpio.o
> diff --git a/commands/fbtest.c b/commands/fbtest.c
> new file mode 100644
> index 0000000..cf80274
> --- /dev/null
> +++ b/commands/fbtest.c
> @@ -0,0 +1,187 @@
> +#include <common.h>
> +#include <command.h>
> +#include <errno.h>
> +#include <malloc.h>
> +#include <getopt.h>
> +#include <fb.h>
> +#include <gui/graphic_utils.h>
> +#include <gui/2d-primitives.h>
> +#include <linux/gcd.h>
> +
> +unsigned long int_sqrt(unsigned long x);

the int_sqrt() function is defined in the drivers/video/edid.c file.
To use it we have to keep CONFIG_DRIVER_VIDEO_EDID enabled.
But I have see no measures on enabling CONFIG_DRIVER_VIDEO_EDID in your pat=
ch.
Have I missed something?

Can we move int_sqrt() in a separate C library file,
so edid.c and fbtest.c can both use it?

--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
