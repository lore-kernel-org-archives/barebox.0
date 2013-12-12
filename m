Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bk0-x22f.google.com ([2a00:1450:4008:c01::22f])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Vqwrs-0000Lm-EF
 for barebox@lists.infradead.org; Thu, 12 Dec 2013 03:23:17 +0000
Received: by mail-bk0-f47.google.com with SMTP id mx12so650977bkb.20
 for <barebox@lists.infradead.org>; Wed, 11 Dec 2013 19:22:54 -0800 (PST)
Date: Thu, 12 Dec 2013 04:31:27 +0100
From: Alexander Aring <alex.aring@gmail.com>
Message-ID: <20131212033126.GA6289@x61s.Speedport_W_921V_1_24_000>
References: <1386797395-28878-1-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1386797395-28878-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH] of: gpio: Fix Kconfig variables to depend on
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Thu, Dec 12, 2013 at 01:29:55AM +0400, Antony Pavlov wrote:
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> ---
>  drivers/of/Kconfig | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/of/Kconfig b/drivers/of/Kconfig
> index cdf7ac7..c4525cb 100644
> --- a/drivers/of/Kconfig
> +++ b/drivers/of/Kconfig
> @@ -20,8 +20,8 @@ config OF_NET
>  	def_bool y
>  
>  config OF_GPIO
> -	depends on CONFIG_GPIOLIB
> -	depends on CONFIG_OFDEVICE
> +	depends on GPIOLIB
> +	depends on OFDEVICE
>  	def_bool y

another nice catch! I do the this mistake quite often myself, then I
realize it. :-)

- Alex

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
