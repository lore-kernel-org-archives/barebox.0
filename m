Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Y83d7-0008QX-1V
 for barebox@lists.infradead.org; Mon, 05 Jan 2015 09:07:18 +0000
Date: Mon, 5 Jan 2015 10:06:52 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150105090651.GD30369@pengutronix.de>
References: <1420044590-26343-1-git-send-email-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1420044590-26343-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: Re: [RFC, PATCH] i.MX6: phytec: Do not hardcode default environment
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

Hi Andrey,

On Wed, Dec 31, 2014 at 08:49:50AM -0800, Andrey Smirnov wrote:
> By default i.MX6 phytec image hardcodes its default environment in
> initialization code. Define phytec specific defonfig and use
> CONFIG_DEFAULT_ENVIRONMENT_PATH instead.
> 
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---
> 
> Not sure how much of a faux pas adding a new defconfig file is, but I
> couldn't think of a better alternative. What I was trying to achive is
> being able to build an image for a custom Phytec SoM based platform
> that would have a completely custom envirnoment and would not pull in
> default phytec stuff.
> 
> Let me know if this is a right approach.
> 
> Thank you.
> 
>  arch/arm/boards/phytec-phyflex-imx6/Makefile   |   1 -
>  arch/arm/boards/phytec-phyflex-imx6/board.c    |   2 -
>  arch/arm/configs/phytec_phyflex_imx6_defconfig | 705 +++++++++++++++++++++++++
>  3 files changed, 705 insertions(+), 3 deletions(-)
>  create mode 100644 arch/arm/configs/phytec_phyflex_imx6_defconfig
> 
> diff --git a/arch/arm/boards/phytec-phyflex-imx6/Makefile b/arch/arm/boards/phytec-phyflex-imx6/Makefile
> index 11e1c7d..01c7a25 100644
> --- a/arch/arm/boards/phytec-phyflex-imx6/Makefile
> +++ b/arch/arm/boards/phytec-phyflex-imx6/Makefile
> @@ -1,3 +1,2 @@
>  obj-y += board.o
>  lwl-y += lowlevel.o
> -bbenv-y += defaultenv-phyflex-imx6
> diff --git a/arch/arm/boards/phytec-phyflex-imx6/board.c b/arch/arm/boards/phytec-phyflex-imx6/board.c
> index 1551460..3f52680 100644
> --- a/arch/arm/boards/phytec-phyflex-imx6/board.c
> +++ b/arch/arm/boards/phytec-phyflex-imx6/board.c
> @@ -87,8 +87,6 @@ static int phytec_pfla02_init(void)
>  		break;
>  	}
>  
> -	defaultenv_append_directory(defaultenv_phyflex_imx6);
> -

Looking at it you should rather replace the compatible checks in
phytec_pfla02_init with their baseboards, so instead of:

	if (!of_machine_is_compatible("phytec,imx6q-pfla02") &&
                        !of_machine_is_compatible("phytec,imx6dl-pfla02") &&
                        !of_machine_is_compatible("phytec,imx6s-pfla02"))
                return 0;

do a:

	if (!of_machine_is_compatible("phytec,imx6x-pbab01") &&
                        !of_machine_is_compatible("phytec,imx6dl-pbab05") &&
                        !of_machine_is_compatible("phytec,imx6q-pbab02"))
                return 0;

Then the phytec default env will only be added for the phytec baseboards
and not for your custom one. Note phyflex_err006282_workaround() won't
be called either then, you may need your own version of this then.

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
