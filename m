Delivery-date: Tue, 07 Oct 2025 11:12:31 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v63kF-005CE4-0c
	for lore@lore.pengutronix.de;
	Tue, 07 Oct 2025 11:12:31 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v63kE-0001Wv-KV
	for lore@pengutronix.de; Tue, 07 Oct 2025 11:12:31 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=HSPqYERo0YT7tL1hG2k49oLnB6MsMIpre1VEX58XXWQ=; b=p/uAcbnbOW5WNYZtOEvsgU2D7H
	UHQZlZu0NmjHViaw7g9dHPefBMmNSm0uUu6ZI115jjKQFNVqWe5mM+Ewktz9Y41VfpkXQd3G9Vrmg
	7pfQleFS+ooIG3Es1PxhjE6nLqLaJhfiVxhuVFemSUmg5YQyyKVuetbzy0NjLszDbXldI8f4Rpafn
	vF85qFGEA48CJHGydMcM54aVmxdNMf904O/07of4Pxg6LWLqe4ko0wDE5e+XhYCKUZS/pe+4ru3IX
	WVfmGbf7nIIQs+11oiWETMQOp1ESZk2ipICzj48uM8G1QiPdzqFNTCWYhWvuhT3ChMeF6Pb57xn/7
	e7qLhtQg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v63jr-00000001gWg-43so;
	Tue, 07 Oct 2025 09:12:07 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v63jo-00000001gVk-2ZRv
	for barebox@lists.infradead.org;
	Tue, 07 Oct 2025 09:12:05 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1v63jn-0001OF-5P; Tue, 07 Oct 2025 11:12:03 +0200
Message-ID: <3efaeda2-7ba4-4bad-80a8-fc0ddcd90cab@pengutronix.de>
Date: Tue, 7 Oct 2025 11:12:02 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Jonas Rebmann <jre@pengutronix.de>, Sascha Hauer
 <s.hauer@pengutronix.de>, BAREBOX <barebox@lists.infradead.org>
Cc: Tobias Waldekranz <tobias@waldekranz.com>
References: <20250929-tlv-integration-v2-0-55f75da7e670@pengutronix.de>
 <20250929-tlv-integration-v2-8-55f75da7e670@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20250929-tlv-integration-v2-8-55f75da7e670@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251007_021204_829701_DE533E16 
X-CRM114-Status: GOOD (  13.64  )
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
X-Spam-Status: No, score=-4.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 8/9] configs: enable tlv command for multi_v7 and
 multi_v8
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 9/29/25 10:03 AM, Jonas Rebmann wrote:
> Required for TLV integration tests
> 
> Signed-off-by: Jonas Rebmann <jre@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  arch/arm/configs/multi_v7_defconfig | 2 ++
>  arch/arm/configs/multi_v8_defconfig | 2 ++
>  2 files changed, 4 insertions(+)
> 
> diff --git a/arch/arm/configs/multi_v7_defconfig b/arch/arm/configs/multi_v7_defconfig
> index f198a1ddac..93f79c79d2 100644
> --- a/arch/arm/configs/multi_v7_defconfig
> +++ b/arch/arm/configs/multi_v7_defconfig
> @@ -121,6 +121,7 @@ CONFIG_PARTITION_DISK_EFI=y
>  # CONFIG_PARTITION_DISK_EFI_GPT_COMPARE is not set
>  CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
>  CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW_REBOOT_MODE=y
> +CONFIG_TLV=y
>  CONFIG_STATE=y
>  CONFIG_BOOTCHOOSER=y
>  CONFIG_RESET_SOURCE=y
> @@ -203,6 +204,7 @@ CONFIG_CMD_OF_FIXUP_STATUS=y
>  CONFIG_CMD_OF_OVERLAY=y
>  CONFIG_CMD_OFTREE=y
>  CONFIG_CMD_TIME=y
> +CONFIG_CMD_TLV=y
>  CONFIG_NET=y
>  CONFIG_NET_NETCONSOLE=y
>  CONFIG_NET_FASTBOOT=y
> diff --git a/arch/arm/configs/multi_v8_defconfig b/arch/arm/configs/multi_v8_defconfig
> index bd6fceb941..2cb0256f86 100644
> --- a/arch/arm/configs/multi_v8_defconfig
> +++ b/arch/arm/configs/multi_v8_defconfig
> @@ -66,6 +66,7 @@ CONFIG_PBL_CONSOLE=y
>  CONFIG_CONSOLE_RATP=y
>  CONFIG_PARTITION_DISK_EFI=y
>  CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
> +CONFIG_TLV=y
>  CONFIG_STATE=y
>  CONFIG_BOOTCHOOSER=y
>  CONFIG_RESET_SOURCE=y
> @@ -147,6 +148,7 @@ CONFIG_CMD_OF_FIXUP_STATUS=y
>  CONFIG_CMD_OF_OVERLAY=y
>  CONFIG_CMD_OFTREE=y
>  CONFIG_CMD_TIME=y
> +CONFIG_CMD_TLV=y
>  CONFIG_NET=y
>  CONFIG_NET_NETCONSOLE=y
>  CONFIG_NET_SNTP=y
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



