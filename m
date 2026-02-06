Delivery-date: Fri, 06 Feb 2026 13:10:05 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1voKez-009TSK-32
	for lore@lore.pengutronix.de;
	Fri, 06 Feb 2026 13:10:05 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1voKey-0003Qg-SS
	for lore@pengutronix.de; Fri, 06 Feb 2026 13:10:05 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Xtq3kMb/LWJu/z2jttoM9tgoNHPLvu6AWVByR3/Hh00=; b=uagJFj0a2JRWdVcvPkN7pF9RwC
	Lmb65saBIxn6o6eFr0gvgRS/sJIgtjgJUGzoLNpYPUSPMOG1WUu1bxZ963kpevBesBQFSM21PvAIJ
	/f2ZzmhBPZVElDzq5Kfh3BHcJRTsiScqtrxmtaEn1w8aJZDIZE4QlnXGx04yrFOSuW7q/1qP0HynE
	oKAQksTfV5yr2WIyLu36N8jTtbUSsxx6Dn9+r4hwGnPzAZjeqvynNb7fx3s9te8mncGL9ZNSpnWB3
	CeA8JZaKpPmnj61jp5gcCo2obuTTn0DtgB1Pt7M67ENJBnREtXoiEIrwVoKc2sTbi9HDzUCd0jXpn
	F36JEk3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1voKeP-0000000BHel-0Ext;
	Fri, 06 Feb 2026 12:09:29 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1voKeN-0000000BHeW-0zR4
	for barebox@bombadil.infradead.org;
	Fri, 06 Feb 2026 12:09:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:To:Subject:MIME-Version:Date:Message-ID:Sender:
	Reply-To:Cc:Content-ID:Content-Description;
	bh=Xtq3kMb/LWJu/z2jttoM9tgoNHPLvu6AWVByR3/Hh00=; b=L7BPhwde/14kPPen7mX/LPsbNf
	VyFTuElbvIUlpPVYTM3HeuVZGOnzBnk3a3g9DH5O8WZvodNRwoDNyXhirpvLr7Ox/Uln7W45XdUhY
	TpywcJiH26XwaageZqRnqnlleDiucaW565Ul64JahATUgUIdo7hTubU0GH14T87uTnmi3gTBGn56N
	J4rAP0cnflcEn/2Py+5U56NYnk+J9hhGCpx5eprakWBsqL0HpJ/LPBOsvlZP1CzJkXue6CD71d3VH
	ZePUJnbwC2kPNI23mRP55Ejt+hc+i6L5Iukp17F2bKJpHYNU5+IqfyzQsBAJLVZVs/5mn31sjTVqu
	afy4+4uQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1voKeJ-00000003lBm-2sOG
	for barebox@lists.infradead.org;
	Fri, 06 Feb 2026 12:09:25 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1voKeG-0003MG-WB; Fri, 06 Feb 2026 13:09:21 +0100
Message-ID: <cbfbe353-8fa7-4f2c-b682-7af16162f2a4@pengutronix.de>
Date: Fri, 6 Feb 2026 13:09:20 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Marco Felsch <m.felsch@pengutronix.de>,
 Sascha Hauer <s.hauer@pengutronix.de>, BAREBOX <barebox@lists.infradead.org>
References: <20260204-v2025-09-0-topic-optee-of-handling-v2-0-da075e6818e0@pengutronix.de>
 <20260204-v2025-09-0-topic-optee-of-handling-v2-12-da075e6818e0@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20260204-v2025-09-0-topic-optee-of-handling-v2-12-da075e6818e0@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260206_120923_974606_F37142F2 
X-CRM114-Status: GOOD (  21.03  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 12/15] security: optee: add helpers to register OF
 overlays
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 2/4/26 9:01 PM, Marco Felsch wrote:
> Add two helpers to make the OP-TEE overlay handling more convenient.
> 
> The first helper registers an optional OF overlay provided by
> barebox-pbl.
> The second helper can be used to query the status of the OF overlay, e.g
> registered or not-registered.
> 
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>

With below memory leak fixed:

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  drivers/tee/optee/of_fixup.c | 41 +++++++++++++++++++++++++++++++++++++++++
>  include/tee/optee.h          | 11 +++++++++++
>  2 files changed, 52 insertions(+)
> 
> diff --git a/drivers/tee/optee/of_fixup.c b/drivers/tee/optee/of_fixup.c
> index 152322901a7e6af9c83da4c6a2d43f6e2c9af329..dbcc168201828d350f4545a07ce5f2676f18d09e 100644
> --- a/drivers/tee/optee/of_fixup.c
> +++ b/drivers/tee/optee/of_fixup.c
> @@ -1,7 +1,10 @@
>  /* SPDX-License-Identifier: GPL-2.0-only */
>  
> +#define pr_fmt(fmt) "OP-TEE OF: " fmt
> +
>  #include <of.h>
>  #include <linux/ioport.h>
> +#include <linux/printk.h>
>  #include <asm/barebox-arm.h>
>  #include <tee/optee.h>
>  
> @@ -64,3 +67,41 @@ int of_optee_fixup(struct device_node *root, void *_data)
>  
>  	return of_fixup_reserved_memory(root, &res_shm);
>  }
> +
> +static bool optee_ovl_registered;
> +
> +void optee_register_overlay(void)
> +{
> +	struct device_node *overlay;
> +	size_t size = 0;
> +	void *fdto;
> +	int err;
> +
> +	if (optee_ovl_registered) {
> +		pr_warn("overlay already registered, skip\n");
> +		return;
> +	}
> +
> +	fdto = handoff_data_get_entry(HANDOFF_DATA_TEE_DT_OVL, &size);
> +	if (!fdto || size == 0)
> +		return;
> +
> +	overlay = of_unflatten_dtb(fdto, size);
> +	if (IS_ERR(overlay)) {
> +		pr_warn("failed to unflatten overlay: %pe\n", overlay);
> +		return;
> +	}
> +
> +	err = of_register_overlay(overlay);
> +	if (err) {
> +		pr_warn("failed to register overlay: %pe\n", ERR_PTR(err));
> +		return;
> +	}

I believe you'll want to add a of_delete_node(overlay); here

> +
> +	optee_ovl_registered = true;
> +}
> +
> +bool optee_overlay_registered(void)
> +{
> +	return optee_ovl_registered;
> +}
> diff --git a/include/tee/optee.h b/include/tee/optee.h
> index 7126e3c6e24bbf0f37aee7827dc3b4d9619d3bc3..0c9a6e5e64723ca743d53b8cd1ffdefae5bd3c6f 100644
> --- a/include/tee/optee.h
> +++ b/include/tee/optee.h
> @@ -38,6 +38,8 @@ int optee_verify_header (const struct optee_header *hdr);
>  void optee_set_membase(const struct optee_header *hdr);
>  int optee_get_membase(u64 *membase);
>  void optee_handoff_overlay(void *ovl, unsigned int ovl_sz);
> +void optee_register_overlay(void);
> +bool optee_overlay_registered(void);
>  
>  #else
>  
> @@ -54,6 +56,15 @@ void optee_handoff_overlay(void *ovl, unsigned int ovl_sz)
>  {
>  }
>  
> +static inline void optee_register_overlay(void)
> +{
> +}
> +
> +static inline bool optee_overlay_registered(void)
> +{
> +	return false;
> +}
> +
>  #endif /* CONFIG_HAVE_OPTEE */
>  
>  #ifdef __PBL__
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



