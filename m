Delivery-date: Fri, 19 Jan 2024 09:03:41 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rQjqm-006i2y-1g
	for lore@lore.pengutronix.de;
	Fri, 19 Jan 2024 09:03:41 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rQjqn-0002on-3a
	for lore@pengutronix.de; Fri, 19 Jan 2024 09:03:41 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xGiUAYaggbjFj1AgZn3RQX+sCrrnL4Un4yQCrYT4jwY=; b=ZAdy/omNaMRmMGRj37vLKwzbrS
	N+XLNAF7z58hk6BrzRxuyrU9PAMJTBU7tJ61eJi1t+3WuK0Eo7AIzM2udcjQ9XVef2tOUlcnORBus
	aHNxG3D1z+LMh4kEYMqQDIvUumz2KCUaw209vAnXee55I8y87U+zSoaNodkWGvG7P4zwUKmhc7rWz
	RyalI89IRXOvb0rju8pp5h8tTwxNL/vRHAZOrWAIhSTIT2Oq2E2f3QjgxvkJeStiBZ/5WosiCqpxJ
	agtmgVE1OQPkDIzjSEf1tboPmeJLMIS0hIqxDFwwg+NLJMq/wvMTeaAHlhkUTwhkXtRv+Mx8qFwWY
	RcET/9EQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rQjpY-004mPu-2F;
	Fri, 19 Jan 2024 08:02:24 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rQjpT-004mOY-2Q
	for barebox@lists.infradead.org;
	Fri, 19 Jan 2024 08:02:23 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rQjpR-0002ks-Tj; Fri, 19 Jan 2024 09:02:17 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rQjpP-000rvU-Pp; Fri, 19 Jan 2024 09:02:15 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rQjpP-009aF8-2O;
	Fri, 19 Jan 2024 09:02:15 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Marco Felsch <m.felsch@pengutronix.de>
In-Reply-To: <20240116170738.209954-1-m.felsch@pengutronix.de>
References: <20240116170738.209954-1-m.felsch@pengutronix.de>
Message-Id: <170565133573.2284020.3962598950595077783.b4-ty@pengutronix.de>
Date: Fri, 19 Jan 2024 09:02:15 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240119_000219_813955_1A213C39 
X-CRM114-Status: GOOD (  11.20  )
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
X-Spam-Status: No, score=-6.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v2 00/18] Dynamic OP-TEE Loading
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 16 Jan 2024 18:07:20 +0100, Marco Felsch wrote:
> by this series it is supported to load OP-TEE to random DRAM locations.
> The location is parsed and configured if the builtin OP-TEE contains a
> header-v1. For this to work we needed to cleanup the imx-scratch code
> (patches1-4).
> 
> I've tested this series on i.MX8MM and i.MX8MP SoCs using the eMMC and
> QSPI boot mode. The USB boot mode was tested on i.MX8MM only.
> 
> [...]

Applied, thanks!

[01/18] ARM: i.MX8M: atf: make use of imx8m*_save_bootrom_log macros
        https://git.pengutronix.de/cgit/barebox/commit/?id=264b718bb748 (link may not be stable)
[02/18] ARM: i.MX8M: bundle imx-scratch code
        https://git.pengutronix.de/cgit/barebox/commit/?id=b064b6bef70e (link may not be stable)
[03/18] ARM: i.MX8M: scratch: make imx_scratch_space private
        https://git.pengutronix.de/cgit/barebox/commit/?id=071141f15e6e (link may not be stable)
[04/18] ARM: i.MX8M: romapi: refactor saving the bootrom log
        https://git.pengutronix.de/cgit/barebox/commit/?id=2073164ffc28 (link may not be stable)
[05/18] ARM: i.MX8M: scratch: add optee_hdr area
        https://git.pengutronix.de/cgit/barebox/commit/?id=62d1c1433600 (link may not be stable)
[06/18] common: limit BOOTM_OPTEE to 32bit systems
        https://git.pengutronix.de/cgit/barebox/commit/?id=52f5df29ee34 (link may not be stable)
[07/18] common: add OPTEE_SHM_SIZE to configure optee shared memory
        https://git.pengutronix.de/cgit/barebox/commit/?id=cf6bad3c3566 (link may not be stable)
[08/18] optee: add support to verify 64-bit headers as well
        https://git.pengutronix.de/cgit/barebox/commit/?id=5f2f1f5fc1a9 (link may not be stable)
[09/18] optee: add header version check
        https://git.pengutronix.de/cgit/barebox/commit/?id=19f07229bc19 (link may not be stable)
[10/18] optee: add helper functions to set/get the optee memory base
        https://git.pengutronix.de/cgit/barebox/commit/?id=99c0794d820a (link may not be stable)
[11/18] optee: optee_verify_header: constify optee_header
        https://git.pengutronix.de/cgit/barebox/commit/?id=5e9680111464 (link may not be stable)
[12/18] ARM64: mmu: add dynamic optee memory mapping support
        https://git.pengutronix.de/cgit/barebox/commit/?id=cd0d14fff1c9 (link may not be stable)
[13/18] ARM: i.MX8M: add dynamic optee memory of-fixup support
        https://git.pengutronix.de/cgit/barebox/commit/?id=b9d90943b720 (link may not be stable)
[14/18] drivers: tee: optee: add support for dynamic optee memory base address
        https://git.pengutronix.de/cgit/barebox/commit/?id=dee1d73921bf (link may not be stable)
[15/18] ARM: i.MX8M: atf: add support for optee hdr parsing
        https://git.pengutronix.de/cgit/barebox/commit/?id=532cdae92630 (link may not be stable)
[16/18] ARM: i.MX8M: allow board code to configure the bl33 loadaddr
        https://git.pengutronix.de/cgit/barebox/commit/?id=e10ea01ec023 (link may not be stable)
[17/18] ARM: i.MX8M: cleanup MX8M*_ATF_BL33_BASE_ADDR defines
        https://git.pengutronix.de/cgit/barebox/commit/?id=f58f1d227c15 (link may not be stable)
[18/18] ARM: i.MX8M: fix optee of-fixup logic
        https://git.pengutronix.de/cgit/barebox/commit/?id=fab23c06660b (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



