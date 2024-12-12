Delivery-date: Thu, 12 Dec 2024 09:36:21 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tLegG-0077P4-3A
	for lore@lore.pengutronix.de;
	Thu, 12 Dec 2024 09:36:21 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tLegG-000451-LK
	for lore@pengutronix.de; Thu, 12 Dec 2024 09:36:21 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=raRlkOe8Ztci8kcNe1gWATodd7DdRIOtmHANGLblRh4=; b=z367hlzFVxPbbyse0pXOtwhUU7
	CD+VL+Ep2qNK0AIzF9n7kuNrnrV2TUsZuQH+7HWmIQjFQASGg8rSsjeAfq6szvq4xE1G48tCUJoFx
	mRwl0tiwfVPJnqBqJJGbWQdcVGR7MuEm6eePgaIpuM6rV5BnftFZjT/H/YAfKHqbESuAI+Umgwzgg
	eYDvFjS47S6I038rM+47/uocvQ7FxU7aIQMJqVI7Yf4IP9UNsuPV5LFZP68Pbq+/cbSIWwK0KCiJI
	FUndHE+aJ3puP0g3PS99fMKkL05OGb7Urk72wmYoNZ/z10jKVVjMhfccBiZrZhSU0aBc05VIE14Z9
	o4BhPR5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tLefq-0000000HKHg-3fji;
	Thu, 12 Dec 2024 08:35:54 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tLeai-0000000HJDG-2DaO
	for barebox@lists.infradead.org;
	Thu, 12 Dec 2024 08:30:38 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tLeah-00034b-92; Thu, 12 Dec 2024 09:30:35 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tLeag-0030Eq-0z;
	Thu, 12 Dec 2024 09:30:35 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tLeag-00AkAx-3D;
	Thu, 12 Dec 2024 09:30:35 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 12 Dec 2024 09:30:31 +0100
Message-Id: <20241212083033.2560690-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20241212083033.2560690-1-a.fatoum@pengutronix.de>
References: <20241212083033.2560690-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241212_003036_580515_4B8DF77E 
X-CRM114-Status: GOOD (  11.22  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 3/5] images: fix missing FORCE prerequisite
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

With the recent changes updating fixdep, we now get warnings when we
miss the FORCE prerequisite:

  images/Makefile:151: FORCE prerequisite is missing

Fix this by adding the missing FORCE and using if_changed as intended.
While at it, we also make the output a little less verbose, so the
SHIPPED/DELETE output is omitted:

  SHIPPED images/barebox-nxp-imx8mm-evk.img
  SHIPPED images/barebox-prt-prt8mm.img
  DELETE  images/barebox-tqma93xx.img
  images built:
  barebox-nxp-imx8mm-evk.img
  barebox-prt-prt8mm.img
  ** barebox-tqma93xx.img skipped due to missing firmware **

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 images/Makefile | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/images/Makefile b/images/Makefile
index f781ecb59ccb..5ce563a426ab 100644
--- a/images/Makefile
+++ b/images/Makefile
@@ -144,11 +144,13 @@ $(obj)/barebox.z: $(obj)/../barebox.bin FORCE
 
 missing_fw = $(strip $(wildcard $(obj)/$(FILE_$(@F)).missing-firmware $(basename $(obj)/$(FILE_$(@F))).missing-firmware))
 
+quiet_cmd_report_missing_fw = # no message as we collect info for later
+      cmd_report_missing_fw = $(if $2,cat $2 >$@.missing-firmware;$(cmd_delete),rm -f $@.missing-firmware;$(cmd_shipped))
+
 .SECONDEXPANSION:
-$(obj)/%.img: $(obj)/$$(FILE_$$(@F))
+$(obj)/%.img: $(obj)/$$(FILE_$$(@F)) FORCE
 	$(Q)if [ -z $(FILE_$(@F)) ]; then echo "FILE_$(@F) empty!"; false; fi
-	$(Q)$(if $(missing_fw),cat $(missing_fw) >$@.missing-firmware,rm -f $@.missing-firmware)
-	$(call if_changed,$(if $(missing_fw),delete,shipped))
+	$(call if_changed,report_missing_fw,$(missing_fw))
 
 board = $(srctree)/arch/$(SRCARCH)/boards
 objboard = $(objtree)/arch/$(SRCARCH)/boards
-- 
2.39.5



