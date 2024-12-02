Delivery-date: Mon, 02 Dec 2024 13:46:35 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tI5ox-0035WO-0o
	for lore@lore.pengutronix.de;
	Mon, 02 Dec 2024 13:46:35 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tI5ox-00076w-5z
	for lore@pengutronix.de; Mon, 02 Dec 2024 13:46:35 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=8NRx9JI8QxpB0oKC31N7vfuMC/NlhbcszB9haBBny9Q=; b=C2NtgpA4TFP+bvzccDo4LTnXkT
	1TfMmpXLCmbfmwEs05baAjOjbgqLB05h6kLJNURjKkFus92ToljCPYIYL8DDzQkJi/d39AQZ/FJm9
	2PPOiQlHssZE5y2ZQKH2eYcK1xJHVfP3ey2BtbEptld+HrxJf0tPKC8FtSY/HIEj0CTbOEcfko3oM
	yTyvM26KqbGwJkMyA2s99hRKiEpN7iLPcN4R7EOyW8iynmspPsfnavgs7BiZ2nfoKtV4FD92vCoOo
	VucZeSVPMUSjR8+/87zaerRuF/Pho2MgeNvQ4rqtMTYqGDRi02Y4HaIat+Ddj2SGvw+rdthWYvfEp
	Coccj20g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tI5oX-000000067n5-3DPu;
	Mon, 02 Dec 2024 12:46:09 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tI5mZ-000000067Ha-0Gfa
	for barebox@lists.infradead.org;
	Mon, 02 Dec 2024 12:44:09 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tI5mX-0006Cf-Lb; Mon, 02 Dec 2024 13:44:05 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tI5mW-001Ibd-2F;
	Mon, 02 Dec 2024 13:44:05 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tI5mX-007cft-1E;
	Mon, 02 Dec 2024 13:44:05 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  2 Dec 2024 13:44:01 +0100
Message-Id: <20241202124404.1814203-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20241202124404.1814203-1-a.fatoum@pengutronix.de>
References: <20241202124404.1814203-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241202_044407_118619_8EF5410B 
X-CRM114-Status: GOOD (  11.59  )
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
Subject: [PATCH 2/5] kbuild: images: don't check for missing FW if file didn't change
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The information about the missing firmware is contained in an ELF
section and the ELF file is dependency to the $(obj)/%.pblb: $(obj)/%.pbl
rule.

We can thus don't need to rerun the missing firmware check if the
input file hasn't been changed since the last time.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 images/Makefile      | 3 +--
 scripts/Makefile.lib | 6 ++++++
 2 files changed, 7 insertions(+), 2 deletions(-)

diff --git a/images/Makefile b/images/Makefile
index 80ea582728a5..f781ecb59ccb 100644
--- a/images/Makefile
+++ b/images/Makefile
@@ -76,8 +76,7 @@ $(obj)/%.elf: $(pbl-lds) $(BAREBOX_PBL_OBJS) $(obj)/piggy.o $(obj)/sha_sum.o FOR
 
 $(obj)/%.pblb: $(obj)/%.pbl FORCE
 	$(call if_changed,objcopy_bin,$(*F))
-	$(Q)$(OBJCOPY) -O binary --only-section=.missing_fw $< $@.missing-firmware
-	$(Q)[ -s $@.missing-firmware ] || rm -f $@.missing-firmware
+	$(call if_changed,check_missing_fw,$@,$<)
 	$(call if_changed,check_file_size,$@,$(CONFIG_BAREBOX_MAX_IMAGE_SIZE))
 
 #
diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
index b698161f43f6..e2d0168550f8 100644
--- a/scripts/Makefile.lib
+++ b/scripts/Makefile.lib
@@ -533,6 +533,12 @@ quiet_cmd_check_file_size = CHKFILESIZE $2
 		exit 1 ;						\
 	fi
 
+# Check for missing firmware
+quiet_cmd_check_missing_fw = # no message as we collect info for later
+      cmd_check_missing_fw = set -e;						    \
+	$(OBJCOPY) -O binary --only-section=.missing_fw	$3 $2.missing-firmware;	    \
+	[ -s $2.missing-firmware ] || rm -f $2.missing-firmware
+
 quiet_cmd_imximage__S_dcd= DCD_S   $@
 cmd_imximage_S_dcd=						\
 (								\
-- 
2.39.5



