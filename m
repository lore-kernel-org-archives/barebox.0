Delivery-date: Tue, 14 Jan 2025 10:31:43 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tXdGx-000xi0-1W
	for lore@lore.pengutronix.de;
	Tue, 14 Jan 2025 10:31:43 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tXdGu-0001z9-SJ
	for lore@pengutronix.de; Tue, 14 Jan 2025 10:31:43 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=4wpPgPfAuonjo6CUoVFD4qE9Au2s5yl7eRxrUN3dVAE=; b=yrDdHiC7kF4OMXKXh92fgW9iek
	pgUhgmnx/XRfRNKbOBC4d82aN9jXBoMo2tnOql3bG530waf9lGAyTk91t+MI4F8poDlA26Rg2ZqDR
	FoXT1nuIqH/zDlhzVAdNkljsq+UXGBv76Q+OCC2Nsp3oNhqRS09Jcqy/PX1MhcafgVxHVX0Uv++jT
	Xv9YFuTiHmbDU4eY6O5k1ap9SM7SLiGuU29hU7mPospSuOL8lhb8D3v9xhnmBp98sakUZfJmBtnU0
	0u7awd2LF9PGihQN9E1qBtvWI2cqEyQSbPxw2o8SmapPF/cK2L6JPnFPJFoWfNw988006sYXwxiYV
	As+OQrnA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tXdGK-00000007xNT-1HiN;
	Tue, 14 Jan 2025 09:31:04 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tXdFF-00000007xCW-0uBt
	for barebox@lists.infradead.org;
	Tue, 14 Jan 2025 09:29:59 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tXdFE-0001rx-09; Tue, 14 Jan 2025 10:29:56 +0100
Message-ID: <79fbd9f8-b538-4446-8b02-d1225edb883b@pengutronix.de>
Date: Tue, 14 Jan 2025 10:29:55 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 "open list:BAREBOX" <barebox@lists.infradead.org>
References: <20250113-k3-r5-v3-0-065fcdcc28d3@pengutronix.de>
 <20250113-k3-r5-v3-17-065fcdcc28d3@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250113-k3-r5-v3-17-065fcdcc28d3@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250114_012957_739680_F7BB9B48 
X-CRM114-Status: GOOD (  17.37  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v3 17/23] scripts: k3: add script to generate cfg files
 from yaml
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 13.01.25 12:27, Sascha Hauer wrote:
> The K3 images need some config binary snippets. In U-Boot these snippets
> are generated from board specific YAML files using binman. This patch
> adds a small python which does the same for barebox. The python script
> is based on the corresponding binman code in U-Boot.
> 
> The YAML files are board specific in U-Boot, but mostly are identical
> for all boards of a specific SoC type, so we provide common SoC specific
> YAML files in barebox for now.

I thought the YAML files are only required for the Cortex-R5? This adds
a yamllint dependency to multi_v8_defconfig now:

K3CFG   arch/arm/mach-k3/combined-dm-cfg-am625.k3cfg
  K3CFG   arch/arm/mach-k3/combined-sysfw-cfg-am625.k3cfg
Traceback (most recent call last):
  File "/src/barebox-sandbox/scripts/ti-board-config.py", line 13, in <module>
Traceback (most recent call last):
  File "/src/barebox-sandbox/scripts/ti-board-config.py", line 13, in <module>
    import yamllint
ModuleNotFoundError: No module named 'yamllint'
    import yamllint
ModuleNotFoundError: No module named 'yamllint'

Thanks,
Ahmad

> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  arch/arm/mach-k3/Makefile             |  16 +
>  arch/arm/mach-k3/board-cfg-am625.yaml |  36 ++
>  arch/arm/mach-k3/pm-cfg-am625.yaml    |  12 +
>  arch/arm/mach-k3/rm-cfg-am625.yaml    | 981 ++++++++++++++++++++++++++++++++++
>  arch/arm/mach-k3/schema.yaml          | 436 +++++++++++++++
>  arch/arm/mach-k3/sec-cfg-am625.yaml   | 379 +++++++++++++
>  scripts/Makefile.lib                  |   3 +
>  scripts/ti-board-config.py            | 170 ++++++
>  8 files changed, 2033 insertions(+)
> 
> diff --git a/arch/arm/mach-k3/Makefile b/arch/arm/mach-k3/Makefile
> index 0efc1e0239..6e105095da 100644
> --- a/arch/arm/mach-k3/Makefile
> +++ b/arch/arm/mach-k3/Makefile
> @@ -1,2 +1,18 @@
>  obj-y += common.o
>  obj-pbl-$(CONFIG_MACH_K3_CORTEX_R5) += r5.o
> +
> +extra-y += combined-dm-cfg-am625.k3cfg combined-sysfw-cfg-am625.k3cfg
> +
> +$(obj)/combined-dm-cfg-am625.k3cfg: $(srctree)/arch/arm/mach-k3/schema.yaml \
> +				    $(obj)/pm-cfg-am625.yaml \
> +				    $(obj)/rm-cfg-am625.yaml \
> +				    FORCE
> +	$(call if_changed,k3_cfg)
> +
> +$(obj)/combined-sysfw-cfg-am625.k3cfg: $(srctree)/arch/arm/mach-k3/schema.yaml \
> +				       $(obj)/board-cfg-am625.yaml \
> +				       $(obj)/sec-cfg-am625.yaml \
> +				       $(obj)/pm-cfg-am625.yaml \
> +				       $(obj)/rm-cfg-am625.yaml \
> +				       FORCE
> +	$(call if_changed,k3_cfg)
> diff --git a/arch/arm/mach-k3/board-cfg-am625.yaml b/arch/arm/mach-k3/board-cfg-am625.yaml
> new file mode 100644
> index 0000000000..45c89dd15f
> --- /dev/null
> +++ b/arch/arm/mach-k3/board-cfg-am625.yaml
> @@ -0,0 +1,36 @@
> +# SPDX-License-Identifier: GPL-2.0+
> +# Copyright (C) 2022-2023 Texas Instruments Incorporated - https://www.ti.com/
> +#
> +# Board configuration for AM62
> +#
> +
> +---
> +
> +board-cfg:
> +    rev:
> +        boardcfg_abi_maj: 0x0
> +        boardcfg_abi_min: 0x1
> +    control:
> +        subhdr:
> +            magic: 0xC1D3
> +            size: 7
> +        main_isolation_enable: 0x5A
> +        main_isolation_hostid: 0x2
> +    secproxy:
> +        subhdr:
> +            magic: 0x1207
> +            size: 7
> +        scaling_factor: 0x1
> +        scaling_profile: 0x1
> +        disable_main_nav_secure_proxy: 0
> +    msmc:
> +        subhdr:
> +            magic: 0xA5C3
> +            size: 5
> +        msmc_cache_size: 0x0
> +    debug_cfg:
> +        subhdr:
> +            magic: 0x020C
> +            size: 8
> +        trace_dst_enables: 0x00
> +        trace_src_enables: 0x00
> diff --git a/arch/arm/mach-k3/pm-cfg-am625.yaml b/arch/arm/mach-k3/pm-cfg-am625.yaml
> new file mode 100644
> index 0000000000..9853a25eb8
> --- /dev/null
> +++ b/arch/arm/mach-k3/pm-cfg-am625.yaml
> @@ -0,0 +1,12 @@
> +# SPDX-License-Identifier: GPL-2.0+
> +# Copyright (C) 2022-2023 Texas Instruments Incorporated - https://www.ti.com/
> +#
> +# Power management configuration for AM62
> +#
> +
> +---
> +
> +pm-cfg:
> +    rev:
> +        boardcfg_abi_maj: 0x0
> +        boardcfg_abi_min: 0x1
> diff --git a/arch/arm/mach-k3/rm-cfg-am625.yaml b/arch/arm/mach-k3/rm-cfg-am625.yaml
> new file mode 100644
> index 0000000000..725f7c83f0
> --- /dev/null
> +++ b/arch/arm/mach-k3/rm-cfg-am625.yaml
> @@ -0,0 +1,981 @@
> +# SPDX-License-Identifier: GPL-2.0+
> +# Copyright (C) 2022-2023 Texas Instruments Incorporated - https://www.ti.com/
> +#
> +# Resource management configuration for AM62X
> +#
> +
> +---
> +
> +rm-cfg:
> +    rm_boardcfg:
> +        rev:
> +            boardcfg_abi_maj: 0x0
> +            boardcfg_abi_min: 0x1
> +        host_cfg:
> +            subhdr:
> +                magic: 0x4C41
> +                size: 356
> +            host_cfg_entries:
> +                -  # 1
> +                    host_id: 12
> +                    allowed_atype: 0x2A
> +                    allowed_qos: 0xAAAA
> +                    allowed_orderid: 0xAAAAAAAA
> +                    allowed_priority: 0xAAAA
> +                    allowed_sched_priority: 0xAA
> +                -  # 2
> +                    host_id: 30
> +                    allowed_atype: 0x2A
> +                    allowed_qos: 0xAAAA
> +                    allowed_orderid: 0xAAAAAAAA
> +                    allowed_priority: 0xAAAA
> +                    allowed_sched_priority: 0xAA
> +                -  # 3
> +                    host_id: 36
> +                    allowed_atype: 0x2A
> +                    allowed_qos: 0xAAAA
> +                    allowed_orderid: 0xAAAAAAAA
> +                    allowed_priority: 0xAAAA
> +                    allowed_sched_priority: 0xAA
> +                -  # 4
> +                    host_id: 0
> +                    allowed_atype: 0
> +                    allowed_qos: 0
> +                    allowed_orderid: 0
> +                    allowed_priority: 0
> +                    allowed_sched_priority: 0
> +                -  # 5
> +                    host_id: 0
> +                    allowed_atype: 0
> +                    allowed_qos: 0
> +                    allowed_orderid: 0
> +                    allowed_priority: 0
> +                    allowed_sched_priority: 0
> +                -  # 6
> +                    host_id: 0
> +                    allowed_atype: 0
> +                    allowed_qos: 0
> +                    allowed_orderid: 0
> +                    allowed_priority: 0
> +                    allowed_sched_priority: 0
> +                -  # 7
> +                    host_id: 0
> +                    allowed_atype: 0
> +                    allowed_qos: 0
> +                    allowed_orderid: 0
> +                    allowed_priority: 0
> +                    allowed_sched_priority: 0
> +                -  # 8
> +                    host_id: 0
> +                    allowed_atype: 0
> +                    allowed_qos: 0
> +                    allowed_orderid: 0
> +                    allowed_priority: 0
> +                    allowed_sched_priority: 0
> +                -  # 9
> +                    host_id: 0
> +                    allowed_atype: 0
> +                    allowed_qos: 0
> +                    allowed_orderid: 0
> +                    allowed_priority: 0
> +                    allowed_sched_priority: 0
> +                -  # 10
> +                    host_id: 0
> +                    allowed_atype: 0
> +                    allowed_qos: 0
> +                    allowed_orderid: 0
> +                    allowed_priority: 0
> +                    allowed_sched_priority: 0
> +                -  # 11
> +                    host_id: 0
> +                    allowed_atype: 0
> +                    allowed_qos: 0
> +                    allowed_orderid: 0
> +                    allowed_priority: 0
> +                    allowed_sched_priority: 0
> +                -  # 12
> +                    host_id: 0
> +                    allowed_atype: 0
> +                    allowed_qos: 0
> +                    allowed_orderid: 0
> +                    allowed_priority: 0
> +                    allowed_sched_priority: 0
> +                -  # 13
> +                    host_id: 0
> +                    allowed_atype: 0
> +                    allowed_qos: 0
> +                    allowed_orderid: 0
> +                    allowed_priority: 0
> +                    allowed_sched_priority: 0
> +                -  # 14
> +                    host_id: 0
> +                    allowed_atype: 0
> +                    allowed_qos: 0
> +                    allowed_orderid: 0
> +                    allowed_priority: 0
> +                    allowed_sched_priority: 0
> +                -  # 15
> +                    host_id: 0
> +                    allowed_atype: 0
> +                    allowed_qos: 0
> +                    allowed_orderid: 0
> +                    allowed_priority: 0
> +                    allowed_sched_priority: 0
> +                -  # 16
> +                    host_id: 0
> +                    allowed_atype: 0
> +                    allowed_qos: 0
> +                    allowed_orderid: 0
> +                    allowed_priority: 0
> +                    allowed_sched_priority: 0
> +                -  # 17
> +                    host_id: 0
> +                    allowed_atype: 0
> +                    allowed_qos: 0
> +                    allowed_orderid: 0
> +                    allowed_priority: 0
> +                    allowed_sched_priority: 0
> +                -  # 18
> +                    host_id: 0
> +                    allowed_atype: 0
> +                    allowed_qos: 0
> +                    allowed_orderid: 0
> +                    allowed_priority: 0
> +                    allowed_sched_priority: 0
> +                -  # 19
> +                    host_id: 0
> +                    allowed_atype: 0
> +                    allowed_qos: 0
> +                    allowed_orderid: 0
> +                    allowed_priority: 0
> +                    allowed_sched_priority: 0
> +                -  # 20
> +                    host_id: 0
> +                    allowed_atype: 0
> +                    allowed_qos: 0
> +                    allowed_orderid: 0
> +                    allowed_priority: 0
> +                    allowed_sched_priority: 0
> +                -  # 21
> +                    host_id: 0
> +                    allowed_atype: 0
> +                    allowed_qos: 0
> +                    allowed_orderid: 0
> +                    allowed_priority: 0
> +                    allowed_sched_priority: 0
> +                -  # 22
> +                    host_id: 0
> +                    allowed_atype: 0
> +                    allowed_qos: 0
> +                    allowed_orderid: 0
> +                    allowed_priority: 0
> +                    allowed_sched_priority: 0
> +                -  # 23
> +                    host_id: 0
> +                    allowed_atype: 0
> +                    allowed_qos: 0
> +                    allowed_orderid: 0
> +                    allowed_priority: 0
> +                    allowed_sched_priority: 0
> +                -  # 24
> +                    host_id: 0
> +                    allowed_atype: 0
> +                    allowed_qos: 0
> +                    allowed_orderid: 0
> +                    allowed_priority: 0
> +                    allowed_sched_priority: 0
> +                -  # 25
> +                    host_id: 0
> +                    allowed_atype: 0
> +                    allowed_qos: 0
> +                    allowed_orderid: 0
> +                    allowed_priority: 0
> +                    allowed_sched_priority: 0
> +                -  # 26
> +                    host_id: 0
> +                    allowed_atype: 0
> +                    allowed_qos: 0
> +                    allowed_orderid: 0
> +                    allowed_priority: 0
> +                    allowed_sched_priority: 0
> +                -  # 27
> +                    host_id: 0
> +                    allowed_atype: 0
> +                    allowed_qos: 0
> +                    allowed_orderid: 0
> +                    allowed_priority: 0
> +                    allowed_sched_priority: 0
> +                -  # 28
> +                    host_id: 0
> +                    allowed_atype: 0
> +                    allowed_qos: 0
> +                    allowed_orderid: 0
> +                    allowed_priority: 0
> +                    allowed_sched_priority: 0
> +                -  # 29
> +                    host_id: 0
> +                    allowed_atype: 0
> +                    allowed_qos: 0
> +                    allowed_orderid: 0
> +                    allowed_priority: 0
> +                    allowed_sched_priority: 0
> +                -  # 30
> +                    host_id: 0
> +                    allowed_atype: 0
> +                    allowed_qos: 0
> +                    allowed_orderid: 0
> +                    allowed_priority: 0
> +                    allowed_sched_priority: 0
> +                -  # 31
> +                    host_id: 0
> +                    allowed_atype: 0
> +                    allowed_qos: 0
> +                    allowed_orderid: 0
> +                    allowed_priority: 0
> +                    allowed_sched_priority: 0
> +                -  # 32
> +                    host_id: 0
> +                    allowed_atype: 0
> +                    allowed_qos: 0
> +                    allowed_orderid: 0
> +                    allowed_priority: 0
> +                    allowed_sched_priority: 0
> +        resasg:
> +            subhdr:
> +                magic: 0x7B25
> +                size: 8
> +            resasg_entries_size: 976
> +            reserved: 0
> +    resasg_entries:
> +        -
> +            start_resource: 0
> +            num_resource: 16
> +            type: 64
> +            host_id: 12
> +            reserved: 0
> +        -
> +            start_resource: 16
> +            num_resource: 4
> +            type: 64
> +            host_id: 35
> +            reserved: 0
> +        -
> +            start_resource: 16
> +            num_resource: 4
> +            type: 64
> +            host_id: 36
> +            reserved: 0
> +        -
> +            start_resource: 20
> +            num_resource: 22
> +            type: 64
> +            host_id: 30
> +            reserved: 0
> +        -
> +            start_resource: 0
> +            num_resource: 16
> +            type: 192
> +            host_id: 12
> +            reserved: 0
> +        -
> +            start_resource: 34
> +            num_resource: 2
> +            type: 192
> +            host_id: 30
> +            reserved: 0
> +        -
> +            start_resource: 0
> +            num_resource: 2
> +            type: 320
> +            host_id: 12
> +            reserved: 0
> +        -
> +            start_resource: 2
> +            num_resource: 2
> +            type: 320
> +            host_id: 35
> +            reserved: 0
> +        -
> +            start_resource: 2
> +            num_resource: 2
> +            type: 320
> +            host_id: 36
> +            reserved: 0
> +        -
> +            start_resource: 4
> +            num_resource: 4
> +            type: 320
> +            host_id: 30
> +            reserved: 0
> +        -
> +            start_resource: 0
> +            num_resource: 26
> +            type: 384
> +            host_id: 128
> +            reserved: 0
> +        -
> +            start_resource: 50176
> +            num_resource: 164
> +            type: 1666
> +            host_id: 128
> +            reserved: 0
> +        -
> +            start_resource: 0
> +            num_resource: 1
> +            type: 1667
> +            host_id: 128
> +            reserved: 0
> +        -
> +            start_resource: 0
> +            num_resource: 18
> +            type: 1677
> +            host_id: 12
> +            reserved: 0
> +        -
> +            start_resource: 18
> +            num_resource: 6
> +            type: 1677
> +            host_id: 35
> +            reserved: 0
> +        -
> +            start_resource: 18
> +            num_resource: 6
> +            type: 1677
> +            host_id: 36
> +            reserved: 0
> +        -
> +            start_resource: 24
> +            num_resource: 2
> +            type: 1677
> +            host_id: 30
> +            reserved: 0
> +        -
> +            start_resource: 26
> +            num_resource: 6
> +            type: 1677
> +            host_id: 128
> +            reserved: 0
> +        -
> +            start_resource: 54
> +            num_resource: 18
> +            type: 1678
> +            host_id: 12
> +            reserved: 0
> +        -
> +            start_resource: 72
> +            num_resource: 6
> +            type: 1678
> +            host_id: 35
> +            reserved: 0
> +        -
> +            start_resource: 72
> +            num_resource: 6
> +            type: 1678
> +            host_id: 36
> +            reserved: 0
> +        -
> +            start_resource: 78
> +            num_resource: 2
> +            type: 1678
> +            host_id: 30
> +            reserved: 0
> +        -
> +            start_resource: 80
> +            num_resource: 2
> +            type: 1678
> +            host_id: 128
> +            reserved: 0
> +        -
> +            start_resource: 32
> +            num_resource: 12
> +            type: 1679
> +            host_id: 12
> +            reserved: 0
> +        -
> +            start_resource: 44
> +            num_resource: 6
> +            type: 1679
> +            host_id: 35
> +            reserved: 0
> +        -
> +            start_resource: 44
> +            num_resource: 6
> +            type: 1679
> +            host_id: 36
> +            reserved: 0
> +        -
> +            start_resource: 50
> +            num_resource: 2
> +            type: 1679
> +            host_id: 30
> +            reserved: 0
> +        -
> +            start_resource: 52
> +            num_resource: 2
> +            type: 1679
> +            host_id: 128
> +            reserved: 0
> +        -
> +            start_resource: 0
> +            num_resource: 18
> +            type: 1696
> +            host_id: 12
> +            reserved: 0
> +        -
> +            start_resource: 18
> +            num_resource: 6
> +            type: 1696
> +            host_id: 35
> +            reserved: 0
> +        -
> +            start_resource: 18
> +            num_resource: 6
> +            type: 1696
> +            host_id: 36
> +            reserved: 0
> +        -
> +            start_resource: 24
> +            num_resource: 2
> +            type: 1696
> +            host_id: 30
> +            reserved: 0
> +        -
> +            start_resource: 26
> +            num_resource: 6
> +            type: 1696
> +            host_id: 128
> +            reserved: 0
> +        -
> +            start_resource: 0
> +            num_resource: 18
> +            type: 1697
> +            host_id: 12
> +            reserved: 0
> +        -
> +            start_resource: 18
> +            num_resource: 6
> +            type: 1697
> +            host_id: 35
> +            reserved: 0
> +        -
> +            start_resource: 18
> +            num_resource: 6
> +            type: 1697
> +            host_id: 36
> +            reserved: 0
> +        -
> +            start_resource: 24
> +            num_resource: 2
> +            type: 1697
> +            host_id: 30
> +            reserved: 0
> +        -
> +            start_resource: 26
> +            num_resource: 2
> +            type: 1697
> +            host_id: 128
> +            reserved: 0
> +        -
> +            start_resource: 0
> +            num_resource: 12
> +            type: 1698
> +            host_id: 12
> +            reserved: 0
> +        -
> +            start_resource: 12
> +            num_resource: 6
> +            type: 1698
> +            host_id: 35
> +            reserved: 0
> +        -
> +            start_resource: 12
> +            num_resource: 6
> +            type: 1698
> +            host_id: 36
> +            reserved: 0
> +        -
> +            start_resource: 18
> +            num_resource: 2
> +            type: 1698
> +            host_id: 30
> +            reserved: 0
> +        -
> +            start_resource: 20
> +            num_resource: 2
> +            type: 1698
> +            host_id: 128
> +            reserved: 0
> +        -
> +            start_resource: 5
> +            num_resource: 35
> +            type: 1802
> +            host_id: 12
> +            reserved: 0
> +        -
> +            start_resource: 44
> +            num_resource: 36
> +            type: 1802
> +            host_id: 35
> +            reserved: 0
> +        -
> +            start_resource: 44
> +            num_resource: 36
> +            type: 1802
> +            host_id: 36
> +            reserved: 0
> +        -
> +            start_resource: 168
> +            num_resource: 8
> +            type: 1802
> +            host_id: 30
> +            reserved: 0
> +        -
> +            start_resource: 13
> +            num_resource: 512
> +            type: 1805
> +            host_id: 12
> +            reserved: 0
> +        -
> +            start_resource: 525
> +            num_resource: 256
> +            type: 1805
> +            host_id: 35
> +            reserved: 0
> +        -
> +            start_resource: 525
> +            num_resource: 256
> +            type: 1805
> +            host_id: 36
> +            reserved: 0
> +        -
> +            start_resource: 781
> +            num_resource: 128
> +            type: 1805
> +            host_id: 30
> +            reserved: 0
> +        -
> +            start_resource: 909
> +            num_resource: 627
> +            type: 1805
> +            host_id: 128
> +            reserved: 0
> +        -
> +            start_resource: 0
> +            num_resource: 1024
> +            type: 1807
> +            host_id: 128
> +            reserved: 0
> +        -
> +            start_resource: 4096
> +            num_resource: 29
> +            type: 1808
> +            host_id: 128
> +            reserved: 0
> +        -
> +            start_resource: 4608
> +            num_resource: 99
> +            type: 1809
> +            host_id: 128
> +            reserved: 0
> +        -
> +            start_resource: 5120
> +            num_resource: 24
> +            type: 1810
> +            host_id: 128
> +            reserved: 0
> +        -
> +            start_resource: 5632
> +            num_resource: 51
> +            type: 1811
> +            host_id: 128
> +            reserved: 0
> +        -
> +            start_resource: 6144
> +            num_resource: 51
> +            type: 1812
> +            host_id: 128
> +            reserved: 0
> +        -
> +            start_resource: 6656
> +            num_resource: 51
> +            type: 1813
> +            host_id: 128
> +            reserved: 0
> +        -
> +            start_resource: 8192
> +            num_resource: 32
> +            type: 1814
> +            host_id: 128
> +            reserved: 0
> +        -
> +            start_resource: 8704
> +            num_resource: 32
> +            type: 1815
> +            host_id: 128
> +            reserved: 0
> +        -
> +            start_resource: 9216
> +            num_resource: 32
> +            type: 1816
> +            host_id: 128
> +            reserved: 0
> +        -
> +            start_resource: 9728
> +            num_resource: 22
> +            type: 1817
> +            host_id: 128
> +            reserved: 0
> +        -
> +            start_resource: 10240
> +            num_resource: 22
> +            type: 1818
> +            host_id: 128
> +            reserved: 0
> +        -
> +            start_resource: 10752
> +            num_resource: 22
> +            type: 1819
> +            host_id: 128
> +            reserved: 0
> +        -
> +            start_resource: 11264
> +            num_resource: 28
> +            type: 1820
> +            host_id: 128
> +            reserved: 0
> +        -
> +            start_resource: 11776
> +            num_resource: 28
> +            type: 1821
> +            host_id: 128
> +            reserved: 0
> +        -
> +            start_resource: 12288
> +            num_resource: 28
> +            type: 1822
> +            host_id: 128
> +            reserved: 0
> +        -
> +            start_resource: 0
> +            num_resource: 1
> +            type: 1923
> +            host_id: 128
> +            reserved: 0
> +        -
> +            start_resource: 0
> +            num_resource: 10
> +            type: 1936
> +            host_id: 12
> +            reserved: 0
> +        -
> +            start_resource: 10
> +            num_resource: 3
> +            type: 1936
> +            host_id: 35
> +            reserved: 0
> +        -
> +            start_resource: 10
> +            num_resource: 3
> +            type: 1936
> +            host_id: 36
> +            reserved: 0
> +        -
> +            start_resource: 13
> +            num_resource: 3
> +            type: 1936
> +            host_id: 30
> +            reserved: 0
> +        -
> +            start_resource: 16
> +            num_resource: 3
> +            type: 1936
> +            host_id: 128
> +            reserved: 0
> +        -
> +            start_resource: 19
> +            num_resource: 64
> +            type: 1937
> +            host_id: 12
> +            reserved: 0
> +        -
> +            start_resource: 19
> +            num_resource: 64
> +            type: 1937
> +            host_id: 36
> +            reserved: 0
> +        -
> +            start_resource: 83
> +            num_resource: 8
> +            type: 1938
> +            host_id: 12
> +            reserved: 0
> +        -
> +            start_resource: 91
> +            num_resource: 8
> +            type: 1939
> +            host_id: 12
> +            reserved: 0
> +        -
> +            start_resource: 99
> +            num_resource: 10
> +            type: 1942
> +            host_id: 12
> +            reserved: 0
> +        -
> +            start_resource: 109
> +            num_resource: 3
> +            type: 1942
> +            host_id: 35
> +            reserved: 0
> +        -
> +            start_resource: 109
> +            num_resource: 3
> +            type: 1942
> +            host_id: 36
> +            reserved: 0
> +        -
> +            start_resource: 112
> +            num_resource: 3
> +            type: 1942
> +            host_id: 30
> +            reserved: 0
> +        -
> +            start_resource: 115
> +            num_resource: 3
> +            type: 1942
> +            host_id: 128
> +            reserved: 0
> +        -
> +            start_resource: 118
> +            num_resource: 16
> +            type: 1943
> +            host_id: 12
> +            reserved: 0
> +        -
> +            start_resource: 118
> +            num_resource: 16
> +            type: 1943
> +            host_id: 36
> +            reserved: 0
> +        -
> +            start_resource: 134
> +            num_resource: 8
> +            type: 1944
> +            host_id: 12
> +            reserved: 0
> +        -
> +            start_resource: 134
> +            num_resource: 8
> +            type: 1945
> +            host_id: 12
> +            reserved: 0
> +        -
> +            start_resource: 142
> +            num_resource: 8
> +            type: 1946
> +            host_id: 12
> +            reserved: 0
> +        -
> +            start_resource: 142
> +            num_resource: 8
> +            type: 1947
> +            host_id: 12
> +            reserved: 0
> +        -
> +            start_resource: 0
> +            num_resource: 10
> +            type: 1955
> +            host_id: 12
> +            reserved: 0
> +        -
> +            start_resource: 10
> +            num_resource: 3
> +            type: 1955
> +            host_id: 35
> +            reserved: 0
> +        -
> +            start_resource: 10
> +            num_resource: 3
> +            type: 1955
> +            host_id: 36
> +            reserved: 0
> +        -
> +            start_resource: 13
> +            num_resource: 3
> +            type: 1955
> +            host_id: 30
> +            reserved: 0
> +        -
> +            start_resource: 16
> +            num_resource: 3
> +            type: 1955
> +            host_id: 128
> +            reserved: 0
> +        -
> +            start_resource: 19
> +            num_resource: 8
> +            type: 1956
> +            host_id: 12
> +            reserved: 0
> +        -
> +            start_resource: 19
> +            num_resource: 8
> +            type: 1956
> +            host_id: 36
> +            reserved: 0
> +        -
> +            start_resource: 27
> +            num_resource: 1
> +            type: 1957
> +            host_id: 12
> +            reserved: 0
> +        -
> +            start_resource: 28
> +            num_resource: 1
> +            type: 1958
> +            host_id: 12
> +            reserved: 0
> +        -
> +            start_resource: 0
> +            num_resource: 10
> +            type: 1961
> +            host_id: 12
> +            reserved: 0
> +        -
> +            start_resource: 10
> +            num_resource: 3
> +            type: 1961
> +            host_id: 35
> +            reserved: 0
> +        -
> +            start_resource: 10
> +            num_resource: 3
> +            type: 1961
> +            host_id: 36
> +            reserved: 0
> +        -
> +            start_resource: 13
> +            num_resource: 3
> +            type: 1961
> +            host_id: 30
> +            reserved: 0
> +        -
> +            start_resource: 16
> +            num_resource: 3
> +            type: 1961
> +            host_id: 128
> +            reserved: 0
> +        -
> +            start_resource: 0
> +            num_resource: 10
> +            type: 1962
> +            host_id: 12
> +            reserved: 0
> +        -
> +            start_resource: 10
> +            num_resource: 3
> +            type: 1962
> +            host_id: 35
> +            reserved: 0
> +        -
> +            start_resource: 10
> +            num_resource: 3
> +            type: 1962
> +            host_id: 36
> +            reserved: 0
> +        -
> +            start_resource: 13
> +            num_resource: 3
> +            type: 1962
> +            host_id: 30
> +            reserved: 0
> +        -
> +            start_resource: 16
> +            num_resource: 3
> +            type: 1962
> +            host_id: 128
> +            reserved: 0
> +        -
> +            start_resource: 19
> +            num_resource: 1
> +            type: 1963
> +            host_id: 12
> +            reserved: 0
> +        -
> +            start_resource: 19
> +            num_resource: 1
> +            type: 1963
> +            host_id: 36
> +            reserved: 0
> +        -
> +            start_resource: 19
> +            num_resource: 16
> +            type: 1964
> +            host_id: 12
> +            reserved: 0
> +        -
> +            start_resource: 19
> +            num_resource: 16
> +            type: 1964
> +            host_id: 36
> +            reserved: 0
> +        -
> +            start_resource: 20
> +            num_resource: 1
> +            type: 1965
> +            host_id: 12
> +            reserved: 0
> +        -
> +            start_resource: 35
> +            num_resource: 8
> +            type: 1966
> +            host_id: 12
> +            reserved: 0
> +        -
> +            start_resource: 21
> +            num_resource: 1
> +            type: 1967
> +            host_id: 12
> +            reserved: 0
> +        -
> +            start_resource: 35
> +            num_resource: 8
> +            type: 1968
> +            host_id: 12
> +            reserved: 0
> +        -
> +            start_resource: 22
> +            num_resource: 1
> +            type: 1969
> +            host_id: 12
> +            reserved: 0
> +        -
> +            start_resource: 43
> +            num_resource: 8
> +            type: 1970
> +            host_id: 12
> +            reserved: 0
> +        -
> +            start_resource: 23
> +            num_resource: 1
> +            type: 1971
> +            host_id: 12
> +            reserved: 0
> +        -
> +            start_resource: 43
> +            num_resource: 8
> +            type: 1972
> +            host_id: 12
> +            reserved: 0
> +        -
> +            start_resource: 0
> +            num_resource: 1
> +            type: 2112
> +            host_id: 128
> +            reserved: 0
> +        -
> +            start_resource: 2
> +            num_resource: 2
> +            type: 2122
> +            host_id: 12
> +            reserved: 0
> diff --git a/arch/arm/mach-k3/schema.yaml b/arch/arm/mach-k3/schema.yaml
> new file mode 100644
> index 0000000000..c8dd2e79e7
> --- /dev/null
> +++ b/arch/arm/mach-k3/schema.yaml
> @@ -0,0 +1,436 @@
> +# SPDX-License-Identifier: GPL-2.0+
> +# Copyright (C) 2022-2023 Texas Instruments Incorporated - https://www.ti.com/
> +#
> +# Config schema for TI K3 devices
> +#
> +
> +---
> +
> +definitions:
> +    u8:
> +        type: integer
> +        minimum: 0
> +        maximum: 0xff
> +    u16:
> +        type: integer
> +        minimum: 0
> +        maximum: 0xffff
> +    u32:
> +        type: integer
> +        minimum: 0
> +        maximum: 0xffffffff
> +
> +
> +
> +type: object
> +properties:
> +    pm-cfg:
> +        type: object
> +        properties:
> +            rev:
> +                type: object
> +                properties:
> +                    boardcfg_abi_maj:
> +                        $ref: "#/definitions/u8"
> +                    boardcfg_abi_min:
> +                        $ref: "#/definitions/u8"
> +    board-cfg:
> +        type: object
> +        properties:
> +            rev:
> +                type: object
> +                properties:
> +                    boardcfg_abi_maj:
> +                        $ref: "#/definitions/u8"
> +                    boardcfg_abi_min:
> +                        $ref: "#/definitions/u8"
> +            control:
> +                type: object
> +                properties:
> +                    subhdr:
> +                        type: object
> +                        properties:
> +                            magic:
> +                                $ref: "#/definitions/u16"
> +                            size:
> +                                $ref: "#/definitions/u16"
> +                    main_isolation_enable:
> +                        $ref: "#/definitions/u8"
> +                    main_isolation_hostid:
> +                        $ref: "#/definitions/u16"
> +
> +
> +            secproxy:
> +                type: object
> +                properties:
> +                    subhdr:
> +                        type: object
> +                        properties:
> +                            magic:
> +                                $ref: "#/definitions/u16"
> +                            size:
> +                                $ref: "#/definitions/u16"
> +                    scaling_factor:
> +                        $ref: "#/definitions/u8"
> +                    scaling_profile:
> +                        $ref: "#/definitions/u8"
> +                    disable_main_nav_secure_proxy:
> +                        $ref: "#/definitions/u8"
> +
> +            msmc:
> +                type: object
> +                properties:
> +                    subhdr:
> +                        type: object
> +                        properties:
> +                            magic:
> +                                $ref: "#/definitions/u16"
> +                            size:
> +                                $ref: "#/definitions/u16"
> +                    msmc_cache_size:
> +                        $ref: "#/definitions/u8"
> +            debug_cfg:
> +                type: object
> +                properties:
> +                    subhdr:
> +                        type: object
> +                        properties:
> +                            magic:
> +                                $ref: "#/definitions/u16"
> +                            size:
> +                                $ref: "#/definitions/u16"
> +                    trace_dst_enables:
> +                        $ref: "#/definitions/u16"
> +                    trace_src_enables:
> +                        $ref: "#/definitions/u16"
> +
> +    sec-cfg:
> +        type: object
> +        properties:
> +            rev:
> +                type: object
> +                properties:
> +                    boardcfg_abi_maj:
> +                        $ref: "#/definitions/u8"
> +                    boardcfg_abi_min:
> +                        $ref: "#/definitions/u8"
> +
> +            processor_acl_list:
> +                type: object
> +                properties:
> +                    subhdr:
> +                        type: object
> +                        properties:
> +                            magic:
> +                                $ref: "#/definitions/u16"
> +                            size:
> +                                $ref: "#/definitions/u16"
> +                    proc_acl_entries:
> +                        type: array
> +                        minItems: 32
> +                        maxItems: 32
> +                        items:
> +                            type: object
> +                            properties:
> +                                processor_id:
> +                                    $ref: "#/definitions/u8"
> +                                proc_access_master:
> +                                    $ref: "#/definitions/u8"
> +                                proc_access_secondary:
> +                                    type: array
> +                                    minItems: 3
> +                                    maxItems: 3
> +                                    items:
> +                                        $ref: "#/definitions/u8"
> +            host_hierarchy:
> +                type: object
> +                properties:
> +                    subhdr:
> +                        type: object
> +                        properties:
> +                            magic:
> +                                $ref: "#/definitions/u16"
> +                            size:
> +                                $ref: "#/definitions/u16"
> +                    host_hierarchy_entries:
> +                        type: array
> +                        minItems: 32
> +                        maxItems: 32
> +                        items:
> +                            type: object
> +                            properties:
> +                                host_id:
> +                                    $ref: "#/definitions/u8"
> +                                supervisor_host_id:
> +                                    $ref: "#/definitions/u8"
> +
> +            otp_config:
> +                type: object
> +                properties:
> +                    subhdr:
> +                        type: object
> +                        properties:
> +                            magic:
> +                                $ref: "#/definitions/u16"
> +                            size:
> +                                $ref: "#/definitions/u16"
> +                    otp_entry:
> +                        type: array
> +                        minItems: 32
> +                        maxItems: 32
> +                        items:
> +                            type: object
> +                            properties:
> +                                host_id:
> +                                    $ref: "#/definitions/u8"
> +                                host_perms:
> +                                    $ref: "#/definitions/u8"
> +                    write_host_id:
> +                        $ref: "#/definitions/u8"
> +
> +            dkek_config:
> +                type: object
> +                properties:
> +                    subhdr:
> +                        type: object
> +                        properties:
> +                            magic:
> +                                $ref: "#/definitions/u16"
> +                            size:
> +                                $ref: "#/definitions/u16"
> +                    allowed_hosts:
> +                        type: array
> +                        minItems: 4
> +                        maxItems: 4
> +                        items:
> +                            $ref: "#/definitions/u8"
> +                    allow_dkek_export_tisci:
> +                        $ref: "#/definitions/u8"
> +                    rsvd:
> +                        type: array
> +                        minItems: 3
> +                        maxItems: 3
> +                        items:
> +                            $ref: "#/definitions/u8"
> +
> +            sa2ul_cfg:
> +                type: object
> +                properties:
> +                    subhdr:
> +                        type: object
> +                        properties:
> +                            magic:
> +                                $ref: "#/definitions/u16"
> +                            size:
> +                                $ref: "#/definitions/u16"
> +                    rsvd:
> +                        type: array
> +                        minItems: 2
> +                        maxItems: 4
> +                        items:
> +                            $ref: "#/definitions/u8"
> +                    enable_saul_psil_global_config_writes:
> +                        $ref: "#/definitions/u8"
> +                    auth_resource_owner:
> +                        $ref: "#/definitions/u8"
> +
> +            sec_dbg_config:
> +                type: object
> +                properties:
> +                    subhdr:
> +                        type: object
> +                        properties:
> +                            magic:
> +                                $ref: "#/definitions/u16"
> +                            size:
> +                                $ref: "#/definitions/u16"
> +                    allow_jtag_unlock:
> +                        $ref: "#/definitions/u8"
> +                    allow_wildcard_unlock:
> +                        $ref: "#/definitions/u8"
> +                    allowed_debug_level_rsvd:
> +                        $ref: "#/definitions/u8"
> +                    rsvd:
> +                        $ref: "#/definitions/u8"
> +                    min_cert_rev:
> +                        $ref: "#/definitions/u32"
> +                    jtag_unlock_hosts:
> +                        type: array
> +                        minItems: 4
> +                        maxItems: 4
> +                        items:
> +                            $ref: "#/definitions/u8"
> +
> +
> +            sec_handover_cfg:
> +                type: object
> +                properties:
> +                    subhdr:
> +                        type: object
> +                        properties:
> +                            magic:
> +                                $ref: "#/definitions/u16"
> +                            size:
> +                                $ref: "#/definitions/u16"
> +                    handover_msg_sender:
> +                        $ref: "#/definitions/u8"
> +                    handover_to_host_id:
> +                        $ref: "#/definitions/u8"
> +                    rsvd:
> +                        type: array
> +                        minItems: 4
> +                        maxItems: 4
> +                        items:
> +                            $ref: "#/definitions/u8"
> +
> +    rm-cfg:
> +        type: object
> +        properties:
> +            rm_boardcfg:
> +                type: object
> +                properties:
> +                    rev:
> +                        type: object
> +                        properties:
> +                            boardcfg_abi_maj:
> +                                $ref: "#/definitions/u8"
> +                            boardcfg_abi_min:
> +                                $ref: "#/definitions/u8"
> +
> +                    host_cfg:
> +                        type: object
> +                        properties:
> +                            subhdr:
> +                                type: object
> +                                properties:
> +                                    magic:
> +                                        $ref: "#/definitions/u16"
> +                                    size:
> +                                        $ref: "#/definitions/u16"
> +                            host_cfg_entries:
> +                                type: array
> +                                minItems: 0
> +                                maxItems: 32
> +                                items:
> +                                    type: object
> +                                    properties:
> +                                        host_id:
> +                                            $ref: "#/definitions/u8"
> +                                        allowed_atype:
> +                                            $ref: "#/definitions/u8"
> +                                        allowed_qos:
> +                                            $ref: "#/definitions/u16"
> +                                        allowed_orderid:
> +                                            $ref: "#/definitions/u32"
> +                                        allowed_priority:
> +                                            $ref: "#/definitions/u16"
> +                                        allowed_sched_priority:
> +                                            $ref: "#/definitions/u8"
> +                    resasg:
> +                        type: object
> +                        properties:
> +                            subhdr:
> +                                type: object
> +                                properties:
> +                                    magic:
> +                                        $ref: "#/definitions/u16"
> +                                    size:
> +                                        $ref: "#/definitions/u16"
> +                            resasg_entries_size:
> +                                        $ref: "#/definitions/u16"
> +                            reserved:
> +                                        $ref: "#/definitions/u16"
> +
> +            resasg_entries:
> +                type: array
> +                minItems: 0
> +                maxItems: 468
> +                items:
> +                    type: object
> +                    properties:
> +                        start_resource:
> +                            $ref: "#/definitions/u16"
> +                        num_resource:
> +                            $ref: "#/definitions/u16"
> +                        type:
> +                            $ref: "#/definitions/u16"
> +                        host_id:
> +                            $ref: "#/definitions/u8"
> +                        reserved:
> +                            $ref: "#/definitions/u8"
> +
> +    tifs-rm-cfg:
> +        type: object
> +        properties:
> +            rm_boardcfg:
> +                type: object
> +                properties:
> +                    rev:
> +                        type: object
> +                        properties:
> +                            boardcfg_abi_maj:
> +                                $ref: "#/definitions/u8"
> +                            boardcfg_abi_min:
> +                                $ref: "#/definitions/u8"
> +
> +                    host_cfg:
> +                        type: object
> +                        properties:
> +                            subhdr:
> +                                type: object
> +                                properties:
> +                                    magic:
> +                                        $ref: "#/definitions/u16"
> +                                    size:
> +                                        $ref: "#/definitions/u16"
> +                            host_cfg_entries:
> +                                type: array
> +                                minItems: 0
> +                                maxItems: 32
> +                                items:
> +                                    type: object
> +                                    properties:
> +                                        host_id:
> +                                            $ref: "#/definitions/u8"
> +                                        allowed_atype:
> +                                            $ref: "#/definitions/u8"
> +                                        allowed_qos:
> +                                            $ref: "#/definitions/u16"
> +                                        allowed_orderid:
> +                                            $ref: "#/definitions/u32"
> +                                        allowed_priority:
> +                                            $ref: "#/definitions/u16"
> +                                        allowed_sched_priority:
> +                                            $ref: "#/definitions/u8"
> +                    resasg:
> +                        type: object
> +                        properties:
> +                            subhdr:
> +                                type: object
> +                                properties:
> +                                    magic:
> +                                        $ref: "#/definitions/u16"
> +                                    size:
> +                                        $ref: "#/definitions/u16"
> +                            resasg_entries_size:
> +                                        $ref: "#/definitions/u16"
> +                            reserved:
> +                                        $ref: "#/definitions/u16"
> +
> +            resasg_entries:
> +                type: array
> +                minItems: 0
> +                maxItems: 468
> +                items:
> +                    type: object
> +                    properties:
> +                        start_resource:
> +                            $ref: "#/definitions/u16"
> +                        num_resource:
> +                            $ref: "#/definitions/u16"
> +                        type:
> +                            $ref: "#/definitions/u16"
> +                        host_id:
> +                            $ref: "#/definitions/u8"
> +                        reserved:
> +                            $ref: "#/definitions/u8"
> diff --git a/arch/arm/mach-k3/sec-cfg-am625.yaml b/arch/arm/mach-k3/sec-cfg-am625.yaml
> new file mode 100644
> index 0000000000..088b2dbaf1
> --- /dev/null
> +++ b/arch/arm/mach-k3/sec-cfg-am625.yaml
> @@ -0,0 +1,379 @@
> +# SPDX-License-Identifier: GPL-2.0+
> +# Copyright (C) 2022-2023 Texas Instruments Incorporated - https://www.ti.com/
> +#
> +# Security management configuration for AM62
> +#
> +
> +---
> +
> +sec-cfg:
> +    rev:
> +        boardcfg_abi_maj: 0x0
> +        boardcfg_abi_min: 0x1
> +    processor_acl_list:
> +        subhdr:
> +            magic: 0xF1EA
> +            size: 164
> +        proc_acl_entries:
> +            -  # 1
> +                processor_id: 0
> +                proc_access_master: 0
> +                proc_access_secondary: [0, 0, 0]
> +            -  # 2
> +                processor_id: 0
> +                proc_access_master: 0
> +                proc_access_secondary: [0, 0, 0]
> +            -  # 3
> +                processor_id: 0
> +                proc_access_master: 0
> +                proc_access_secondary: [0, 0, 0]
> +            -  # 4
> +                processor_id: 0
> +                proc_access_master: 0
> +                proc_access_secondary: [0, 0, 0]
> +            -  # 5
> +                processor_id: 0
> +                proc_access_master: 0
> +                proc_access_secondary: [0, 0, 0]
> +            -  # 6
> +                processor_id: 0
> +                proc_access_master: 0
> +                proc_access_secondary: [0, 0, 0]
> +            -  # 7
> +                processor_id: 0
> +                proc_access_master: 0
> +                proc_access_secondary: [0, 0, 0]
> +            -  # 8
> +                processor_id: 0
> +                proc_access_master: 0
> +                proc_access_secondary: [0, 0, 0]
> +            -  # 9
> +                processor_id: 0
> +                proc_access_master: 0
> +                proc_access_secondary: [0, 0, 0]
> +            -  # 10
> +                processor_id: 0
> +                proc_access_master: 0
> +                proc_access_secondary: [0, 0, 0]
> +            -  # 11
> +                processor_id: 0
> +                proc_access_master: 0
> +                proc_access_secondary: [0, 0, 0]
> +            -  # 12
> +                processor_id: 0
> +                proc_access_master: 0
> +                proc_access_secondary: [0, 0, 0]
> +            -  # 13
> +                processor_id: 0
> +                proc_access_master: 0
> +                proc_access_secondary: [0, 0, 0]
> +            -  # 14
> +                processor_id: 0
> +                proc_access_master: 0
> +                proc_access_secondary: [0, 0, 0]
> +            -  # 15
> +                processor_id: 0
> +                proc_access_master: 0
> +                proc_access_secondary: [0, 0, 0]
> +            -  # 16
> +                processor_id: 0
> +                proc_access_master: 0
> +                proc_access_secondary: [0, 0, 0]
> +            -  # 17
> +                processor_id: 0
> +                proc_access_master: 0
> +                proc_access_secondary: [0, 0, 0]
> +            -  # 18
> +                processor_id: 0
> +                proc_access_master: 0
> +                proc_access_secondary: [0, 0, 0]
> +            -  # 19
> +                processor_id: 0
> +                proc_access_master: 0
> +                proc_access_secondary: [0, 0, 0]
> +            -  # 20
> +                processor_id: 0
> +                proc_access_master: 0
> +                proc_access_secondary: [0, 0, 0]
> +            -  # 21
> +                processor_id: 0
> +                proc_access_master: 0
> +                proc_access_secondary: [0, 0, 0]
> +            -  # 22
> +                processor_id: 0
> +                proc_access_master: 0
> +                proc_access_secondary: [0, 0, 0]
> +            -  # 23
> +                processor_id: 0
> +                proc_access_master: 0
> +                proc_access_secondary: [0, 0, 0]
> +            -  # 24
> +                processor_id: 0
> +                proc_access_master: 0
> +                proc_access_secondary: [0, 0, 0]
> +            -  # 25
> +                processor_id: 0
> +                proc_access_master: 0
> +                proc_access_secondary: [0, 0, 0]
> +            -  # 26
> +                processor_id: 0
> +                proc_access_master: 0
> +                proc_access_secondary: [0, 0, 0]
> +            -  # 27
> +                processor_id: 0
> +                proc_access_master: 0
> +                proc_access_secondary: [0, 0, 0]
> +            -  # 28
> +                processor_id: 0
> +                proc_access_master: 0
> +                proc_access_secondary: [0, 0, 0]
> +            -  # 29
> +                processor_id: 0
> +                proc_access_master: 0
> +                proc_access_secondary: [0, 0, 0]
> +            -  # 30
> +                processor_id: 0
> +                proc_access_master: 0
> +                proc_access_secondary: [0, 0, 0]
> +            -  # 31
> +                processor_id: 0
> +                proc_access_master: 0
> +                proc_access_secondary: [0, 0, 0]
> +            -  # 32
> +                processor_id: 0
> +                proc_access_master: 0
> +                proc_access_secondary: [0, 0, 0]
> +    host_hierarchy:
> +        subhdr:
> +            magic: 0x8D27
> +            size: 68
> +        host_hierarchy_entries:
> +            -  # 1
> +                host_id: 0
> +                supervisor_host_id: 0
> +            -  # 2
> +                host_id: 0
> +                supervisor_host_id: 0
> +            -  # 3
> +                host_id: 0
> +                supervisor_host_id: 0
> +            -  # 4
> +                host_id: 0
> +                supervisor_host_id: 0
> +            -  # 5
> +                host_id: 0
> +                supervisor_host_id: 0
> +            -  # 6
> +                host_id: 0
> +                supervisor_host_id: 0
> +            -  # 7
> +                host_id: 0
> +                supervisor_host_id: 0
> +            -  # 8
> +                host_id: 0
> +                supervisor_host_id: 0
> +            -  # 9
> +                host_id: 0
> +                supervisor_host_id: 0
> +            -  # 10
> +                host_id: 0
> +                supervisor_host_id: 0
> +            -  # 11
> +                host_id: 0
> +                supervisor_host_id: 0
> +            -  # 12
> +                host_id: 0
> +                supervisor_host_id: 0
> +            -  # 13
> +                host_id: 0
> +                supervisor_host_id: 0
> +            -  # 14
> +                host_id: 0
> +                supervisor_host_id: 0
> +            -  # 15
> +                host_id: 0
> +                supervisor_host_id: 0
> +            -  # 16
> +                host_id: 0
> +                supervisor_host_id: 0
> +            -  # 17
> +                host_id: 0
> +                supervisor_host_id: 0
> +            -  # 18
> +                host_id: 0
> +                supervisor_host_id: 0
> +            -  # 19
> +                host_id: 0
> +                supervisor_host_id: 0
> +            -  # 20
> +                host_id: 0
> +                supervisor_host_id: 0
> +            -  # 21
> +                host_id: 0
> +                supervisor_host_id: 0
> +            -  # 22
> +                host_id: 0
> +                supervisor_host_id: 0
> +            -  # 23
> +                host_id: 0
> +                supervisor_host_id: 0
> +            -  # 24
> +                host_id: 0
> +                supervisor_host_id: 0
> +            -  # 25
> +                host_id: 0
> +                supervisor_host_id: 0
> +            -  # 26
> +                host_id: 0
> +                supervisor_host_id: 0
> +            -  # 27
> +                host_id: 0
> +                supervisor_host_id: 0
> +            -  # 28
> +                host_id: 0
> +                supervisor_host_id: 0
> +            -  # 29
> +                host_id: 0
> +                supervisor_host_id: 0
> +            -  # 30
> +                host_id: 0
> +                supervisor_host_id: 0
> +            -  # 31
> +                host_id: 0
> +                supervisor_host_id: 0
> +            -  # 32
> +                host_id: 0
> +                supervisor_host_id: 0
> +    otp_config:
> +        subhdr:
> +            magic: 0x4081
> +            size: 69
> +        write_host_id: 0
> +        otp_entry:
> +            -  # 1
> +                host_id: 0
> +                host_perms: 0
> +            -  # 2
> +                host_id: 0
> +                host_perms: 0
> +            -  # 3
> +                host_id: 0
> +                host_perms: 0
> +            -  # 4
> +                host_id: 0
> +                host_perms: 0
> +            -  # 5
> +                host_id: 0
> +                host_perms: 0
> +            -  # 6
> +                host_id: 0
> +                host_perms: 0
> +            -  # 7
> +                host_id: 0
> +                host_perms: 0
> +            -  # 8
> +                host_id: 0
> +                host_perms: 0
> +            -  # 9
> +                host_id: 0
> +                host_perms: 0
> +            -  # 10
> +                host_id: 0
> +                host_perms: 0
> +            -  # 11
> +                host_id: 0
> +                host_perms: 0
> +            -  # 12
> +                host_id: 0
> +                host_perms: 0
> +            -  # 13
> +                host_id: 0
> +                host_perms: 0
> +            -  # 14
> +                host_id: 0
> +                host_perms: 0
> +            -  # 15
> +                host_id: 0
> +                host_perms: 0
> +            -  # 16
> +                host_id: 0
> +                host_perms: 0
> +            -  # 17
> +                host_id: 0
> +                host_perms: 0
> +            -  # 18
> +                host_id: 0
> +                host_perms: 0
> +            -  # 19
> +                host_id: 0
> +                host_perms: 0
> +            -  # 20
> +                host_id: 0
> +                host_perms: 0
> +            -  # 21
> +                host_id: 0
> +                host_perms: 0
> +            -  # 22
> +                host_id: 0
> +                host_perms: 0
> +            -  # 23
> +                host_id: 0
> +                host_perms: 0
> +            -  # 24
> +                host_id: 0
> +                host_perms: 0
> +            -  # 25
> +                host_id: 0
> +                host_perms: 0
> +            -  # 26
> +                host_id: 0
> +                host_perms: 0
> +            -  # 27
> +                host_id: 0
> +                host_perms: 0
> +            -  # 28
> +                host_id: 0
> +                host_perms: 0
> +            -  # 29
> +                host_id: 0
> +                host_perms: 0
> +            -  # 30
> +                host_id: 0
> +                host_perms: 0
> +            -  # 31
> +                host_id: 0
> +                host_perms: 0
> +            -  # 32
> +                host_id: 0
> +                host_perms: 0
> +    dkek_config:
> +        subhdr:
> +            magic: 0x5170
> +            size: 12
> +        allowed_hosts: [128, 0, 0, 0]
> +        allow_dkek_export_tisci: 0x5A
> +        rsvd: [0, 0, 0]
> +    sa2ul_cfg:
> +        subhdr:
> +            magic: 0x23BE
> +            size: 0
> +        auth_resource_owner: 0
> +        enable_saul_psil_global_config_writes: 0x5A
> +        rsvd: [0, 0]
> +    sec_dbg_config:
> +        subhdr:
> +            magic: 0x42AF
> +            size: 16
> +        allow_jtag_unlock: 0x5A
> +        allow_wildcard_unlock: 0x5A
> +        allowed_debug_level_rsvd: 0
> +        rsvd: 0
> +        min_cert_rev: 0x0
> +        jtag_unlock_hosts: [0, 0, 0, 0]
> +    sec_handover_cfg:
> +        subhdr:
> +            magic: 0x608F
> +            size: 10
> +        handover_msg_sender: 0
> +        handover_to_host_id: 0
> +        rsvd: [0, 0, 0, 0]
> diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
> index c32adf07cc..6e8f1c8e9a 100644
> --- a/scripts/Makefile.lib
> +++ b/scripts/Makefile.lib
> @@ -539,6 +539,9 @@ quiet_cmd_check_missing_fw = # no message as we collect info for later
>  	$(OBJCOPY) -O binary --only-section=.missing_fw	$3 $2.missing-firmware;	    \
>  	[ -s $2.missing-firmware ] || rm -f $2.missing-firmware
>  
> +quiet_cmd_k3_cfg = K3CFG   $@
> +      cmd_k3_cfg = $(srctree)/scripts/ti-board-config.py $@ $(filter-out FORCE,$^)
> +
>  quiet_cmd_imximage__S_dcd= DCD_S   $@
>  cmd_imximage_S_dcd=						\
>  (								\
> diff --git a/scripts/ti-board-config.py b/scripts/ti-board-config.py
> new file mode 100755
> index 0000000000..4b6214c299
> --- /dev/null
> +++ b/scripts/ti-board-config.py
> @@ -0,0 +1,170 @@
> +#!/usr/bin/env python3
> +# SPDX-License-Identifier: GPL-2.0+
> +# Copyright (c) 2022-2023 Texas Instruments Incorporated - https://www.ti.com/
> +# Written by Neha Malcom Francis <n-francis@ti.com>
> +#
> +# Entry-type module for generating schema validated TI board
> +# configuration binary
> +#
> +
> +import os
> +import struct
> +import yaml
> +import yamllint
> +import sys
> +
> +from jsonschema import validate
> +
> +from yamllint import config
> +
> +BOARDCFG = 0xB
> +BOARDCFG_SEC = 0xD
> +BOARDCFG_PM = 0xE
> +BOARDCFG_RM = 0xC
> +
> +class cfgentry:
> +    def __init__(self, cfgtype, data):
> +        self.cfgtype = cfgtype
> +        self.data = data
> +
> +class Entry_ti_board_config:
> +    def __init__(self, schema):
> +        self._config = None
> +        self._schema = None
> +        self._fmt = '<HHHBB'
> +        self._index = 0
> +        self._sw_rev = 1
> +        self._devgrp = 0
> +        self.cfgentries = []
> +        self.header = struct.pack('<BB', 4, 1)
> +        self._binary_offset = len(self.header)
> +        self._schema_file = schema
> +
> +    def _convert_to_byte_chunk(self, val, data_type):
> +        """Convert value into byte array
> +
> +        Args:
> +            val: value to convert into byte array
> +            data_type: data type used in schema, supported data types are u8,
> +                u16 and u32
> +
> +        Returns:
> +            array of bytes representing value
> +        """
> +        size = 0
> +        if (data_type == '#/definitions/u8'):
> +            size = 1
> +        elif (data_type == '#/definitions/u16'):
> +            size = 2
> +        else:
> +            size = 4
> +        if type(val) == int:
> +            br = val.to_bytes(size, byteorder='little')
> +        return br
> +
> +    def _compile_yaml(self, schema_yaml, file_yaml):
> +        """Convert YAML file into byte array based on YAML schema
> +
> +        Args:
> +            schema_yaml: file containing YAML schema
> +            file_yaml: file containing config to compile
> +
> +        Returns:
> +            array of bytes repesenting YAML file against YAML schema
> +        """
> +        br = bytearray()
> +        for key, node in file_yaml.items():
> +            node_schema = schema_yaml['properties'][key]
> +            node_type = node_schema.get('type')
> +            if not 'type' in node_schema:
> +                br += self._convert_to_byte_chunk(node,
> +                                                node_schema.get('$ref'))
> +            elif node_type == 'object':
> +                br += self._compile_yaml(node_schema, node)
> +            elif node_type == 'array':
> +                for item in node:
> +                    if not isinstance(item, dict):
> +                        br += self._convert_to_byte_chunk(
> +                            item, schema_yaml['properties'][key]['items']['$ref'])
> +                    else:
> +                        br += self._compile_yaml(node_schema.get('items'), item)
> +        return br
> +
> +    def _generate_binaries(self):
> +        """Generate config binary artifacts from the loaded YAML configuration file
> +
> +        Returns:
> +            byte array containing config binary artifacts
> +            or None if generation fails
> +        """
> +        cfg_binary = bytearray()
> +        for key, node in self.file_yaml.items():
> +            node_schema = self.schema_yaml['properties'][key]
> +            br = self._compile_yaml(node_schema, node)
> +            cfg_binary += br
> +        return cfg_binary
> +
> +    def _add_boardcfg(self, bcfgtype, bcfgdata):
> +        """Add board config to combined board config binary
> +
> +        Args:
> +            bcfgtype (int): board config type
> +            bcfgdata (byte array): board config data
> +        """
> +        size = len(bcfgdata)
> +
> +        desc = struct.pack(self._fmt, bcfgtype,
> +                            self._binary_offset, size, self._devgrp, 0)
> +        self._binary_offset += size
> +        self._index += 1
> +        return desc
> +
> +    def add_data(self, configfile):
> +        self._config_file = configfile
> +        with open(self._config_file, 'r') as f:
> +            self.file_yaml = yaml.safe_load(f)
> +        with open(self._schema_file, 'r') as sch:
> +            self.schema_yaml = yaml.safe_load(sch)
> +
> +        if self.file_yaml.get('board-cfg') != None:
> +            cfgtype = BOARDCFG
> +        if self.file_yaml.get('sec-cfg') != None:
> +            cfgtype = BOARDCFG_SEC
> +        if self.file_yaml.get('pm-cfg') != None:
> +            cfgtype = BOARDCFG_PM
> +        if self.file_yaml.get('rm-cfg') != None:
> +            cfgtype = BOARDCFG_RM
> +
> +        yaml_config = config.YamlLintConfig("extends: default")
> +        for p in yamllint.linter.run(open(self._config_file, "r"), yaml_config):
> +            self.Raise(f"Yamllint error: {p.line}: {p.rule}")
> +        try:
> +            validate(self.file_yaml, self.schema_yaml)
> +        except Exception as e:
> +            self.Raise(f"Schema validation error: {e}")
> +
> +        data = self._generate_binaries()
> +        entry = cfgentry(cfgtype, data)
> +        self.cfgentries.append(entry)
> +        return data
> +
> +    def save(self, filename):
> +        with open(filename, "wb") as binary_file:
> +            binary_file.write(self.header)
> +            for i in self.cfgentries:
> +                obj._binary_offset += 8
> +            for i in self.cfgentries:
> +                binary_file.write(self._add_boardcfg(i.cfgtype, i.data))
> +            for i in self.cfgentries:
> +                binary_file.write(i.data)
> +            binary_file.close()
> +
> +outfile = sys.argv[1]
> +schema = sys.argv[2]
> +
> +obj = Entry_ti_board_config(schema)
> +
> +for i in sys.argv[3:]:
> +    obj.add_data(i)
> +
> +obj.save(outfile)
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


