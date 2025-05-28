Delivery-date: Wed, 28 May 2025 14:19:48 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uKFl6-001BZD-1u
	for lore@lore.pengutronix.de;
	Wed, 28 May 2025 14:19:48 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uKFl5-0000dE-Pa
	for lore@pengutronix.de; Wed, 28 May 2025 14:19:48 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=AD4/tkT/q2U16g8NKTuxyoNovqvZY5UleEqy1aHCQx4=; b=Y9xFFXXsDT8tPEIKjQJMh1+rBY
	a4iVej3DrVZly7iK91XtYO3ne/ImCrO7zACdji1DLupHC8Ym6OJRlqA9ueYg1Pl3Mn5IJx7TUK5Pn
	JOcJb5rNKgvmx90bFpzhnp+7NnCnpVGjcedqRXBdAe2ZJsdIkYd53DjGGGqagJIX3NryC8Gp8X0Ki
	XCbqKgIjdOxz5RNCOGBFQ3MN1mnyuJ/+SuqBS6taOMEwQ3L1AxUSAhn4xrqcCmuq+k3OLskmKifwW
	olip/Ml3iU3SvaEuAcxRrDu821CeH9JvaTpdT/zGjK+zRNAepuqwuySqKOIK1Xr9ItaGXUlr5BRYr
	xCU12tyA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKFkq-0000000D5Ul-0yMV;
	Wed, 28 May 2025 12:19:32 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKEY2-0000000CvzN-3JTK
	for barebox@bombadil.infradead.org;
	Wed, 28 May 2025 11:02:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=AD4/tkT/q2U16g8NKTuxyoNovqvZY5UleEqy1aHCQx4=; b=ckLI9l6hlXv4eq14uUYYqPGFcX
	qxNfmNEgtSxPD/rJlcGm1YFjHwz8rK4XGXjc/h6r8Q4VXKNlCz45xIf4+Vklb+093gVreM3f45i3G
	6zZtOTSvr9Kh6zgrDhPqy7AiHSmoVctn1oMJcH+xlBzAMhxV0OvRcQiOXYNn72dn4CdGVursaVlln
	vmJsMvlsuQwHJin6bVUrzFF2AAp27qYwJmoeRtm5r0j4MuHTGU6kEaAqyfW46LVqyOwlscl0macbu
	jzhx7KHf+D0ExTCqL0XgEI3rq+Hfave0W/t7uHabCPLjfLDD/QnwytFBX7Fe3bs4o/mrKc8IYp7iB
	hIZEGJyQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by casper.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKEXy-0000000DXG1-1aeJ
	for barebox@lists.infradead.org;
	Wed, 28 May 2025 11:02:13 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uKEXm-0001p7-BW
	for barebox@lists.infradead.org; Wed, 28 May 2025 13:01:58 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uKEXm-000Zgs-0X
	for barebox@lists.infradead.org;
	Wed, 28 May 2025 13:01:58 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uKEXm-00DuY0-0F
	for barebox@lists.infradead.org;
	Wed, 28 May 2025 13:01:58 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Wed, 28 May 2025 12:50:36 +0200
Message-Id: <20250528105046.3270397-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250528_120210_681337_1A565A42 
X-CRM114-Status: UNSURE (   9.39  )
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
X-Spam-Status: No, score=-6.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 00/10] ARM32: allow disabling ATAGS and DT fallback
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

New platforms shouldn't use atags, but we compile the code always.

New platforms should use device tree, but there may be binding
incompatibilities between barebox embedded device tree and device tree
shipped with the kernel.

For that reason, this series introduces two config options:

 - CONFIG_BOOT_ATAGS: Now disabled by default as it has been
   replaced by device trees

 - BOOTM_OFTREE_FALLBACK: Enabled by default, but should likely
   be disabled in products, so the device tree should be explicitly
   suppied.

Ahmad Fatoum (10):
  arch: add new HAVE_ARCH_BOOTM_OFTREE symbol
  bootm: enable CONFIG_BOOTM_OFTREE by default
  ARM: lib32: disable ATAGS support by default
  kvx: bootm: enforce existence of device tree
  bootm: booti: make device tree optional
  filetype: add new file type for 0-sized files
  bootm: have bootm_get_devicetree return NULL if passed empty DT
  bootm: make fallback to barebox internal tree optional
  commands: oftree: add option to return device tree without fixups
  of: drop undefined fdt_get_tree declaration

 .../migration-guides/migration-2025.07.0.rst  |   7 +
 arch/Kconfig                                  |   6 +
 arch/arm/Kconfig                              |  13 +-
 arch/arm/configs/animeo_ip_defconfig          |   1 +
 arch/arm/configs/at91rm9200ek_defconfig       |   1 +
 arch/arm/configs/at91sam9260ek_defconfig      |   1 +
 .../configs/at91sam9261ek_bootstrap_defconfig |   1 +
 arch/arm/configs/at91sam9261ek_defconfig      |   1 +
 arch/arm/configs/at91sam9g10ek_defconfig      |   1 +
 arch/arm/configs/at91sam9g20ek_defconfig      |   1 +
 arch/arm/configs/at91sam9m10g45ek_defconfig   |   1 +
 arch/arm/configs/at91sam9m10ihd_defconfig     |   1 +
 arch/arm/configs/at91sam9n12ek_defconfig      |   1 +
 arch/arm/configs/dss11_defconfig              |   1 +
 arch/arm/configs/haba_knx_lite_defconfig      |   1 +
 arch/arm/configs/imx23_defconfig              |   1 +
 arch/arm/configs/imx28_defconfig              |   1 +
 arch/arm/configs/kindle-mx50_defconfig        |   1 +
 arch/arm/configs/multi_v5_v6_defconfig        |   1 +
 arch/arm/configs/mvebu_defconfig              |   1 +
 arch/arm/configs/omap_defconfig               |   1 +
 arch/arm/configs/pm9261_defconfig             |   1 +
 arch/arm/configs/pm9263_defconfig             |   1 +
 arch/arm/configs/pm9g45_defconfig             |   1 +
 arch/arm/configs/qil_a9260_defconfig          |   1 +
 arch/arm/configs/qil_a9g20_defconfig          |   1 +
 arch/arm/configs/rockchip_v7a_defconfig       |   1 +
 arch/arm/configs/telit_evk_pro3_defconfig     |   1 +
 arch/arm/configs/tny_a9260_defconfig          |   1 +
 .../arm/configs/tny_a9263_bootstrap_defconfig |   1 +
 arch/arm/configs/tny_a9263_defconfig          |   1 +
 arch/arm/configs/tny_a9g20_defconfig          |   1 +
 arch/arm/configs/usb_a9260_defconfig          |   1 +
 .../arm/configs/usb_a9263_bootstrap_defconfig |   1 +
 arch/arm/configs/usb_a9263_defconfig          |   1 +
 arch/arm/configs/usb_a9g20_defconfig          |   1 +
 arch/arm/include/asm/armlinux.h               |  25 +-
 arch/arm/lib32/Makefile                       |   1 +
 arch/arm/lib32/armlinux.c                     | 234 +-----------------
 arch/arm/lib32/atags.c                        | 230 +++++++++++++++++
 arch/arm/lib32/bootm.c                        |   2 +-
 arch/arm/lib32/bootu.c                        |  11 +-
 arch/arm/lib32/bootz.c                        |   9 +-
 arch/arm/lib64/armlinux.c                     |   2 +-
 arch/arm/mach-imx/Kconfig                     |   1 +
 arch/kvx/Kconfig                              |   1 +
 arch/kvx/lib/bootm.c                          |   2 +
 arch/mips/Kconfig                             |   1 +
 arch/powerpc/Kconfig                          |   1 +
 arch/powerpc/lib/ppclinux.c                   |   2 +-
 arch/riscv/Kconfig                            |   1 +
 arch/riscv/lib/bootm.c                        |   2 +-
 arch/sandbox/Kconfig                          |   1 +
 arch/x86/configs/efi_defconfig                |   1 -
 commands/Kconfig                              |   8 +-
 commands/oftree.c                             |  14 +-
 common/Kconfig                                |  22 +-
 common/booti.c                                |  14 +-
 common/bootm.c                                |  14 +-
 common/filetype.c                             |   3 +-
 common/oftree.c                               |  22 +-
 include/filetype.h                            |   1 +
 include/of.h                                  |  37 ++-
 63 files changed, 447 insertions(+), 274 deletions(-)
 create mode 100644 arch/arm/lib32/atags.c

-- 
2.39.5



