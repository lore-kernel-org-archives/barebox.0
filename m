Delivery-date: Tue, 16 Jan 2024 10:11:49 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rPfU3-001fXw-39
	for lore@lore.pengutronix.de;
	Tue, 16 Jan 2024 10:11:49 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rPfU4-00047c-KX
	for lore@pengutronix.de; Tue, 16 Jan 2024 10:11:49 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=mbSrPQNyZb/s6+7RkV36SIzsWgDLF8WvjKZJ8AWUswU=; b=2w9o/wIuQOAywF
	Z/hZMiC3Mo2qdodF5xODIDtvocFz7QChe/gBeToGuVwJFTUnPUc+SBj1ugbD6pWFdEwqJOZ/flFxl
	F0SCx6iNYL1JMjU3ulsOffivw3lgnfvlJTejpM5o4CrjBmKN+lxspBJiCPlbQBEzPhiFGStw+CLvh
	EZiSs72bROdGZWg/rp90psajGszA5TbHBYP3V76DlwAEIpLLjA61MEJ2F64rgQbBdSGeAeE7xIF2F
	5a9WKoZ1nKUgPtrau2Vqf5NL+DFmFZf9o7WcmdYc44gKINlZZ319/V7aoVjCBZhIUbEtT7MZ/M1U7
	pSIownsNIaRxEoxCfrPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rPfSl-00BVKz-2Y;
	Tue, 16 Jan 2024 09:10:27 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rPfSh-00BVKc-3D
	for barebox@lists.infradead.org;
	Tue, 16 Jan 2024 09:10:26 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rPfSg-00042W-3x; Tue, 16 Jan 2024 10:10:22 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rPfSf-000CW0-Nk; Tue, 16 Jan 2024 10:10:21 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rPfSf-00CT7e-21;
	Tue, 16 Jan 2024 10:10:21 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 16 Jan 2024 10:10:20 +0100
Message-Id: <20240116091020.2971875-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240116_011025_148214_38D247BF 
X-CRM114-Status: GOOD (  12.07  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, Marco Felsch <m.felsch@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] firmware: fix external firmware dependencies
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

A pbl is not rebuilt when the firmware file specified in fw-external-y
changes.

$(patsubst %.gen.o,$(obj)/%.extgen.pbl.o, $(pbl-y)) is executed before
pbl-y actually contains the contents of fw-external-y. Also we want to
do the subsitution only for the external firmware files, not for pbl-y.

To fix this use a intermediate variable pbl-fwext-y instead of pbl-y and
initialize it before usage.

Also, use $$(wildcard $(fwdir)/%) instead of $(fwdir)/% to successfully
compile when the external firmware file is missing.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 firmware/Makefile | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/firmware/Makefile b/firmware/Makefile
index 4c68817fc6..27504e9442 100644
--- a/firmware/Makefile
+++ b/firmware/Makefile
@@ -42,6 +42,7 @@ fwobjdir := $(objtree)/firmware
 
 pbl-y     := $(addsuffix .gen.o, $(pbl-firmware-y))
 obj-pbl-y := $(addsuffix .gen.o, $(firmware-y))
+pbl-fwext-y := $(addsuffix .extgen.o, $(fw-external-y))
 
 FWNAME    = $(patsubst $(obj)/%.extgen.S,%,$(patsubst $(obj)/%.gen.S,%,$@))
 FWSTR     = $(subst /,_,$(subst .,_,$(subst -,_,$(FWNAME))))
@@ -104,9 +105,9 @@ $(patsubst %.gen.o,$(obj)/%.gen.o, $(obj-pbl-y)): $(obj)/%.gen.o: $(fwdir)/%
 # The same for pbl:
 .SECONDEXPANSION:
 $(patsubst %.gen.o,$(obj)/%.gen.pbl.o, $(obj-pbl-y) $(pbl-y)): $(obj)/%.gen.pbl.o: $$(wildcard $(fwdir)/%)
-$(patsubst %.gen.o,$(obj)/%.extgen.pbl.o, $(pbl-y)): $(obj)/%.extgen.pbl.o: $(fwdir)/%
+$(patsubst %.extgen.o,$(obj)/%.extgen.pbl.o, $(pbl-fwext-y)): $(obj)/%.extgen.pbl.o: $$(wildcard $(fwdir)/%)
 
-pbl-y += $(addsuffix .extgen.o, $(fw-external-y))
+pbl-y += $(pbl-fwext-y)
 
 targets := $(patsubst $(obj)/%,%, \
                                 $(shell find $(obj) -name \*.gen.S 2>/dev/null))
-- 
2.39.2



