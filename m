Delivery-date: Wed, 21 Jan 2026 12:38:10 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1viWXK-003kKY-1s
	for lore@lore.pengutronix.de;
	Wed, 21 Jan 2026 12:38:10 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1viWXJ-00044Y-Hw
	for lore@pengutronix.de; Wed, 21 Jan 2026 12:38:10 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=cuBJMMuMF/JrsxIRphNl+dgWO2r4guTtBu6GbhyfGZY=; b=lOowU0YSIhktcQm5Rkp3LAd/DM
	RQdAUlBjYrdtnXqKjH73iVscNfMZPlaFVRHz5Q1SVELUjc3RnIN7wu7aEivr2E8CCnLMbpY7Bh55a
	Kl96rSiSmyRv/S10DCMN7YQR7q9A0iAxux+BbWrnYAmdv2sSwtNtvt4E6F0yZ7XVlUoMLprsn48va
	OCU3D7Jp522KhxnItNbI30ODi1JUWGOyh/TDoowSTFb4wNnJOpe75+0Cu7bYF4HJYpDbyhroAAKsM
	t9AYFQXFwyOWbb0xesoHroHEKoidk0HGeMmFhyzog4H/yGABvEJ9M7VI6O2b84liAYkKSuckUj8Co
	mCCvsRpQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viWWw-00000005MSa-34aF;
	Wed, 21 Jan 2026 11:37:46 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viWWs-00000005MQf-32UG
	for barebox@lists.infradead.org;
	Wed, 21 Jan 2026 11:37:44 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1viWWq-0003rK-3Q; Wed, 21 Jan 2026 12:37:40 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1viWWq-001k2C-1r;
	Wed, 21 Jan 2026 12:37:39 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1viWWq-00000006G8i-24jS;
	Wed, 21 Jan 2026 12:37:39 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 21 Jan 2026 12:36:47 +0100
Message-ID: <20260121113738.1485637-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260121113738.1485637-1-a.fatoum@pengutronix.de>
References: <20260121113738.1485637-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260121_033742_787473_6FADE1D9 
X-CRM114-Status: GOOD (  12.70  )
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
Subject: [PATCH 2/4] ARM: sm: fix repeated call to of_add_reserve_entry on every fixup
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

A fixup can be applied arbitrarily often through boot fallback, dry runs
or of_diff command runs.

There's no need to add the reserve entry at fixup time, so just add it
in sm_init.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/cpu/sm.c | 36 +++++++++++-------------------------
 1 file changed, 11 insertions(+), 25 deletions(-)

diff --git a/arch/arm/cpu/sm.c b/arch/arm/cpu/sm.c
index 53f5142b63f9..a7edd9f565c2 100644
--- a/arch/arm/cpu/sm.c
+++ b/arch/arm/cpu/sm.c
@@ -185,30 +185,6 @@ int armv7_secure_monitor_install(void)
 	return 0;
 }
 
-/*
- * of_secure_monitor_fixup - reserve memory region for secure monitor
- *
- * We currently do not support putting the secure monitor into onchip RAM,
- * hence it runs in SDRAM and we must reserve the memory region so that we
- * won't get overwritten from the Kernel.
- * Beware: despite the name this is not secure in any way. The Kernel obeys
- * the reserve map, but only because it's nice. It could always overwrite the
- * secure monitor and hijack secure mode.
- */
-static int of_secure_monitor_fixup(struct device_node *root, void *unused)
-{
-	unsigned long res_start, res_end;
-
-	res_start = (unsigned long)_stext;
-	res_end = (unsigned long)__bss_stop;
-
-	of_add_reserve_entry(res_start, res_end);
-
-	pr_debug("Reserved memory range from 0x%08lx to 0x%08lx\n", res_start, res_end);
-
-	return 0;
-}
-
 static enum arm_security_state bootm_secure_state;
 
 static const char * const bootm_secure_state_names[] = {
@@ -229,7 +205,17 @@ const char *bootm_arm_security_state_name(enum arm_security_state state)
 
 static int sm_init(void)
 {
-	of_register_fixup(of_secure_monitor_fixup, NULL);
+	/*
+	 * Reserve memory region for secure monitor
+	 *
+	 * We currently do not support putting the secure monitor into onchip RAM,
+	 * hence it runs in SDRAM and we must reserve the memory region so that we
+	 * won't get overwritten from the Kernel.
+	 * Beware: despite the name this is not secure in any way. The Kernel obeys
+	 * the reserve map, but only because it's nice. It could always overwrite the
+	 * secure monitor and hijack secure mode.
+	 */
+	of_add_reserve_entry((ulong)_stext, (ulong)__bss_stop);
 
 	globalvar_add_simple_enum("bootm.secure_state",
 				  (unsigned int *)&bootm_secure_state,
-- 
2.47.3



