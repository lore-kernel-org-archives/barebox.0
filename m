Delivery-date: Mon, 21 Oct 2024 12:15:46 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t2pRy-0071w5-19
	for lore@lore.pengutronix.de;
	Mon, 21 Oct 2024 12:15:46 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t2pRx-0008Gl-OO
	for lore@pengutronix.de; Mon, 21 Oct 2024 12:15:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=neTrbkF9AyGepfqyZ++VzCB0FB2a9tbd92i/90vpzcE=; b=Dml1aPoCZGXmeTKw1y/moZhvWU
	+WYNEMdO7TeAMIIKgiE1xTwnSNMZJKdFIBTb+SXwKkf/DL7YoV+KvbK6DOmYo5rL+lgHY/3+jJIZa
	Qxw2IwG8ekSo1ROOsOE3vYRv8iLWyO5xfJfOnLquDJC3mHt1e4HZpmy6XwrY0p7pl8z79JyoRhLcn
	0GNQODpQQ2TyPcrS+N5J7ffD5H1tCqeKQow+Y5v6nXTpGQOdlWON2l24FD7HxwyPSwdCyY4DzEn1r
	8BZFRe4rMVsYrZ048J1ueBC+9OmFuKSm1nLHRiN7kmkYwNBCYqLMiGyXOxn2CYQ2UF70McIWD1J7T
	L7JLdc3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t2pRf-00000006r4V-1id0;
	Mon, 21 Oct 2024 10:15:27 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t2oSq-00000006fEt-058o
	for barebox@lists.infradead.org;
	Mon, 21 Oct 2024 09:12:38 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[IPV6:::1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t2oSo-0001Tp-Hf; Mon, 21 Oct 2024 11:12:34 +0200
Message-ID: <c98d9841-8bb9-4c27-99fb-f03726add6c3@pengutronix.de>
Date: Mon, 21 Oct 2024 11:12:32 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 "open list:BAREBOX" <barebox@lists.infradead.org>
References: <20241021-arm-layerscape-tfa-v1-0-0980697b6f66@pengutronix.de>
 <20241021-arm-layerscape-tfa-v1-5-0980697b6f66@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20241021-arm-layerscape-tfa-v1-5-0980697b6f66@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241021_021236_609870_E4609534 
X-CRM114-Status: GOOD (  15.67  )
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
	autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [PATCH 5/9] ARM: Layerscape: LS1046a: add TF-A support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Sascha,

On 21.10.24 09:21, Sascha Hauer wrote:
> Right now we still use PPA on LS1046a. This has long been deprecated and
> replaced with TF-A. Add support for starting the TF-A on LS1046a based
> boards as a first step to get rid of PPA.


> +void ls1046_start_tfa(void *barebox, struct dram_regions_info *dram_info)
> +{
> +	void (*bl31)(void) = (void *)0xfbe00000;
> +	size_t bl31_size;
> +	void *bl31_image;
> +	struct bl2_to_bl31_params_mem_v2 *params;
> +
> +	get_builtin_firmware_ext(ls1046a_bl31_bin, barebox, &bl31_image, &bl31_size);
> +	memcpy(bl31, bl31_image, bl31_size);
> +
> +	sync_caches_for_execution();
> +
> +	/* Setup an initial stack for EL2 */
> +	asm volatile("msr sp_el2, %0" : : "r" ((unsigned long)barebox - 16) : "cc");

The - 16 shouldn't be necessary, see commit 6b3dc4abd884 ("ARM: Cleanup stack offset
cargo cult").

> +
> +	params = bl2_plat_get_bl31_params_v2(0, (uintptr_t)barebox, 0);
> +	params->bl31_ep_info.args.arg3 = (unsigned long)dram_info;
> +
> +	printf("Starting bl31\n");

Make it a pr_debug?

> diff --git a/firmware/Makefile b/firmware/Makefile
> index 7265c55c42..9351e24e86 100644
> --- a/firmware/Makefile
> +++ b/firmware/Makefile
> @@ -33,6 +33,7 @@ firmware-$(CONFIG_DRIVER_NET_FSL_FMAN) += fsl_fman_ucode_ls1046_r1.0_106_4_18.bi
>  
>  firmware-$(CONFIG_ARCH_LAYERSCAPE_PPA) += ppa-ls1046a.bin
>  fw-external-$(CONFIG_FIRMWARE_LS1028A_ATF) += ls1028a-bl31.bin
> +fw-external-$(CONFIG_FIRMWARE_LS1046A_ATF) += ls1046a-bl31.bin

This should be added to test/generate-dummy-fw.sh.

Documentation also needs to be updated.

Cheers,
Ahmad


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


