Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ea0-x22a.google.com ([2a00:1450:4013:c01::22a])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VW8d0-0007jF-IM
 for barebox@lists.infradead.org; Tue, 15 Oct 2013 17:41:55 +0000
Received: by mail-ea0-f170.google.com with SMTP id h14so4158623eak.15
 for <barebox@lists.infradead.org>; Tue, 15 Oct 2013 10:41:32 -0700 (PDT)
Date: Tue, 15 Oct 2013 19:41:26 +0200
From: Andre Heider <a.heider@gmail.com>
Message-ID: <20131015174126.GA51758@gmail.com>
References: <1381827640-4042-1-git-send-email-s.hauer@pengutronix.de>
 <1381827640-4042-3-git-send-email-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1381827640-4042-3-git-send-email-s.hauer@pengutronix.de>
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
Subject: Re: [PATCH 2/2] ARM: rpi: Update defconfig
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, Oct 15, 2013 at 11:00:40AM +0200, Sascha Hauer wrote:
> Enable MMU, stack dumps and a lot of other features
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  arch/arm/configs/rpi_defconfig | 45 ++++++++++++++++++++++++++++++++----------
>  1 file changed, 35 insertions(+), 10 deletions(-)
> 
> diff --git a/arch/arm/configs/rpi_defconfig b/arch/arm/configs/rpi_defconfig
> index 014e28c..76029d0 100644
> --- a/arch/arm/configs/rpi_defconfig
> +++ b/arch/arm/configs/rpi_defconfig
> @@ -1,41 +1,66 @@
>  CONFIG_ARCH_BCM2835=y
> -CONFIG_GPIO_BCM2835=y
> +CONFIG_AEABI=y
>  CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
> +CONFIG_ARM_UNWIND=y
> +CONFIG_MMU=y

This breaks bcm2835_mci_get_emmc_clock() and gives the warning:
Failed getting emmc clock, lets go anyway with 50MHz

I just sent a patch to fix that, but didn't dig deeper if other spots
are affected.

Regards,
Andre

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
