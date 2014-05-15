Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-x229.google.com ([2a00:1450:4013:c00::229])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WkrqP-0006v0-55
 for barebox@lists.infradead.org; Thu, 15 May 2014 09:20:53 +0000
Received: by mail-ee0-f41.google.com with SMTP id t10so444139eei.28
 for <barebox@lists.infradead.org>; Thu, 15 May 2014 02:20:30 -0700 (PDT)
Message-ID: <537486DB.9010302@gmail.com>
Date: Thu, 15 May 2014 11:20:27 +0200
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
References: <1400144937-6006-1-git-send-email-holgerschurig@gmail.com>
In-Reply-To: <1400144937-6006-1-git-send-email-holgerschurig@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] commands: rename "gpiolib" -> "gpioinfo"
To: Holger Schurig <holgerschurig@gmail.com>, barebox@lists.infradead.org

On 05/15/2014 11:08 AM, Holger Schurig wrote:
> Signed-off-by: Holger Schurig <holgerschurig@gmail.com>

Subject: rename "gpiolib" -> "gpioinfo"

How about joining the gpio related commands to "gpio"
and use e.g. -l for list?

Sebastian

> ---
>   drivers/gpio/gpiolib.c |    8 +++-----
>   1 file changed, 3 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/gpio/gpiolib.c b/drivers/gpio/gpiolib.c
> index 54ec5a6..611e41e 100644
> --- a/drivers/gpio/gpiolib.c
> +++ b/drivers/gpio/gpiolib.c
> @@ -305,8 +305,6 @@ static int do_gpiolib(int argc, char *argv[])
>   {
>   	int i;
>
> -	printf("gpiolib: gpio lists\n");
> -
>   	for (i = 0; i < ARCH_NR_GPIOS; i++) {
>   		struct gpio_info *gi = &gpio_desc[i];
>   		int val = -1, dir = -1;
> @@ -316,7 +314,7 @@ static int do_gpiolib(int argc, char *argv[])
>
>   		/* print chip information and header on first gpio */
>   		if (gi->chip->base == i) {
> -			printf("\ngpios %u-%u, chip %s:\n",
> +			printf("\nGPIOs %u-%u, chip %s:\n",
>   				gi->chip->base,
>   				gi->chip->base + gi->chip->ngpio - 1,
>   				gi->chip->dev->name);
> @@ -330,7 +328,7 @@ static int do_gpiolib(int argc, char *argv[])
>   			val = gi->chip->ops->get(gi->chip,
>   						i - gi->chip->base);
>
> -		printf("  gpio %*d: %*s %*s %*s  %s\n", 4, i,
> +		printf("  GPIO %*d: %*s %*s %*s  %s\n", 4, i,
>   			3, (dir < 0) ? "unk" : ((dir == GPIOF_DIR_IN) ? "in" : "out"),
>   			3, (val < 0) ? "unk" : ((val == 0) ? "lo" : "hi"),
>   			9, gi->requested ? "true" : "false",
> @@ -340,7 +338,7 @@ static int do_gpiolib(int argc, char *argv[])
>   	return 0;
>   }
>
> -BAREBOX_CMD_START(gpiolib)
> +BAREBOX_CMD_START(gpioinfo)
>   	.cmd		= do_gpiolib,
>   	BAREBOX_CMD_DESC("list registered GPIOs")
>   	BAREBOX_CMD_GROUP(CMD_GRP_INFO)
>


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
