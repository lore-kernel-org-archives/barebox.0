Delivery-date: Mon, 08 Apr 2024 08:27:56 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rtiU0-002Fu4-1g
	for lore@lore.pengutronix.de;
	Mon, 08 Apr 2024 08:27:56 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rtiTz-00052t-OP
	for lore@pengutronix.de; Mon, 08 Apr 2024 08:27:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=NrJrrCQLd9UpI3xaVkef9k7nT35cQmKIZVa09EbXek4=; b=emokzQ8RkX8eFOL6i5zo3ukrAK
	s3DBghBsiuYKHMp0xxQygI31AAMFz4/0AmSb+XtHEMJ8sdy0ecNRmyDqV0zurHVF/QEFxTPtjk3TX
	hczIZEDCwEfcTjaIB/J532Egid+LdEOWbPnvx8fKkwNRfvIWmmHQlLpThHgc7m+oggTuJdKsmpcMS
	PzXZdQu8RFBF9GWSf0fF6ixUpqvebUO5o1uYZyYg3EhvtDnap+ToNHfhLOwZy6LSY8dR37aI42lxj
	Vb/op0m7slS+7twvXnodZ6xFAY3j9R5uGsc6PB2aFr0bYxgoM/jvR0E14vIasdBibg8czwJU1z//k
	i5vIOYLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rtiTF-0000000EVkJ-2YSw;
	Mon, 08 Apr 2024 06:27:09 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rtiTB-0000000EVj6-2A66
	for barebox@lists.infradead.org;
	Mon, 08 Apr 2024 06:27:07 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rtiT6-0004sJ-Lf; Mon, 08 Apr 2024 08:27:00 +0200
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rtiT6-00B3hL-5V; Mon, 08 Apr 2024 08:27:00 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1rtiT6-002jYt-0H;
	Mon, 08 Apr 2024 08:27:00 +0200
Date: Mon, 8 Apr 2024 08:27:00 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Michael Riesch <michael.riesch@wolfvision.net>
Cc: barebox@lists.infradead.org
Message-ID: <ZhOONEHJ2qZ3h5kr@pengutronix.de>
References: <20240405-feature-wolfvision-pf5-v1-0-e4a29c0e7fe1@wolfvision.net>
 <20240405-feature-wolfvision-pf5-v1-2-e4a29c0e7fe1@wolfvision.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240405-feature-wolfvision-pf5-v1-2-e4a29c0e7fe1@wolfvision.net>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240407_232705_581462_2B78394D 
X-CRM114-Status: GOOD (  30.29  )
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
X-Spam-Status: No, score=-5.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 2/4] common: add wolfvision board code library
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Fri, Apr 05, 2024 at 04:04:43PM +0200, Michael Riesch wrote:
> Add board code library for all WolfVision boards.
> 
> Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
> ---
>  common/boards/Kconfig              |   3 +
>  common/boards/Makefile             |   1 +
>  common/boards/wolfvision/Makefile  |   2 +
>  common/boards/wolfvision/common.c  | 145 +++++++++++++++++++++++++++++++++++++
>  include/boards/wolfvision/common.h |  32 ++++++++
>  5 files changed, 183 insertions(+)
> 
> diff --git a/common/boards/Kconfig b/common/boards/Kconfig
> index f6d4a56f88..a2a51155ea 100644
> --- a/common/boards/Kconfig
> +++ b/common/boards/Kconfig
> @@ -14,3 +14,6 @@ config BOARD_PHYTEC_SOM_IMX8M_DETECTION
>  config BOARD_TQ
>  	select CRC_ITU_T
>  	bool
> +
> +config BOARD_WOLFVISION
> +	bool
> diff --git a/common/boards/Makefile b/common/boards/Makefile
> index 147c36643d..3f8ac57b2f 100644
> --- a/common/boards/Makefile
> +++ b/common/boards/Makefile
> @@ -3,3 +3,4 @@
>  obj-$(CONFIG_BOARD_QEMU_VIRT)	+= qemu-virt/
>  obj-$(CONFIG_BOARD_PHYTEC_SOM_DETECTION) += phytec/
>  obj-$(CONFIG_BOARD_TQ) += tq/
> +obj-$(CONFIG_BOARD_WOLFVISION) += wolfvision/
> diff --git a/common/boards/wolfvision/Makefile b/common/boards/wolfvision/Makefile
> new file mode 100644
> index 0000000000..b2be4b73f4
> --- /dev/null
> +++ b/common/boards/wolfvision/Makefile
> @@ -0,0 +1,2 @@
> +# SPDX-License-Identifier: GPL-2.0-only
> +obj-pbl-y += common.o
> diff --git a/common/boards/wolfvision/common.c b/common/boards/wolfvision/common.c
> new file mode 100644
> index 0000000000..188931c24c
> --- /dev/null
> +++ b/common/boards/wolfvision/common.c
> @@ -0,0 +1,145 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +/*
> + * Common board code functions WolfVision boards.
> + *
> + * Copyright (C) 2024 WolfVision GmbH.
> + */
> +
> +#include <common.h>
> +#include <aiodev.h>
> +#include <net.h>
> +#include <state.h>
> +
> +#include <boards/wolfvision/common.h>
> +
> +#define WV_RK3568_HWID_TOLERANCE 50
> +
> +int wolfvision_apply_overlay(const struct wv_overlay *overlay, char **files)
> +{
> +	int ret;
> +
> +	if (overlay->filename) {
> +		if (*files) {
> +			char *old = *files;
> +			*files = basprintf("%s %s", old, overlay->filename);
> +			free(old);
> +		} else {
> +			*files = basprintf("%s", overlay->filename);
> +		}
> +	}
> +
> +	if (overlay->data) {
> +		struct device_node *node =
> +			of_unflatten_dtb(overlay->data, INT_MAX);
> +
> +		if (!node) {

of_unflatten_dtb returns an error pointer in case of failure.

> +			pr_err("Cannot unflatten dtbo\n");

Please provide a pt_fmt() macro to give the messages a meaningful
prefix.

> +			return -EINVAL;
> +		}
> +
> +		ret = of_overlay_apply_tree(of_get_root_node(), node);
> +
> +		of_delete_node(node);
> +
> +		if (ret) {
> +			pr_err("Cannot apply overlay: %s\n", strerror(-ret));

Should be "%pe\n", ERR_PTR(ret)

> +			return ret;
> +		}
> +
> +		of_clk_init();
> +		of_probe();
> +	}
> +
> +	return 0;
> +}
> +
> +int wolfvision_register_ethaddr(void)
> +{
> +	struct device_node *eth0;
> +	struct state *state;
> +	char mac[ETH_ALEN];
> +	int ret;
> +
> +	ret = of_device_ensure_probed_by_alias("state");
> +	if (ret)
> +		return ret;
> +
> +	state = state_by_name("state");
> +	if (!state)
> +		return -ENOENT;
> +
> +	ret = state_read_mac(state, "mac-address", mac);
> +	if (ret)
> +		return ret;
> +
> +	if (!is_valid_ether_addr(mac))
> +		return -EINVAL;
> +
> +	eth0 = of_find_node_by_alias(of_get_root_node(), "ethernet0");
> +	if (eth0)
> +		of_eth_register_ethaddr(eth0, mac);
> +
> +	return 0;
> +}
> +
> +int wolfvision_rk3568_get_hwid(int chan_idx)
> +{
> +	const int values[WV_RK3568_HWID_MAX] = {
> +		0,    112,  225,  337,	450,  562,  675,  787,	900,
> +		1012, 1125, 1237, 1350, 1462, 1575, 1687, 1800,
> +	};
> +	struct aiochannel *chan;
> +	int ret, hwid, voltage;
> +	char *chan_name;
> +
> +	chan_name = basprintf("saradc.in_value%d_mV", chan_idx);
> +	chan = aiochannel_by_name(chan_name);
> +	free(chan_name);
> +	if (IS_ERR(chan))
> +		return PTR_ERR(chan);
> +
> +	ret = aiochannel_get_value(chan, &voltage);
> +	if (ret)
> +		return ret;

I just recently added aiochannel_name_get_value() which combines
aiochannel_by_name() and aiochannel_get_value(), you can use this here.

> +
> +	for (hwid = 0; hwid < ARRAY_SIZE(values); hwid++)
> +		if (abs(voltage - values[hwid]) < WV_RK3568_HWID_TOLERANCE)
> +			return hwid;
> +
> +	return -EINVAL;
> +};
> +
> +int wolfvision_rk3568_detect_hw(const struct wv_rk3568_extension *extensions,
> +				int num_extensions, char **overlays)
> +{
> +	int i, hwid, ret;
> +
> +	ret = of_device_ensure_probed_by_alias("saradc");
> +	if (ret)
> +		return ret;
> +
> +	for (i = 0; i < num_extensions; i++) {
> +		const struct wv_rk3568_extension *extension = &extensions[i];
> +		const struct wv_overlay *overlay;
> +
> +		ret = wolfvision_rk3568_get_hwid(extension->adc_chan);
> +		if (ret < 0) {
> +			pr_warning("Could not retrieve %s HWID (%d)\n",
> +				   extension->name, ret);
> +			return ret;

Maybe better continue with the next entry rather than returning an
error?

> +		}
> +
> +		hwid = ret;
> +		overlay = &extension->overlays[hwid];
> +		if (overlay->name) {
> +			pr_info("Detected %s %s\n", overlay->name,
> +				extension->name);
> +			wolfvision_apply_overlay(overlay, overlays);
> +		} else {
> +			pr_warning("Detected unknown %s HWID %d\n",
> +				   extension->name, hwid);
> +		}
> +	}
> +
> +	return 0;
> +}

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


