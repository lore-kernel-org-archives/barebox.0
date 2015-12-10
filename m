Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x232.google.com ([2a00:1450:4010:c07::232])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1a6yu2-0006I5-RD
 for barebox@lists.infradead.org; Thu, 10 Dec 2015 10:56:52 +0000
Received: by lfdl133 with SMTP id l133so53697587lfd.2
 for <barebox@lists.infradead.org>; Thu, 10 Dec 2015 02:56:28 -0800 (PST)
Date: Thu, 10 Dec 2015 14:20:32 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20151210142032.6f0963858a89c7e3d2d8b061@gmail.com>
In-Reply-To: <1449474763-14099-5-git-send-email-andrew.smirnov@gmail.com>
References: <1449474763-14099-1-git-send-email-andrew.smirnov@gmail.com>
 <1449474763-14099-5-git-send-email-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH 5/7] commands: Add 'hwmon' command
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Sun,  6 Dec 2015 23:52:41 -0800
Andrey Smirnov <andrew.smirnov@gmail.com> wrote:

> Add 'hwmon' command which allows to display the readings of all
> hardware monitoring sensors registered with Barebox.
> =

> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---
>  commands/Kconfig  |  8 ++++++++
>  commands/Makefile |  1 +
>  commands/hwmon.c  | 47 +++++++++++++++++++++++++++++++++++++++++++++++
>  3 files changed, 56 insertions(+)
>  create mode 100644 commands/hwmon.c
> =

> diff --git a/commands/Kconfig b/commands/Kconfig
> index 1743670..a338efd 100644
> --- a/commands/Kconfig
> +++ b/commands/Kconfig
> @@ -1799,6 +1799,14 @@ config CMD_HWCLOCK
>  	help
>  	  The hwclock command allows to query or set the hardware clock (RTC).
> =

> +config CMD_HWMON
> +	bool
> +	depends on HWMON
> +	prompt "hwmon command"
> +	default y
> +	help
> +	  The hwmon command allows to query hardware sensors.
> +
>  config CMD_I2C
>  	bool
>  	depends on I2C
> diff --git a/commands/Makefile b/commands/Makefile
> index d985341..6c5158c 100644
> --- a/commands/Makefile
> +++ b/commands/Makefile
> @@ -105,6 +105,7 @@ obj-$(CONFIG_CMD_REGULATOR)	+=3D regulator.o
>  obj-$(CONFIG_CMD_LSPCI)		+=3D lspci.o
>  obj-$(CONFIG_CMD_IMD)		+=3D imd.o
>  obj-$(CONFIG_CMD_HWCLOCK)	+=3D hwclock.o
> +obj-$(CONFIG_CMD_HWMON)		+=3D hwmon.o
>  obj-$(CONFIG_CMD_USBGADGET)	+=3D usbgadget.o
>  obj-$(CONFIG_CMD_FIRMWARELOAD)	+=3D firmwareload.o
>  obj-$(CONFIG_CMD_CMP)		+=3D cmp.o
> diff --git a/commands/hwmon.c b/commands/hwmon.c
> new file mode 100644
> index 0000000..84c0c70
> --- /dev/null
> +++ b/commands/hwmon.c
> @@ -0,0 +1,47 @@
> +#include <common.h>
> +#include <command.h>
> +#include <getopt.h>
> +#include <linux/err.h>
> +#include <linux/ctype.h>
> +#include <string.h>
> +#include <environment.h>
> +#include <hwmon.h>
> +
> +static int do_hwmon(int argc, char *argv[])
> +{
> +	struct hwmon_sensor *s;
> +
> +	for_each_hwmon_sensor(s) {
> +		s32 value;
> +		int ret =3D hwmon_sensor_read(s, &value);
> +
> +		if (ret < 0) {
> +			printf("%s -- failed to read the sensor (%d)\n", s->name, ret);
> +			continue;
> +		}
> +
> +		switch (s->type) {
> +		case SENSOR_TEMPERATURE:
> +			printf("name: %s, reading: %d.%03d C\n",
> +			       s->name, (int)(value / 1000), (int)abs(value % 1000));
> +			break;
> +		default:
> +			printf("%s -- unknow type of sensor\n", s->name);
> +			break;
> +		}
> +	}
> +
> +	return 0;
> +}
> +
> +#if 0
> +BAREBOX_CMD_HELP_START(hwmon)
> +BAREBOX_CMD_HELP_END
> +#endif
> +

Please complete help stuff.


-- =

--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
