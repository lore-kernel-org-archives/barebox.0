Delivery-date: Mon, 02 Dec 2024 13:46:36 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tI5oy-0035Ww-05
	for lore@lore.pengutronix.de;
	Mon, 02 Dec 2024 13:46:36 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tI5ox-00078J-Vw
	for lore@pengutronix.de; Mon, 02 Dec 2024 13:46:36 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=raRlkOe8Ztci8kcNe1gWATodd7DdRIOtmHANGLblRh4=; b=q/TpRgLh92wjgh0queDyKzss+i
	j8SjdznbDYx2Tpxa0B1JXgcQJAQZ+/3B+5IhYZSQfl1G9gl2G0nCGSTA4BAYaODwUPDe46XZ9LBCq
	xIQFRLqsa0n/UIGB1V9c3F69mbFE2ihx9Ty1l4wD0ANehb4QYvk/uRQLYkFJn8OYYXhTYD8TBiqqp
	t6ccRfOjY5AgfcUNXhtnioduaVO3V0COgyCh5FUtSigzvYXtCM5HCgImwHDjDfwTqu5mnAdCk0hMS
	G4aQQrpja9GuZuFHtSxlgfo0B9+FwulOWgCCy+4VM7FFfgKgrJW7CKIrmPqgNiA+yBndrwmwzTHVL
	QZFUKaLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tI5oZ-000000067ol-02Hj;
	Mon, 02 Dec 2024 12:46:11 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tI5mg-000000067LJ-4953
	for barebox@lists.infradead.org;
	Mon, 02 Dec 2024 12:44:16 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tI5mX-0006Cg-Md; Mon, 02 Dec 2024 13:44:05 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tI5mW-001Ibg-2O;
	Mon, 02 Dec 2024 13:44:05 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tI5mX-007cft-1M;
	Mon, 02 Dec 2024 13:44:05 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  2 Dec 2024 13:44:02 +0100
Message-Id: <20241202124404.1814203-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20241202124404.1814203-1-a.fatoum@pengutronix.de>
References: <20241202124404.1814203-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241202_044415_025607_11050047 
X-CRM114-Status: GOOD (  11.14  )
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
X-Spam-Status: No, score=-6.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 3/5] kbuild: images: fix missing FORCE prerequisite
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



