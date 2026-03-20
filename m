Delivery-date: Fri, 20 Mar 2026 09:55:26 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w3Vde-002yD0-1w
	for lore@lore.pengutronix.de;
	Fri, 20 Mar 2026 09:55:26 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w3Vde-0007ix-2S
	for lore@pengutronix.de; Fri, 20 Mar 2026 09:55:26 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=8WzG2V3kFilB9f6vU20yVMW4rcqdIDZY0kz2nnTpKXw=; b=gL3uhDmlFL5+6CYFzeWDR661cC
	8cYgsQph5zN0kDMhZ25aXytAmJUkB59w8Wl7MmzfPgVIteK7UVtnk5XEYWPxfBlvSAsF6InAiQrQK
	EmOjAjzQD37b1IfuwhVjQxAfAZgs3ITnELxVO0LE0k0rVT/0tDYFTDdO/ZDjqhG/WRhypWg0jW9P1
	A2kx12o1JZfIjh8NKYnTG9TkOMFLywVSE9/2QjEBCWt/mb2BPF6sMxbzqR45CrQ3eErM7ggcS8Tc/
	bW/oTEI+OSmylUea6Pea79RhCYUp69gen4Z5Y1eOo/UA1nXIbZYJ2/u7OPvOLo8jhSrZv8wSaUYCD
	2hnOHI5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w3Vd8-0000000CPxV-2ykq;
	Fri, 20 Mar 2026 08:54:54 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w3Vd6-0000000CPx9-0v7W
	for barebox@lists.infradead.org;
	Fri, 20 Mar 2026 08:54:53 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w3Vd4-0007dk-Hu; Fri, 20 Mar 2026 09:54:50 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w3Vd4-001DIi-1B;
	Fri, 20 Mar 2026 09:54:50 +0100
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w3Vd4-0000000GKZ7-14TA;
	Fri, 20 Mar 2026 09:54:50 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri, 20 Mar 2026 09:54:49 +0100
Message-ID: <20260320085449.3891812-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260316-compressed-firmware-v1-6-d9712142881e@pengutronix.de>
References: <20260316-compressed-firmware-v1-6-d9712142881e@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260320_015452_281425_C8E1000D 
X-CRM114-Status: UNSURE (   9.82  )
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
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] fixup! firmware: Add compressed firmware symbols for PBL
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add missing dependency to build the compressed firmware files also for
fw-external-y firmware.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 firmware/Makefile | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/firmware/Makefile b/firmware/Makefile
index 00412042b7..7e433a1824 100644
--- a/firmware/Makefile
+++ b/firmware/Makefile
@@ -93,9 +93,10 @@ fwzdep-n = $$(if $$(wildcard $(FIRMWARE_DIR)/$$*),$(fwobjdir)/$$*.z)
 .SECONDEXPANSION:
 # .gen.S files depend on compressed firmware for correct size computation
 $(patsubst %.gen.o,$(obj)/%.gen.S, $(obj-pbl-y) $(pbl-y)): $(obj)/%.gen.S: $(fwzdep-n)
+$(patsubst %.extgen.o,$(obj)/%.extgen.S, $(pbl-fwext-y)): $(obj)/%.extgen.S: $(fwzdep-n)
 # The .o files depend on the binaries directly if available; the .S files don't.
 $(patsubst %.gen.o,$(obj)/%.gen.pbl.o, $(obj-pbl-y) $(pbl-y)): $(obj)/%.gen.pbl.o: $(fwdep-required-n) $(fwzdep-n)
-$(patsubst %.extgen.o,$(obj)/%.extgen.pbl.o, $(pbl-fwext-y)): $(obj)/%.extgen.pbl.o: $(fwdep-required-n)
+$(patsubst %.extgen.o,$(obj)/%.extgen.pbl.o, $(pbl-fwext-y)): $(obj)/%.extgen.pbl.o: $(fwdep-required-n) $(fwzdep-n)
 # For barebox proper, firmware existance is either checked here
 # or in driver code by checking whether size != 0
 $(patsubst %.gen.o,$(obj)/%.gen.o, $(obj-pbl-y)): $(obj)/%.gen.o: $(fwdep-required-$(CONFIG_MISSING_FIRMWARE_ERROR))
-- 
2.47.3



