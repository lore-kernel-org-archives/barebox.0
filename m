Delivery-date: Thu, 01 Dec 2022 15:56:14 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p0kyz-007Wlq-Cx
	for lore@lore.pengutronix.de; Thu, 01 Dec 2022 15:56:13 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p0kyy-0002sc-MR
	for lore@pengutronix.de; Thu, 01 Dec 2022 15:56:13 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=iX9VdAraD0c6drk6/zjr0FcKFDSbOf7y1pEmALvsII4=; b=DX+dsiPmKLeItkzoqYquIDFKsd
	bc8q55kUc3oOW2GNyPpGCDnnVPFGHgvHuy6St7yN8O7T2ccSFoRGDd88GqGYYQUfVEndN65NCc/LK
	n3anQNLG1LSDZDT92IO2ehr7qc3gTZwEdgBjZkEJOpxZQIOfBtwworXuRcbVKJzY5V1x2zYHJY6Fv
	+sj26btiQT3fYUcQLPPAubEmbqcin0kzRQ3M1bIRPqoSgj9YSr/Vv4n3iNWMPElMxVexQJ3swIxIJ
	z8+3sWYPkXzxg1AW+7XZKW6jXIOg+Gs4+xCovCzuQJsNCSmovcZNEHJeg5OkgnWbcYaxcB/AEyI7o
	gHsq6ttg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p0kxJ-0083tv-1V; Thu, 01 Dec 2022 14:54:29 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p0kxE-0083re-Uu
	for barebox@lists.infradead.org; Thu, 01 Dec 2022 14:54:26 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1p0kxA-0002Ry-Hf
	for barebox@lists.infradead.org; Thu, 01 Dec 2022 15:54:20 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1p0kx9-001bSx-4X
	for barebox@lists.infradead.org; Thu, 01 Dec 2022 15:54:19 +0100
Received: from mfe by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1p0kx9-00BMml-7W
	for barebox@lists.infradead.org; Thu, 01 Dec 2022 15:54:19 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Thu,  1 Dec 2022 15:54:18 +0100
Message-Id: <20221201145418.2709053-1-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221201_065425_023872_9DD7B423 
X-CRM114-Status: GOOD (  10.48  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] firmware: Makefile: fix firmware file dependency tracking
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Commit 663894d99c64 ("firmware: refactor firmware/Makefile") aligned the
barebox code with the kernel code. This commit replaced the usage of
$(fw-external-y) by $(obj-pbl-y) and added the '.gen.o' suffix directly
but didn't adapted the patsubst logic for tracking the binary firmware
files. As result a firmware binary file update is not recognized by make
and and won't make into the final binary. This commit fixes this and so
an update will be recognized automatically without require a 'make
clean' before.

Fixes: 663894d99c64 ("firmware: refactor firmware/Makefile")
Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 firmware/Makefile | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/firmware/Makefile b/firmware/Makefile
index f6ff5b831b..da341871d6 100644
--- a/firmware/Makefile
+++ b/firmware/Makefile
@@ -79,11 +79,11 @@ $(obj)/%.sum: $(obj)/% FORCE
 clean-files += *.sha.bin *.sum
 
 # The .o files depend on the binaries directly; the .S files don't.
-$(patsubst %,$(obj)/%.gen.o, $(obj-pbl-y)): $(obj)/%.gen.o: $(fwdir)/%
+$(patsubst %.gen.o,$(obj)/%.gen.o, $(obj-pbl-y)): $(obj)/%.gen.o: $(fwdir)/%
 
 # The same for pbl:
-$(patsubst %,$(obj)/%.gen.pbl.o, $(obj-pbl-y)): $(obj)/%.gen.pbl.o: $(fwdir)/%
-$(patsubst %,$(obj)/%.extgen.pbl.o, $(pbl-y)): $(obj)/%.extgen.pbl.o: $(fwdir)/%
+$(patsubst %.gen.o,$(obj)/%.gen.pbl.o, $(obj-pbl-y)): $(obj)/%.gen.pbl.o: $(fwdir)/%
+$(patsubst %.gen.o,$(obj)/%.extgen.pbl.o, $(pbl-y)): $(obj)/%.extgen.pbl.o: $(fwdir)/%
 
 pbl-y := $(addsuffix .extgen.o, $(fw-external-y))
 
-- 
2.30.2



