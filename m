Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gH5UY-0006Pa-Kt
 for barebox@lists.infradead.org; Mon, 29 Oct 2018 11:13:56 +0000
Date: Mon, 29 Oct 2018 12:13:42 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20181029111342.ne4lrurwgmmmboav@pengutronix.de>
References: <20181027013157.23135-1-andrew.smirnov@gmail.com>
 <20181027013157.23135-11-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20181027013157.23135-11-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH 10/11] VF610: zii-vf610-dev: Replace board code with
 gpio-hog nodes
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Fri, Oct 26, 2018 at 06:31:56PM -0700, Andrey Smirnov wrote:
> diff --git a/arch/arm/dts/vf610-zii-cfu1.dts b/arch/arm/dts/vf610-zii-cfu1.dts
> index 149333596..74ec9fd1d 100644
> --- a/arch/arm/dts/vf610-zii-cfu1.dts
> +++ b/arch/arm/dts/vf610-zii-cfu1.dts
> @@ -19,3 +19,28 @@
>  	};
>  };
>  
> +
> +&gpio3 {
> +	fim-tdis {
> +		gpio-hog;
> +		gpios = <22 GPIO_ACTIVE_HIGH>;
> +		output-low;
> +		line-name = "fim_tdis";
> +	};
> +
> +	e6352-intn {
> +		gpio-hog;
> +		gpios = <2 GPIO_ACTIVE_HIGH>;
> +		input;
> +		line-name = "e6352_intn";
> +	};
> +};
> +
> +&gpio4 {
> +	fim-sd {
> +		gpio-hog;
> +		gpios = <4 GPIO_ACTIVE_HIGH>;
> +		input;
> +		line-name = "fim_sd";
> +	};
> +};

Hog GPIOs are GPIOs that are initialized once in the Kernel and from
then on can never be changed. Is this true for these GPIOs you change
here? I just want to make sure that you do not use gpio-hog in barebox
to configure it and do something different in the Kernel because you
pass another devicetree to the kernel. Or, to put it differently, you
should be able to pass the barebox devicetree to Linux and still have
a fully operating system.

If that is true then I can apply these patches. Otherwise I would prefer
some gpio-init mechanism that is implemented in barebox and the Kernel
just don't cares.

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
