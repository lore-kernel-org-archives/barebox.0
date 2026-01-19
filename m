Delivery-date: Mon, 19 Jan 2026 12:14:03 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vhnCt-0030fj-2M
	for lore@lore.pengutronix.de;
	Mon, 19 Jan 2026 12:14:03 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vhnCs-0000DX-Np
	for lore@pengutronix.de; Mon, 19 Jan 2026 12:14:03 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=FNCbuDb781msTy595YVoDr+qu73DAEam4URWa+/x9Xk=; b=zWV/4rD49FQJcAvoIxbz9y+gDH
	K0KDbmR1Qe22CwJOavTZX5AXx4Yuy1t5BJBzeKZZLmhka2BJsjPHP+OOCUEP1KV7gwovkOWX5RuF5
	ekCvORhW4ZsiQMQzyV3mMsbYuApP+LUYDRDRNtmKy53L0po+Gghs23EKYojwpvscMAwAMUTpvPF8L
	RyM7JxMCnlphZ0+vW1vUob5Nv4dW0ZK4YvrRXXJixBWT1SC6P0I1CAICpNzlPDEaPivTxyLXuHgQW
	rd8zaTy+DMLpYGfA2OScekTjBW7+SjPnW7sHoss+kkj0NgfHgC9U4U+vtqf6A1M1A59k3GH5Ph1dQ
	aiJXHUQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vhnCU-00000001rrW-2Shv;
	Mon, 19 Jan 2026 11:13:38 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vhnCN-00000001rrA-0mvD
	for barebox@lists.infradead.org;
	Mon, 19 Jan 2026 11:13:36 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1vhnCL-00005k-By; Mon, 19 Jan 2026 12:13:29 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vhnCL-001P3S-2j;
	Mon, 19 Jan 2026 12:13:29 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vhnCL-003N2G-0G;
	Mon, 19 Jan 2026 12:13:29 +0100
Date: Mon, 19 Jan 2026 12:13:29 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@barebox.org>
Cc: barebox@lists.infradead.org
Message-ID: <aW4R2e0i8N5NF-OM@pengutronix.de>
References: <20260115120748.3433463-1-a.fatoum@barebox.org>
 <20260115120748.3433463-5-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260115120748.3433463-5-a.fatoum@barebox.org>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260119_031333_338838_AC1E9EBC 
X-CRM114-Status: GOOD (  22.97  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 4/6] common: boards: qemu: process some standard fw_cfg
 keys
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Thu, Jan 15, 2026 at 01:06:12PM +0100, Ahmad Fatoum wrote:
> While we have FW_CFG support as file system, there is a number of keys
> that precede the keys in the file system, which can be useful in some
> scenarios.
> 
> Add support for QEMU -uuid, -kernel, -initrd, -append options as well as
> a /boot/qemu_fw_cfg script that continues booting according to the latter
> three options.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
> ---
>  common/boards/Kconfig                         |   8 +
>  common/boards/Makefile                        |   1 +
>  common/boards/qemu/Makefile                   |   4 +
>  .../defaultenv-qemu_fw_cfg/boot/qemu_fw_cfg   |  12 +
>  common/boards/qemu/fw_cfg.c                   | 208 ++++++++++++++++++
>  drivers/firmware/Kconfig                      |   1 +
>  6 files changed, 234 insertions(+)
>  create mode 100644 common/boards/qemu/Makefile
>  create mode 100755 common/boards/qemu/defaultenv-qemu_fw_cfg/boot/qemu_fw_cfg
>  create mode 100644 common/boards/qemu/fw_cfg.c
> 
> diff --git a/common/boards/Kconfig b/common/boards/Kconfig
> index 74947316954b..a9e1b75a7641 100644
> --- a/common/boards/Kconfig
> +++ b/common/boards/Kconfig
> @@ -1,5 +1,13 @@
>  # SPDX-License-Identifier: GPL-2.0-only
>  
> +config BOARD_QEMU
> +	bool "Extra support for QEMU-emulated boards" if COMPILE_TEST
> +
> +config BOARD_QEMU_VIRT
> +	bool
> +	select OF_OVERLAY
> +	select BOARD_QEMU
> +
>  config BOARD_QEMU_VIRT
>  	bool
>  	select OF_OVERLAY

You likely intended to just add "select BOARD_QEMU" instead of
duplicating the option. I'll fix that while applying.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


