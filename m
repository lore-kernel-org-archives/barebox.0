Delivery-date: Thu, 01 Sep 2022 12:43:27 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oThfR-003PJo-OW
	for lore@lore.pengutronix.de; Thu, 01 Sep 2022 12:43:27 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oThfS-0002S2-Et
	for lore@pengutronix.de; Thu, 01 Sep 2022 12:43:27 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=+irAzef650nzm3tNbx4Cwy3DqwrELKfYYko7nXifjOM=; b=ZdUDFoviJ9Eu+xOXD30z/BBB51
	6KpBywlrsJONDIQp/OKynIenr0JyJmda9DRvmCNzuaayS+VGepv98qOdJw9spfYKNow2uUiCxg55j
	rz3DljaFKW6KXVmPc+QiqbCiKIneX5sAGMa2takWIlK+XWji1gyXoVGJpKA9E8CVrEnq/C0o/coOJ
	oJcCnWOHwGpTJC/isLawiRDlLZoh2zcrUYhGXxbHIaG7ZXJYFYk3BT1eqj/u3VHrSkMeHWFmVUK5L
	wsptkShwmmiBa6cP+oOcXNhYkD+g1uFArapWebV8ogU8/a1dyYkKc3VvPvHG0SInRter5f9KsZ5gG
	Pd0ERnfA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oThdr-00B5qM-Qd; Thu, 01 Sep 2022 10:41:47 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oThdm-00B5mi-Kg
	for barebox@lists.infradead.org; Thu, 01 Sep 2022 10:41:44 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1oThdj-00028R-10; Thu, 01 Sep 2022 12:41:39 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oThdg-003HUu-Ey; Thu, 01 Sep 2022 12:41:38 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oThdh-000iVk-N9; Thu, 01 Sep 2022 12:41:37 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu,  1 Sep 2022 12:41:36 +0200
Message-Id: <20220901104136.171051-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220901_034142_701828_7006EC25 
X-CRM114-Status: GOOD (  12.73  )
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
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH master] ARM: sync_caches_for_execution: don't flush disabled data cache
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We unconditionally clean and then invalidate D-cache entries in
sync_caches_for_execution by calling arm_early_mmu_cache_flush().

The function afterwards takes care to invalidate the I-cache.

This misbehaves though when the D-Cache contains stale dirty
entries for currently executing code. Most boards avoid this
pitfall, because barebox_arm_entry calls
arm_early_mmu_cache_invalidate() and sync_caches_for_execution()
is only called afterwards. But for some boards,
relocate_to_current_adr() is called before barebox_arm_entry and
various board code works around this by calling
arm_early_mmu_cache_invalidate() first.

Make this unnecessary by not flushing the data cache when it's disabled
and instead only invalidate the I-Cache.

This fixes a hang observed on a serial-booted i.MX6Q rev 1.5
executing relocate_to_current_adr() -> sync_caches_for_execution()
from On-Chip SRAM.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/cpu/common.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm/cpu/common.c b/arch/arm/cpu/common.c
index 8cfcc8f6ce7a..5ccacf204751 100644
--- a/arch/arm/cpu/common.c
+++ b/arch/arm/cpu/common.c
@@ -23,6 +23,12 @@
  */
 void sync_caches_for_execution(void)
 {
+	/* if caches are disabled, don't do data cache maintenance */
+	if (!(get_cr() & CR_C)) {
+		icache_invalidate();
+		return;
+	}
+
 	/*
 	 * Despite the name arm_early_mmu_cache_flush not only flushes the
 	 * data cache, but also invalidates the instruction cache.
-- 
2.30.2



