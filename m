Delivery-date: Mon, 02 Jun 2025 15:51:40 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uM5Zk-002ypP-0v
	for lore@lore.pengutronix.de;
	Mon, 02 Jun 2025 15:51:40 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uM5Zj-0007Nz-Ii
	for lore@pengutronix.de; Mon, 02 Jun 2025 15:51:40 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7pBkZpJgzMcqfekV0IM+T+qr1KBhJ5rEnxd6OiiXBA0=; b=wJrkotGmvHVTTj7yvi5awo701w
	kMCftXsEkRpMSlBobox7fnaAAq68493SYMlav3eekuoDHDOc3msb7uRBh3Ke9Ug3KHFLXDEwV+BWw
	MBZFHRNuBFcXRJBzv+tpoBNxLplI4xuG1Lok+FzkAshHMoGKwFCq2Yhms6JdqLqXL41wBMvqDT5F2
	wkD1FMM4nw09aU/BUVX3rjR5FZyMyeFSbuIEq7q9M3/B18uKlUaWqBv/nyUm/evO8gGeofAjZAlHv
	8VkK4YklRufPp/yUttRT+AFgQ8sQ/cwlV+nNdDN+Wwo0O2tNi59dgxIV6vcD+ufiK6u4BR+c4FTrQ
	hgDd8eTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uM5ZE-00000007W6s-2sHM;
	Mon, 02 Jun 2025 13:51:08 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uM5R1-00000007Uz1-32yK
	for barebox@lists.infradead.org;
	Mon, 02 Jun 2025 13:42:41 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uM5R0-00047k-Fw; Mon, 02 Jun 2025 15:42:38 +0200
Message-ID: <7886d152-2f27-4a3a-bd0e-58d4a01c6f77@pengutronix.de>
Date: Mon, 2 Jun 2025 15:42:38 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
References: <20250602-createnv-v1-0-c3239ff875d5@pengutronix.de>
 <20250602-createnv-v1-5-c3239ff875d5@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250602-createnv-v1-5-c3239ff875d5@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250602_064239_770000_F48B921F 
X-CRM114-Status: GOOD (  34.86  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 5/5] mci: add option to detect non-removable cards during
 startup
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 02.06.25 15:28, Sascha Hauer wrote:
> We can optionally detect all MMC/SD cards during startup which might
> cost some boot time, so this is best disabled. This adds another option
> to detect only cards that are marked non-removable in the device tree
> during startup. The rationale is that we will likely boot from that
> device anyway, so detecting it during startup does not add to the boot
> time.
> 
> We are aiming to find a good place for the barebox environment without
> having to explicitly add it to the device tree. Putting the environment
> into a regular partition is a good start, but the device that has the
> environment needs to be available when we are searching for it. Enabling
> this new option is one way to it.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  drivers/mci/Kconfig    | 21 +++++++++++++++++++--
>  drivers/mci/mci-core.c |  6 +++++-
>  include/mci.h          |  1 +
>  3 files changed, 25 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/mci/Kconfig b/drivers/mci/Kconfig
> index 44fd4716aade0882264d389cc08547c3f14986c9..417309cdf502cdf1c2b7e584c886dd94661bb0fb 100644
> --- a/drivers/mci/Kconfig
> +++ b/drivers/mci/Kconfig
> @@ -19,14 +19,31 @@ config MCI_TUNING
>  	  higher clock speeds than 52 MHz SDR. MMC only; SD-Card max
>  	  frequency is 50MHz SDR at present.
>  
> +choice
> +	prompt "MMC startup behaviour"

"MMC detection on startup"?

Does not having a default makes MCI_STARTUP the default now whereas before it was
default n? I think MCI_STARTUP_NONE should be the default instead and
MCI_STARTUP_NONREMOVABLE is what we enable in defconfigs that don't already
have MCI_STARTUP.

> +
>  config MCI_STARTUP
> -	bool "Force probe on system start"
> +	bool "detect cards on system start"

detect all cards on system start

>  	help
> -	  Say 'y' here if the MCI framework should always probe for all attached
> +	  Choose this if the MCI framework should always probe for all attached
>  	  MCI cards on system start up. This may required for some legacy boards.
>  	  When this is 'n', probing happens on demand either with "mci*.probe=1"
>  	  or with driver/board code calling device_detect.
>  
> +config MCI_STARTUP_NONREMOVABLE
> +	bool "detect non removable cards on system start"
> +	help
> +	  Choose this if the MCI framework should detect non removable cards (i.e.
> +	  devices which have the non-removable device tree property).
> +
> +config MCI_STARTUP_NONE
> +	bool "detect not detect cards during system start"

do not detect cards during system start

> +	help
> +	  Choose this if the MCI framework should never detect cards during system
> +	  start

should not detect cards on its own during system start. If this is enabled, cards
will need to be explicitly detected by the user by calling detect or by explicit
reference to the device.

> +
> +endchoice
> +
>  config MCI_INFO
>  	bool "MCI Info"
>  	depends on CMD_DEVINFO
> diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
> index 23cde58c0c5b1fae4e3692c9ac0989362376d06d..3984852a1d8d21226947aa59bc73a68e79f11d8c 100644
> --- a/drivers/mci/mci-core.c
> +++ b/drivers/mci/mci-core.c
> @@ -3101,7 +3101,9 @@ int mci_register(struct mci_host *host)
>  		devinfo_add(&mci->dev, mci_info);
>  
>  	/* if enabled, probe the attached card immediately */
> -	if (IS_ENABLED(CONFIG_MCI_STARTUP))
> +	if (IS_ENABLED(CONFIG_MCI_STARTUP) ||
> +	   (IS_ENABLED(CONFIG_MCI_STARTUP_NONREMOVABLE) &&
> +	    (host->host_caps & MMC_CAP_NONREMOVABLE)))
>  		mci_card_probe(mci);
>  
>  	if (!(host->caps2 & MMC_CAP2_NO_SD) && dev_of_node(host->hw_dev)) {
> @@ -3195,6 +3197,8 @@ void mci_of_parse_node(struct mci_host *host,
>  		host->caps2 |= MMC_CAP2_NO_SD;
>  	if (of_property_read_bool(np, "no-mmc"))
>  		host->caps2 |= MMC_CAP2_NO_MMC;
> +	if (of_property_read_bool(np, "non-removable"))
> +                host->host_caps |= MMC_CAP_NONREMOVABLE;

We already have struct mci_host::non-removable. I don't mind copying the Linux flag,
but we should then drop the duplication.

>  	if (IS_ENABLED(CONFIG_MCI_TUNING)) {
>  		u32 drv_type;
>  
> diff --git a/include/mci.h b/include/mci.h
> index 207fb9779a14495bdbed782c6d18245d95077055..05114fd72e6cc08025e86fe99021ff041e02101c 100644
> --- a/include/mci.h
> +++ b/include/mci.h
> @@ -58,6 +58,7 @@
>  #define MMC_CAP_1_2V_DDR		(1 << 9)	/* Host supports eMMC DDR 1.2V */
>  #define MMC_CAP_DDR			(MMC_CAP_3_3V_DDR | MMC_CAP_1_8V_DDR | \
>  					 MMC_CAP_1_2V_DDR)
> +#define MMC_CAP_NONREMOVABLE	(1 << 8)	/* Nonremovable e.g. eMMC */
>  #define MMC_CAP_UHS_SDR12	(1 << 16)	/* Host supports UHS SDR12 mode */
>  #define MMC_CAP_UHS_SDR25	(1 << 17)	/* Host supports UHS SDR25 mode */
>  #define MMC_CAP_UHS_SDR50	(1 << 18)	/* Host supports UHS SDR50 mode */
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


