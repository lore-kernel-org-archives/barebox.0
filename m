Delivery-date: Fri, 14 Mar 2025 17:08:44 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tt7aX-00E4PD-0t
	for lore@lore.pengutronix.de;
	Fri, 14 Mar 2025 17:08:44 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tt7aV-0004Cl-Vl
	for lore@pengutronix.de; Fri, 14 Mar 2025 17:08:44 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=CLZNH472eIQHp/9AVdI+bC2qly22oTOD4oF6sjymwf8=; b=QWbTDuW6JngL6wG7G7/UwSitmT
	4AKQcrOSzo5PXbWyAWlL6Tyck8JHlqBc4qaE1LWQm/Ylpqa/Id8QcSqwxzoVhfA3atbqv4QayURoD
	XKXxyGl0TRFV8hD/4KJMF+pwGTxEQYzPRdCcmzql+PePOhzdvOzOL8UpiA/ZUSOXwiJ+UJSfKtTr6
	RsSaMzmEXKkMixDMTbgFED7llJqslXaNU3P4B/rpWdu1qvcafmbVxmvFOwyoAONEOcwBzNwpKDTLv
	4IGH2eL65kLNniIjPk0gbsAt6Hr3WJeOUvPGbnp0hyJWrSJLExtR3HPSLg53wdCqkb910+vUUOeBc
	MBSSQKrw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tt7a5-0000000Eg9S-145z;
	Fri, 14 Mar 2025 16:08:17 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tt7Wf-0000000EfT8-2R16
	for barebox@lists.infradead.org;
	Fri, 14 Mar 2025 16:04:46 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tt7We-0003Xe-AY; Fri, 14 Mar 2025 17:04:44 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tt7We-005jEV-0S;
	Fri, 14 Mar 2025 17:04:44 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tt7We-00HHQ8-0F;
	Fri, 14 Mar 2025 17:04:44 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250313073445.764875-1-a.fatoum@pengutronix.de>
References: <20250313073445.764875-1-a.fatoum@pengutronix.de>
Message-Id: <174196828407.4118485.17440201820843364791.b4-ty@pengutronix.de>
Date: Fri, 14 Mar 2025 17:04:44 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250314_090445_624408_287FBD5C 
X-CRM114-Status: UNSURE (   9.44  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 00/22] add support for clang-analyzer with scan-build
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 13 Mar 2025 08:34:23 +0100, Ahmad Fatoum wrote:
> With the changes, it's now possible to build barebox for sandbox
> with allyesconfig with clang under scan-build with:
> 
>   export LLVM=-19 # or whatever your clang suffix is if you've one
>   scan-build${LLVM} --use-cc=clang${LLVM} make
> 
> For this build to run to completion, a number of things that clang
> treats as errors need to be resolved as well, which is included
> in this series.
> 
> [...]

Applied, thanks!

[01/22] kbuild: add support for clang-analyzer with scan-build
        https://git.pengutronix.de/cgit/barebox/commit/?id=da3ab7931a95 (link may not be stable)
[02/22] soc: ti: k3-navss-ringacc: fix COMPILE_TEST link error
        https://git.pengutronix.de/cgit/barebox/commit/?id=8644f442f72e (link may not be stable)
[03/22] treewide: fix missing headers in sandbox allyesconfig
        https://git.pengutronix.de/cgit/barebox/commit/?id=38a389121b87 (link may not be stable)
[04/22] drivers: don't cast pointer directly to enum
        https://git.pengutronix.de/cgit/barebox/commit/?id=31fb717b4e27 (link may not be stable)
[05/22] firmware: arm_scmi: smc: compile only for ARM
        https://git.pengutronix.de/cgit/barebox/commit/?id=faf4a5da3f86 (link may not be stable)
[06/22] video: stm32-ltdc: fix printing uninitialized variable
        https://git.pengutronix.de/cgit/barebox/commit/?id=9c0ff56016a2 (link may not be stable)
[07/22] usb: core: remove unnecessary comparison
        https://git.pengutronix.de/cgit/barebox/commit/?id=049e56755631 (link may not be stable)
[08/22] ddr_spd: fix always true sub-condition
        https://git.pengutronix.de/cgit/barebox/commit/?id=2ad7e02e24c9 (link may not be stable)
[09/22] hush: fix make_string behavior on empty strings
        https://git.pengutronix.de/cgit/barebox/commit/?id=c884ea565a51 (link may not be stable)
[10/22] nvmem: fix clang-analyzer false-positive use of uninitialized value
        https://git.pengutronix.de/cgit/barebox/commit/?id=2e02e583f7c7 (link may not be stable)
[11/22] string: initialize string array in string selftest
        https://git.pengutronix.de/cgit/barebox/commit/?id=c807c954e141 (link may not be stable)
[12/22] commands: ubsan: hide zero division in test
        https://git.pengutronix.de/cgit/barebox/commit/?id=cb7953532da2 (link may not be stable)
[13/22] crypto: ecc: fix clang-analyzer warning about NULL dereference
        https://git.pengutronix.de/cgit/barebox/commit/?id=c7a1df25a191 (link may not be stable)
[14/22] mci_spi: fix possible use of uninitialized variable
        https://git.pengutronix.de/cgit/barebox/commit/?id=8a8f51a2f8a4 (link may not be stable)
[15/22] mtd: have mtd_read populate retlen always
        https://git.pengutronix.de/cgit/barebox/commit/?id=9d7580eb87bc (link may not be stable)
[16/22] of: fdt: silence possible static analyzer false positive
        https://git.pengutronix.de/cgit/barebox/commit/?id=44377ec41732 (link may not be stable)
[17/22] ubi: workaround zero division on malformed input in ubi_assert
        https://git.pengutronix.de/cgit/barebox/commit/?id=9e52dd5668eb (link may not be stable)
[18/22] video: Rockchip: fix zero division in rk3588_calc_cru_cfg
        https://git.pengutronix.de/cgit/barebox/commit/?id=fdd1c5bac55f (link may not be stable)
[19/22] lib: scatterlist: don't assert last element for empty sglist
        https://git.pengutronix.de/cgit/barebox/commit/?id=5a7f10a4b865 (link may not be stable)
[20/22] scripts: omap3-usb-loader: fix clang-analyzer false-positive
        https://git.pengutronix.de/cgit/barebox/commit/?id=06e3e7f29b98 (link may not be stable)
[21/22] clk: analogbits: wrpll-cln28hpc: bail out before zero division
        https://git.pengutronix.de/cgit/barebox/commit/?id=66daf4f16210 (link may not be stable)
[22/22] watchdog: stm32_iwdg: bail out before zero division
        https://git.pengutronix.de/cgit/barebox/commit/?id=8a4768c4ed82 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



