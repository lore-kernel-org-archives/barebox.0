Delivery-date: Mon, 18 May 2026 11:27:59 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wOuGV-0015Ex-1F
	for lore@lore.pengutronix.de;
	Mon, 18 May 2026 11:27:59 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wOuGU-0005b6-OM
	for lore@pengutronix.de; Mon, 18 May 2026 11:27:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=L3J+uaLfrYbiux+XPy3G+QvT5nT2QDAl46bfe2SZxOo=; b=k77u7qC95eft1Dcak9ddOSZl7n
	UY9KE/uXwbH71EmnuUK5vytDoffgk7cXPjAh7OFa2c4tVLABGsbpUph5s+VndqlgunYxQjjRY3PHr
	UYEkBMRDOS0YZibN0W0zLNrdaJGTCcHGOpC4VOjSEzuipp8wkno80xxNVfWredm+dSvuVVCAtSPnL
	kD8g/OUnMTGmwJAOF1kI0RWq4/anCV9YXGCTKOfNj/UbzOeFQYOC968ZrHLMQ3+5bq9TUCVH2Vlnx
	NS037q0pvmO4XgW0ycKOj2ENnLtf0lSLId4fkfsc9udk8NeDjW1FVHoU64F2hZbt1PgPKPXkjt63C
	/JnvV5WQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOuFO-0000000F0ds-0i81;
	Mon, 18 May 2026 09:26:50 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOuFI-0000000F0cp-16uW
	for barebox@bombadil.infradead.org;
	Mon, 18 May 2026 09:26:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=L3J+uaLfrYbiux+XPy3G+QvT5nT2QDAl46bfe2SZxOo=; b=IHmwT07NgIiuHwdeV7VV1LvzyL
	sS+L1bpFov0/+AYqqKqs5S+mngLSQNWYCJkS7HFpkMxSYwp49keupSwIJquWjRsZXCepS+b3yXbyR
	b3EZkOwwKTtc8wACEIcU7lD+Olr/2FTqUsmmQq6O3LZOcbDnob3jPQ+xAicJKqCOFMX25JISBXLvp
	+F8mUPpk6A9oKA4sQtk4nWXM3igrV7rkXtLMEYTRX9hTtiU4ufV/ZoI/58QhCk7Uku4IB2zzrA/UK
	g4fi92Kur/HB16QyXs4Lpa9432R+8zFu+i/9epsIRt3gvdQTjqk99kGrCqu4hD6UXLrEOHNLGgYDs
	M4Yf+xvw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOuFE-0000000AZNF-217u
	for barebox@lists.infradead.org;
	Mon, 18 May 2026 09:26:42 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wOuFD-0005KN-L4; Mon, 18 May 2026 11:26:39 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wOuFD-000ZJl-03;
	Mon, 18 May 2026 11:26:39 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wOuFD-0000000CUMc-24Wp;
	Mon, 18 May 2026 11:26:39 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 18 May 2026 11:26:38 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260518-k3-am62x-image-size-fixes-v1-1-ab723d79922d@pengutronix.de>
References: <20260518-k3-am62x-image-size-fixes-v1-0-ab723d79922d@pengutronix.de>
In-Reply-To: <20260518-k3-am62x-image-size-fixes-v1-0-ab723d79922d@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1779096399; l=1147;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=wPcK2AodmndSyBz1OlzevGeeBqvrxhtEtzFpGS38R2s=;
 b=k9z0ZvP2l4xYM39Mt+VzUGfHlxjGt1iZ732HpxIto33j+kd6zDX3oN1b7d1KuL44NGNiix+rM
 nvhfGPmKYPMCOABwKmr3OBsXyGZ8ktZ7JSz+11b23T4bbSqbod1QbHC
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260518_102641_075605_99F1A28E 
X-CRM114-Status: GOOD (  10.00  )
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
Subject: [PATCH 1/3] ARM: k3: am62x: move stack to end of SRAM
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Our available SRAM ends at 0x43c3e000. Move the initial stack the to not
waste 0x1000 bytes of scarce SRAM.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/am625-sk/entry-r5.S   | 2 +-
 arch/arm/boards/beagleplay/entry-r5.S | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boards/am625-sk/entry-r5.S b/arch/arm/boards/am625-sk/entry-r5.S
index e724e5550c..c0ece084a0 100644
--- a/arch/arm/boards/am625-sk/entry-r5.S
+++ b/arch/arm/boards/am625-sk/entry-r5.S
@@ -3,7 +3,7 @@
 
 #define SRAM_BASE 0x43c00000
 
-#define STACK_TOP SRAM_BASE + 0x3d000
+#define STACK_TOP SRAM_BASE + 0x3e000
 
 .arm
 .section .text_head_entry_start_am625_sk_r5;
diff --git a/arch/arm/boards/beagleplay/entry-r5.S b/arch/arm/boards/beagleplay/entry-r5.S
index 712f0f4b8c..8f961651eb 100644
--- a/arch/arm/boards/beagleplay/entry-r5.S
+++ b/arch/arm/boards/beagleplay/entry-r5.S
@@ -3,7 +3,7 @@
 
 #define SRAM_BASE 0x43c00000
 
-#define STACK_TOP SRAM_BASE + 0x3d000
+#define STACK_TOP SRAM_BASE + 0x3e000
 
 .arm
 .section .text_head_entry_start_beagleplay_r5;

-- 
2.47.3



