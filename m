Delivery-date: Tue, 05 Sep 2023 16:25:07 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qdWzM-005196-JL
	for lore@lore.pengutronix.de; Tue, 05 Sep 2023 16:25:07 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qdWzK-0000D5-CT
	for lore@pengutronix.de; Tue, 05 Sep 2023 16:25:07 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=1Rr+MMF0yjHUNKFa8LAW7MZft2BBCl6xyh8Ux2OWWQs=; b=iRjgNpHOStUAJVEMNtoq5WISPS
	pX+uenVOhjXXiREnI6JFLIW9t1/fstFqrCFGd5wcV9ei98dcMo7befE0PT53PxFPUxa7xE9xpT6rn
	FOOp9XujEUeGG9foG6lHDITgO674VrjdxRfTezS42WRxCPFkz0nN4fS3Cra2B4h8NKcxjYQyNt3/t
	kV4dc1QTlWGCHGe+kZ3BScgN11V0U6T/3VeEsNDeUZsEf75miaM2kvg7qrvjl3BJxtUPNzzgbbX/o
	7rPFEYoRoWRZeGPy+4kXtwTOwTbLq5yi1BpE9GFUpGqPZ1oSJRgEmO3nDvxdv7mfdzKe9+vr5h356
	E/q7T41g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qdWxs-006A7k-2n;
	Tue, 05 Sep 2023 14:23:36 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qdWxp-006A78-2F
	for barebox@lists.infradead.org;
	Tue, 05 Sep 2023 14:23:35 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qdWxm-0007XA-VJ; Tue, 05 Sep 2023 16:23:30 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qdWxm-004DgF-Il; Tue, 05 Sep 2023 16:23:30 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qdWxl-00CJZf-37;
	Tue, 05 Sep 2023 16:23:29 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: mfe@pengutronix.de,
	rcz@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue,  5 Sep 2023 16:23:28 +0200
Message-Id: <20230905142328.2935148-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230905_072333_732550_A147DD7E 
X-CRM114-Status: UNSURE (   9.23  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master] firmware: fix dependency tracking for PBL firmware files
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

$(wildcard $(fwdir)/%) was added to allow for optional firmware, but in
return it broke dependency tracking, because it was evaluated before the
static pattern rule it's a part of.

Fix the dependency tracking by only evaluating it in a secondary
expansion. That this works as expected can be verified with:

  make -p | grep 'imx8mn-bl31.bin.gen.pbl.o:.*imx8mn-bl31.bin '

Which will return no result before this patch, but with it applied, it
will correctly show the dependency. Manual touching and rebuilding also
builds the firmware now as expected:

  AS [P]  firmware/imx8mm-bl31.bin.gen.pbl.o

Fixes: 5b171b7b7eda ("firmware: turn missing firmware into linker error")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 firmware/Makefile | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/firmware/Makefile b/firmware/Makefile
index 5853950dfe4e..4fca83f808f6 100644
--- a/firmware/Makefile
+++ b/firmware/Makefile
@@ -99,7 +99,8 @@ clean-files += *.sha.bin *.sum
 $(patsubst %.gen.o,$(obj)/%.gen.o, $(obj-pbl-y)): $(obj)/%.gen.o: $(fwdir)/%
 
 # The same for pbl:
-$(patsubst %.gen.o,$(obj)/%.gen.pbl.o, $(obj-pbl-y) $(pbl-y)): $(obj)/%.gen.pbl.o: $(wildcard $(fwdir)/%)
+.SECONDEXPANSION:
+$(patsubst %.gen.o,$(obj)/%.gen.pbl.o, $(obj-pbl-y) $(pbl-y)): $(obj)/%.gen.pbl.o: $$(wildcard $(fwdir)/%)
 $(patsubst %.gen.o,$(obj)/%.extgen.pbl.o, $(pbl-y)): $(obj)/%.extgen.pbl.o: $(fwdir)/%
 
 pbl-y += $(addsuffix .extgen.o, $(fw-external-y))
-- 
2.39.2



