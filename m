Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bFy2V-0003NO-K4
 for barebox@lists.infradead.org; Thu, 23 Jun 2016 06:23:00 +0000
Date: Thu, 23 Jun 2016 08:22:37 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160623062237.GG4750@pengutronix.de>
References: <1466570369-1950-1-git-send-email-andrew.smirnov@gmail.com>
 <1466570369-1950-3-git-send-email-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1466570369-1950-3-git-send-email-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH 3/3] GUI: Add fbtest command
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org, Andrey Gusakov <andrey.gusakov@cogentembedded.com>

On Tue, Jun 21, 2016 at 09:39:29PM -0700, Andrey Smirnov wrote:
> Add 'fbtest' - a command to produce test patterns on a screen
> 
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> Signed-off-by: Andrey Gusakov <andrey.gusakov@cogentembedded.com>
> ---
>  commands/Kconfig  |   9 +++
>  commands/Makefile |   1 +
>  commands/fbtest.c | 187 ++++++++++++++++++++++++++++++++++++++++++++++++++++++
>  3 files changed, 197 insertions(+)
>  create mode 100644 commands/fbtest.c
> 
> diff --git a/commands/Kconfig b/commands/Kconfig
> index 880cd45..107cc3e 100644
> --- a/commands/Kconfig
> +++ b/commands/Kconfig
> @@ -1417,6 +1417,15 @@ config CMD_SPLASH
>  		  -b COLOR	background color in 0xttrrggbb
>  		  -o		render offscreen
>  

> +
> +static int do_fbtest(int argc, char *argv[])
> +{
> +	struct screen *sc;
> +	int opt, i;
> +	const char *pattern_name = NULL;
> +	char *fbdev = "/dev/fb0";
> +	void (*pattern) (struct screen *sc, u32 color) = NULL;
> +	u32 color = 0xffffff;
> +
> +	struct {
> +		const char *name;
> +		void (*func) (struct screen *sc, u32 color);
> +	} patterns[] = {
> +		{ "geometry", fbtest_pattern_geometry },
> +		{ "bars",     fbtest_pattern_bars     }
> +	};
> +
> +	while((opt = getopt(argc, argv, "d:p:c:")) > 0) {
> +		switch(opt) {
> +		case 'd':
> +			fbdev = optarg;
> +			break;
> +		case 'p':
> +			pattern_name = optarg;
> +			break;
> +		case 'c':
> +			color = simple_strtoul(optarg, NULL, 16);
> +			break;
> +		}
> +	}
> +
> +	if (!pattern_name) {
> +		printf("No pattern name specified\n");
> +		return -EINVAL;
> +	}

Maybe we can iterate over the patterns if no pattern is given like the
Linux variant does?

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
