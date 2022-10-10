Delivery-date: Mon, 10 Oct 2022 08:14:21 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ohm3S-0033jE-O8
	for lore@lore.pengutronix.de; Mon, 10 Oct 2022 08:14:21 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ohm3Q-0001ew-NR
	for lore@pengutronix.de; Mon, 10 Oct 2022 08:14:21 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=zZn0C1ZhZidzOk3FjEaxWxQDTpJ9xvn3vPsCwO6ikAQ=; b=i3pdRhJWh17fWILrsjwphfT5nn
	+t6F9YdxTXmzcOSuSD8eEIxLluTUyXhMyxrP0nuTmgvR7Od8wRMol4yGarsKY6/80AsMn0wFtRgOn
	uOu/+R5YUCqo+rqdv77bMKYmA7P56IBCuJsBUpabQuKzJxXYX42CTW3TE96pfoKHSk+0KqtdF2VCR
	3D1fxLvmYN/1556yU87XUwyHO5zlQD/iRQyqw1oyi+VKNBLTlDs5J2Amsiqlb9bHcLTSKPGca4icw
	W8DWSxtaIzRJ72TXu4Kx6LcOQZ/KZjyeCeJ1gvu+mI6Ax78tLjOVTkz2ZaRTQjQUfyE2bu2UBS3tg
	8FINTxeA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ohm1x-00HBSQ-LD; Mon, 10 Oct 2022 06:12:49 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ohm1m-00HBNZ-T5
	for barebox@lists.infradead.org; Mon, 10 Oct 2022 06:12:40 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1ohm1l-0000wd-KX; Mon, 10 Oct 2022 08:12:37 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1ohm1k-000dYl-UX; Mon, 10 Oct 2022 08:12:36 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1ohm1j-008kJ2-VR; Mon, 10 Oct 2022 08:12:35 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: bst@pengutronix.de,
	lst@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 10 Oct 2022 08:12:34 +0200
Message-Id: <20221010061235.2084562-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221009_231238_979964_49ACB752 
X-CRM114-Status: GOOD (  14.43  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [RFT PATCH master 1/2] ARM: MXS: fix breakage for non-DT boards
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

boarddata, the third argument passed from barebox PBL to barebox proper,
is usually either a pointer to an optionally compressed flattened device tree
or a machien type integer casted to a pointer.

In order to support device trees located in the first 8192 bytes of
address space, barebox has been trying to dereference boarddata, before
falling back to treating it as integer.

This resulted in breakage as boarddata may be an integer not divisible
by 4 and thus an unaligned exception would occur.

The already existing barebox_arm_boarddata mechanism sidesteps this
issue: With it, the machine type integer is not passed as is, but the
address of a suitably aligned structure that contains it is passed
instead.

Searching for MACHINE_TYPE in arch/arm/boards shows 5 boards to be
affected in-tree, which are all fixed with this commit.

Fixes: 390bc7834ffc ("ARM: start: check for machine type last")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
@Bastian, could you give this a test on your i.MX23 board?
---
 arch/arm/boards/chumby_falconwing/lowlevel.c     | 10 +++++++++-
 arch/arm/boards/crystalfontz-cfa10036/lowlevel.c | 10 +++++++++-
 arch/arm/boards/freescale-mx23-evk/lowlevel.c    | 10 +++++++++-
 arch/arm/boards/imx233-olinuxino/lowlevel.c      | 10 +++++++++-
 arch/arm/boards/karo-tx28/lowlevel.c             | 10 +++++++++-
 5 files changed, 45 insertions(+), 5 deletions(-)

diff --git a/arch/arm/boards/chumby_falconwing/lowlevel.c b/arch/arm/boards/chumby_falconwing/lowlevel.c
index 091dd1955260..367f348ee829 100644
--- a/arch/arm/boards/chumby_falconwing/lowlevel.c
+++ b/arch/arm/boards/chumby_falconwing/lowlevel.c
@@ -7,8 +7,16 @@
 #include <mach/imx23-regs.h>
 #include <generated/mach-types.h>
 
+static struct barebox_arm_boarddata boarddata = {
+	.magic = BAREBOX_ARM_BOARDDATA_MAGIC,
+	.machine = MACH_TYPE_CHUMBY,
+};
+
 ENTRY_FUNCTION(start_chumby_falconwing, r0, r1, r2)
 {
+	void *bd = &boarddata;
+
 	arm_cpu_lowlevel_init();
-	barebox_arm_entry(IMX_MEMORY_BASE, SZ_64M, (void *)MACH_TYPE_CHUMBY);
+	barebox_arm_entry(IMX_MEMORY_BASE, SZ_64M,
+			  bd + get_runtime_offset());
 }
diff --git a/arch/arm/boards/crystalfontz-cfa10036/lowlevel.c b/arch/arm/boards/crystalfontz-cfa10036/lowlevel.c
index 92b42aa89350..794cbd89a13a 100644
--- a/arch/arm/boards/crystalfontz-cfa10036/lowlevel.c
+++ b/arch/arm/boards/crystalfontz-cfa10036/lowlevel.c
@@ -7,8 +7,16 @@
 #include <mach/imx28-regs.h>
 #include <generated/mach-types.h>
 
+static struct barebox_arm_boarddata boarddata = {
+	.magic = BAREBOX_ARM_BOARDDATA_MAGIC,
+	.machine = MACH_TYPE_CFA10036,
+};
+
 ENTRY_FUNCTION(start_cfa10036, r0, r1, r2)
 {
+	void *bd = &boarddata;
+
 	arm_cpu_lowlevel_init();
-	barebox_arm_entry(IMX_MEMORY_BASE, SZ_128M, (void *)MACH_TYPE_CFA10036);
+	barebox_arm_entry(IMX_MEMORY_BASE, SZ_128M,
+			  bd + get_runtime_offset());
 }
diff --git a/arch/arm/boards/freescale-mx23-evk/lowlevel.c b/arch/arm/boards/freescale-mx23-evk/lowlevel.c
index 62560bbff733..c795019d8b76 100644
--- a/arch/arm/boards/freescale-mx23-evk/lowlevel.c
+++ b/arch/arm/boards/freescale-mx23-evk/lowlevel.c
@@ -7,8 +7,16 @@
 #include <asm/barebox-arm.h>
 #include <mach/imx23-regs.h>
 
+static struct barebox_arm_boarddata boarddata = {
+	.magic = BAREBOX_ARM_BOARDDATA_MAGIC,
+	.machine = MACH_TYPE_MX23EVK,
+};
+
 ENTRY_FUNCTION(start_imx23_evk, r0, r1, r2)
 {
+	void *bd = &boarddata;
+
 	arm_cpu_lowlevel_init();
-	barebox_arm_entry(IMX_MEMORY_BASE, SZ_32M, (void *)MACH_TYPE_MX23EVK);
+	barebox_arm_entry(IMX_MEMORY_BASE, SZ_32M,
+			  bd + get_runtime_offset());
 }
diff --git a/arch/arm/boards/imx233-olinuxino/lowlevel.c b/arch/arm/boards/imx233-olinuxino/lowlevel.c
index 71fc379f0487..9dd45e78062b 100644
--- a/arch/arm/boards/imx233-olinuxino/lowlevel.c
+++ b/arch/arm/boards/imx233-olinuxino/lowlevel.c
@@ -11,9 +11,17 @@
 #include <mach/iomux.h>
 #include <generated/mach-types.h>
 
+static struct barebox_arm_boarddata boarddata = {
+	.magic = BAREBOX_ARM_BOARDDATA_MAGIC,
+	.machine = MACH_TYPE_IMX233_OLINUXINO,
+};
+
 ENTRY_FUNCTION(start_barebox_olinuxino_imx23, r0, r1, r2)
 {
-	barebox_arm_entry(IMX_MEMORY_BASE, SZ_64M, (void *)MACH_TYPE_IMX233_OLINUXINO);
+	void *bd = &boarddata;
+
+	barebox_arm_entry(IMX_MEMORY_BASE, SZ_64M,
+			  bd + get_runtime_offset());
 }
 
 static const uint32_t pad_setup[] = {
diff --git a/arch/arm/boards/karo-tx28/lowlevel.c b/arch/arm/boards/karo-tx28/lowlevel.c
index 28d96f3e1a5f..868218f83b86 100644
--- a/arch/arm/boards/karo-tx28/lowlevel.c
+++ b/arch/arm/boards/karo-tx28/lowlevel.c
@@ -15,9 +15,17 @@
 #include <stmp-device.h>
 #include <generated/mach-types.h>
 
+static struct barebox_arm_boarddata boarddata = {
+	.magic = BAREBOX_ARM_BOARDDATA_MAGIC,
+	.machine = MACH_TYPE_TX28,
+};
+
 ENTRY_FUNCTION(start_barebox_karo_tx28, r0, r1, r2)
 {
-	barebox_arm_entry(IMX_MEMORY_BASE, SZ_128M, (void *)MACH_TYPE_TX28);
+	void *bd = &boarddata;
+
+	barebox_arm_entry(IMX_MEMORY_BASE, SZ_128M,
+			  bd + get_runtime_offset());
 }
 
 static const uint32_t iomux_pads[] = {
-- 
2.30.2



