Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-we0-x22e.google.com ([2a00:1450:400c:c03::22e])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Vk6bV-0002OI-TR
 for barebox@lists.infradead.org; Sat, 23 Nov 2013 06:22:06 +0000
Received: by mail-we0-f174.google.com with SMTP id q58so1989767wes.33
 for <barebox@lists.infradead.org>; Fri, 22 Nov 2013 22:21:43 -0800 (PST)
Date: Sat, 23 Nov 2013 07:21:38 +0100
From: Alexander Aring <alex.aring@gmail.com>
Message-ID: <20131123062137.GA28327@omega>
References: <1385132122-4725-1-git-send-email-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1385132122-4725-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: Re: [PATCH] of: gpio: Add Kconfig variable to depend on
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Sascha,

On Fri, Nov 22, 2013 at 03:55:22PM +0100, Sascha Hauer wrote:
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  drivers/of/Kconfig  | 5 +++++
>  drivers/of/Makefile | 2 +-
>  include/of_gpio.h   | 6 +++---
>  3 files changed, 9 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/of/Kconfig b/drivers/of/Kconfig
> index 6b893d7..cdf7ac7 100644
> --- a/drivers/of/Kconfig
> +++ b/drivers/of/Kconfig
> @@ -19,6 +19,11 @@ config OF_NET
>  	depends on NET
>  	def_bool y
>  
> +config OF_GPIO
> +	depends on CONFIG_GPIOLIB
> +	depends on CONFIG_OFDEVICE
> +	def_bool y

On current next branch the "def_bool y" is missing, so I get:

drivers/of/Kconfig:22:warning: config symbol defined without type

I will send a patch soon...

- Alex

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
