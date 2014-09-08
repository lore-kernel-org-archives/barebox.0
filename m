Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-we0-x22d.google.com ([2a00:1450:400c:c03::22d])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XQz8A-0004LQ-Ob
 for barebox@lists.infradead.org; Mon, 08 Sep 2014 13:37:20 +0000
Received: by mail-we0-f173.google.com with SMTP id u56so1472455wes.18
 for <barebox@lists.infradead.org>; Mon, 08 Sep 2014 06:36:56 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <1410182622-22876-1-git-send-email-s.hauer@pengutronix.de>
References: <1410182622-22876-1-git-send-email-s.hauer@pengutronix.de>
From: =?UTF-8?Q?Rapha=C3=ABl_Poggi?= <raphio98@gmail.com>
Date: Mon, 8 Sep 2014 15:36:16 +0200
Message-ID: <CACqcpZDxaimhw1zrc+6WDcPhipfqp0SRv2sBFor7a2wWzat+Ow@mail.gmail.com>
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
Subject: Re: AT91 pinctrl/gpio fixes
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hello, I just send patchs, to fix all this issues.

2014-09-08 15:23 GMT+02:00 Sascha Hauer <s.hauer@pengutronix.de>:
> Unfortunately the transition to pinctrl for AT91 caused some damage.
> The 926x do not compile anymore. Even when this is fixed the boards
> won't work since the new pinctrl driver uses of_alias_get_id() even
> for the platform case to translate the device into a gpio chip.
>
> Sascha
>
> ----------------------------------------------------------------
> Sascha Hauer (4):
>       ARM: AT91: Add missing include
>       ARM: AT91: Make gpio mux functions inline
>       pinctrl: AT91: Only use of_alias_get_id when probed from devicetree
>       pinctrl: AT91: use alias_idx to calculate the base gpio number
>
>  arch/arm/mach-at91/at91sam926x_lowlevel_init.c |  2 +-
>  arch/arm/mach-at91/include/mach/gpio.h         | 42 ++++++++++++--------------
>  drivers/pinctrl/pinctrl-at91.c                 |  9 ++++--
>  3 files changed, 27 insertions(+), 26 deletions(-)
>
>
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
