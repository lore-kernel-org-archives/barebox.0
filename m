Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h1phc-0000OG-RQ
 for barebox@lists.infradead.org; Thu, 07 Mar 2019 09:52:38 +0000
Received: by mail-wr1-x441.google.com with SMTP id g12so16638443wrm.5
 for <barebox@lists.infradead.org>; Thu, 07 Mar 2019 01:52:36 -0800 (PST)
References: <20190306094239.29413-1-s.hauer@pengutronix.de>
 <20190306094239.29413-6-s.hauer@pengutronix.de>
From: =?UTF-8?B?VG9tYcW+IMWgb2xj?= <tomaz.solc@klevio.com>
Message-ID: <5ad113f6-f0a3-0243-5fd0-57453ed057c6@klevio.com>
Date: Thu, 7 Mar 2019 10:52:33 +0100
MIME-Version: 1.0
In-Reply-To: <20190306094239.29413-6-s.hauer@pengutronix.de>
Content-Language: en-US
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 5/5] ARM: rpi: Add mini UART debug_ll support
To: Sascha Hauer <s.hauer@pengutronix.de>, Barebox List <barebox@lists.infradead.org>

Hi

On 6. 03. 19 10:42, Sascha Hauer wrote:
> diff --git a/common/Kconfig b/common/Kconfig
> index 563cf15fb1..0c6acfcddb 100644
> --- a/common/Kconfig
> +++ b/common/Kconfig
> @@ -1173,6 +1173,12 @@ config DEBUG_RPI2_UART
>   	  Say Y here if you want low-level debugging support on
>   	  RaspberryPi 2 and 3 boards.
>   
> +config DEBUG_RPI3_MINI_UART
> +	bool "RaspberryPi 3 mini UART

The line above is missing the closing double quote.

I also recommend changing the labels on other two UART options to say 
"PL011 UART" instead of "debug UART" so that the difference is more obvious.

Can you also please include in this series my patch that expands the 
help message for DEBUG_LL I sent earlier?

> +	depends on ARCH_BCM283X
> +	help
> +	  Say Y here if you want low-level debugging support on
> +	  RaspberryPi 3 board mini UART.
>   endchoice
>   
>   config DEBUG_IMX_UART_PORT
> 

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
