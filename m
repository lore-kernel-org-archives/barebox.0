Delivery-date: Mon, 04 Sep 2023 11:09:05 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qd5Zz-003WSR-0f
	for lore@lore.pengutronix.de; Mon, 04 Sep 2023 11:09:05 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qd5Zw-0003jp-QL
	for lore@pengutronix.de; Mon, 04 Sep 2023 11:09:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=mqCQByqRktw0i1AQOxgxenUBWJ8b9XEUF/fzuNkhzuw=; b=b5r6HINs3ZBIofZck9+PddcR0U
	Tp3CN4zzyt6fhOLVXF7XNW04ocZB5cbzsWyTUOijjNU8VFAHhCNAXseccfRVzRt7JRajjPgypu3v/
	v6e+cyXrb/EEaIW+c37r9GV883eeAjMbAGgwDW4BuTcc1uVGl6vfGUQUlcRewbyNMiIuIRIvbhmZ7
	ZILiJ0uQR6mTnmjrobydn3Ad4xWr68oc9P1iNVL6BTIi9//3gHQclMU9eaqPKl4PvelR/815tIree
	DBoMoT3w+zFXKiC5ux/6i0n7RWTwHBDFsbI5iZd4V7OxubgZLy4uIWBZV+xGB+GKS/tz5AvuCY8x2
	BJ6rR3Sg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qd5Yj-003blO-1d;
	Mon, 04 Sep 2023 09:07:49 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qd5Yg-003bkf-19
	for barebox@lists.infradead.org;
	Mon, 04 Sep 2023 09:07:47 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qd5Ye-000283-VH; Mon, 04 Sep 2023 11:07:44 +0200
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qd5Ye-003qLL-C6; Mon, 04 Sep 2023 11:07:44 +0200
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qd5Ye-000xq9-7M; Mon, 04 Sep 2023 11:07:44 +0200
Date: Mon, 4 Sep 2023 11:07:44 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, ejo@pengutronix.de
Message-ID: <20230904090744.GD189379@pengutronix.de>
References: <20230825120736.1508084-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230825120736.1508084-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230904_020746_394848_C9955BFC 
X-CRM114-Status: GOOD (  22.71  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: stm32mp: phycore: register barebox update handlers
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Fri, Aug 25, 2023 at 02:07:36PM +0200, Ahmad Fatoum wrote:
> We have barebox update handlers for updating barebox on SD (ssbl GPT
> partition) and on eMMC boot partition (with or without TF-A).
> 
> Let's put them to use.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
> Only build-tested. Waiting for ejo's Tested-by
> ---
>  arch/arm/boards/phytec-phycore-stm32mp1/board.c | 13 +++++++++++--
>  1 file changed, 11 insertions(+), 2 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/boards/phytec-phycore-stm32mp1/board.c b/arch/arm/boards/phytec-phycore-stm32mp1/board.c
> index 731880c3d16a..6b10ebbdb2e6 100644
> --- a/arch/arm/boards/phytec-phycore-stm32mp1/board.c
> +++ b/arch/arm/boards/phytec-phycore-stm32mp1/board.c
> @@ -2,13 +2,22 @@
>  #include <common.h>
>  #include <driver.h>
>  #include <bootsource.h>
> +#include <mach/stm32mp/bbu.h>
>  
>  static int phycore_stm32mp1_probe(struct device *dev)
>  {
> -	if (bootsource_get_instance() == 0)
> +	int sd_bbu_flags = 0, emmc_bbu_flags = 0;
> +
> +	if (bootsource_get_instance() == 0) {
>  		of_device_enable_path("/chosen/environment-sd");
> -	else
> +		sd_bbu_flags = BBU_HANDLER_FLAG_DEFAULT; 
> +	} else {
>  		of_device_enable_path("/chosen/environment-emmc");
> +		emmc_bbu_flags = BBU_HANDLER_FLAG_DEFAULT; 
> +	}
> +
> +	stm32mp_bbu_mmc_register_handler("sd", "/dev/mmc0.ssbl", sd_bbu_flags);
> +	stm32mp_bbu_mmc_fip_register("emmc", "/dev/mmc1", emmc_bbu_flags);
>  
>  	barebox_set_hostname("phyCORE-STM32MP1");
>  
> -- 
> 2.39.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


