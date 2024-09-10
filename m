Delivery-date: Tue, 10 Sep 2024 11:06:38 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1snwpa-0036Wi-35
	for lore@lore.pengutronix.de;
	Tue, 10 Sep 2024 11:06:38 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1snwpZ-0006u8-Mw
	for lore@pengutronix.de; Tue, 10 Sep 2024 11:06:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=A8vaQfuZZepLbBcTNDc5ziQy753HVLKq9+2S8sCNSDY=; b=KZ+z645H7fRqzkjlY6OL1kFwIa
	QJjBPbMVV48GOhXe0LjBsmeLUdNqx3xSxyoOzqRUIwI6g94KUnIg1I+4bHG9/fRoiTa9LRkl1Cqu2
	jZqnJqMvppxck36rBhy0eXpoOtxKSrXpQcgn9Nvd7EndFWwuzjJfmhD66bv3Ce1iqKDLTgT+He4EA
	j6FHRz0o2AEAOOrOpaM7lBTmcOCfrTUlJo/n3gky3TEBPM8Qye05QA/0MEbvfht/576xgUPl1Jad5
	Hovv/NqHvtrRDNUrMw9k0wi1Y5tyePP/p0rWW6QfOljinoWkn3tmkXPSORzgSLUuOSQBsfsBB9fVx
	LQmCZmhg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1snwp5-00000004w20-13Hx;
	Tue, 10 Sep 2024 09:06:07 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1snwmg-00000004vOi-2zQJ
	for barebox@lists.infradead.org;
	Tue, 10 Sep 2024 09:03:40 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1snwmf-0004zs-54; Tue, 10 Sep 2024 11:03:37 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1snwme-006rCW-Ok; Tue, 10 Sep 2024 11:03:36 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1snwme-000NOF-0i;
	Tue, 10 Sep 2024 11:03:36 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: lst@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 10 Sep 2024 11:03:36 +0200
Message-Id: <20240910090336.89871-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240910_020338_775154_E6F632CA 
X-CRM114-Status: GOOD (  11.61  )
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
Subject: [PATCH] ARM: errata: document errata workarounds
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Give all errata workaround functions a kernel-doc listing the title of
the erratum and what CPUs it affects for documentation purposes.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/include/asm/errata.h | 83 +++++++++++++++++++++++++++++++++++
 1 file changed, 83 insertions(+)

diff --git a/arch/arm/include/asm/errata.h b/arch/arm/include/asm/errata.h
index 9bb0e650c7ee..58b38be7e4d9 100644
--- a/arch/arm/include/asm/errata.h
+++ b/arch/arm/include/asm/errata.h
@@ -1,6 +1,17 @@
 /* SPDX-License-Identifier: GPL-2.0-or-later */
 /* SPDX-FileCopyrightText: 2014 Lucas Stach, Pengutronix */
 
+/**
+ * enable_arm_errata_709718_war() - Workaround ARM erratum 709718
+ *
+ * Enables workaround for "Load and Store operations on the shared device
+ * memory regions may not complete in program order".
+ *
+ * This is described as part of the i.MX51 errata at
+ * https://www.nxp.com/docs/en/errata/IMX51CE.pdf
+ *
+ * Affects Cortex-A8 as found in i.MX51
+ */
 static inline void enable_arm_errata_709718_war(void)
 {
 	__asm__ __volatile__ (
@@ -13,6 +24,14 @@ static inline void enable_arm_errata_709718_war(void)
 	);
 }
 
+/**
+ * enable_arm_errata_716044_war() - Workaround ARM erratum 716044
+ *
+ * Enables workaround for "Under very rare circumstances, an uncacheable
+ * load multiple instruction might cause a deadlock"
+ *
+ * Affects Cortex-A9 revisions before r2p0
+ */
 static inline void enable_arm_errata_716044_war(void)
 {
 	__asm__ __volatile__ (
@@ -22,6 +41,13 @@ static inline void enable_arm_errata_716044_war(void)
 	);
 }
 
+/**
+ * enable_arm_errata_742230_war() - Workaround ARM erratum 742230
+ *
+ * Enables workaround for "DMB operation may be faulty"
+ *
+ * Affects Cortex-A9 revisions before r2p3
+ */
 static inline void enable_arm_errata_742230_war(void)
 {
 	__asm__ __volatile__ (
@@ -31,6 +57,14 @@ static inline void enable_arm_errata_742230_war(void)
 	);
 }
 
+/**
+ * enable_arm_errata_743622_war() - Workaround for ARM erratum 743622
+ *
+ * Enables workaround for "Faulty hazard checking in the Store Buffer may
+ * lead to data corruption"
+ *
+ * Affects Cortex-A9 revisions before r3p0
+ */
 static inline void enable_arm_errata_743622_war(void)
 {
 	__asm__ __volatile__ (
@@ -40,6 +74,15 @@ static inline void enable_arm_errata_743622_war(void)
 	);
 }
 
+/** enable_arm_errata_751472_war() - Workaround for ARM erratum 751472
+ *
+ * Workaround for "Interrupted ICIALLUIS may prevent completion of
+ * broadcasted operation"
+ *
+ * Affects Cortex-A9 revisions before r3p0
+ *
+ * NOTE: Must be first set in secure mode
+ */
 static inline void enable_arm_errata_751472_war(void)
 {
 	__asm__ __volatile__ (
@@ -49,6 +92,15 @@ static inline void enable_arm_errata_751472_war(void)
 	);
 }
 
+/** enable_arm_errata_761320_war() - Workaround for ARM erratum 761320
+ *
+ * Enables workaround for "Full cache line writes to the same memory region
+ * from at least two processors might deadlock processor"
+ *
+ * Affects Cortex-A9 revisions before r4p0
+ *
+ * NOTE: Must be first set in secure mode
+ */
 static inline void enable_arm_errata_761320_war(void)
 {
 	__asm__ __volatile__ (
@@ -58,6 +110,16 @@ static inline void enable_arm_errata_761320_war(void)
 	);
 }
 
+/**
+ * enable_arm_errata_794072_war() - Workaround for ARM erratum 794072
+ *
+ * Enables workaround for "A short loop including a DMB instruction might
+ * cause a denial of service"
+ *
+ * Affects Cortex-A9 all revisions
+ *
+ * NOTE: Must be first set in secure mode
+ */
 static inline void enable_arm_errata_794072_war(void)
 {
 	__asm__ __volatile__ (
@@ -67,6 +129,16 @@ static inline void enable_arm_errata_794072_war(void)
 	);
 }
 
+/**
+ * enable_arm_errata_845369_war() - Workaround for ARM erratum 845369
+ *
+ * Enables workaround for "Under very rare timing circumstances, transitioning
+ * into streaming mode might create a data corruption"
+ *
+ * Affects Cortex-A9 all revisions
+ *
+ * NOTE: Must be first set in secure mode
+ */
 static inline void enable_arm_errata_845369_war(void)
 {
 	__asm__ __volatile__ (
@@ -76,6 +148,17 @@ static inline void enable_arm_errata_845369_war(void)
 	);
 }
 
+/**
+ * enable_arm_errata_cortexa8_enable_ibe() - Enable Invalidate BTB Enable bit
+ * workaround
+ *
+ * Enables use of BPIALL for hardening the branch predictor as workaround
+ * for CVE 2017-5715 "Spectre v2".
+ *
+ * Affects Cortex-A8 all revisions.
+ *
+ * NOTE: Must be first set in secure mode
+ */
 static inline void enable_arm_errata_cortexa8_enable_ibe(void)
 {
 	__asm__ __volatile__ (
-- 
2.39.2



