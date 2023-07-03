Delivery-date: Mon, 03 Jul 2023 11:57:39 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qGGJQ-00DNAk-U4
	for lore@lore.pengutronix.de; Mon, 03 Jul 2023 11:57:39 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qGGJO-0001XK-8k
	for lore@pengutronix.de; Mon, 03 Jul 2023 11:57:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=36xHTVudJaP32lxqoFL40syc+IABMcjj1D8z0rNY3WY=; b=piGn2Y7xpHA+ZMFZjz7BknyTTP
	P4rCs+sjpHP7PB6ig8aoD3t2YteHXhMiAw2CYNScl33k6mbZgn4rAvVX/oIjbr1VjRo1HN07gDrH7
	iNEkh1Z0Q3g13Vqwwam7dm6h8R1M4fC5mZBHnisgq0h8ZUwey3b5qShiCw6rPcGfgS4J9qYheioLf
	saaAQFvn9cF2l2tHXyhpBgVzTW7feVIe6qOwdxXnjN1WLlYvvbtz225gOhqCeSKQpTRBTU+jY4Jp5
	JUGzbkEkAhvjRSx8tHDb41bluA3I/QXQV/1ZhLTSK+XEPdDNCmypb7kSB6pCreZRCudPsY9Ar4yQS
	sDK+wT2A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qGGID-00A24t-1p;
	Mon, 03 Jul 2023 09:56:25 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qGGIA-00A23p-1z
	for barebox@lists.infradead.org;
	Mon, 03 Jul 2023 09:56:23 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qGGI8-0001Q3-PV; Mon, 03 Jul 2023 11:56:20 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qGGI8-00BltS-4c; Mon, 03 Jul 2023 11:56:20 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qGGI7-009BF4-39;
	Mon, 03 Jul 2023 11:56:19 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Rouven Czerwinski <r.czerwinski@pengutronix.de>,
	Michael Olbrich <mol@pengutronix.de>,
	=?UTF-8?q?Enrico=20J=C3=B6rns?= <e.joerns@pengutronix.de>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  3 Jul 2023 11:56:08 +0200
Message-Id: <20230703095608.2188064-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230703_025622_653704_314D371B 
X-CRM114-Status: GOOD (  12.30  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH master] kbuild: delete images with missing firmware instead of truncating
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

It may be confusing to users to be left with a 0-byte image, so let's
delete it instead. This means that every build with missing firmware will
attempt the final make targets, only to delete them at the end.

At the flip-side, there is no risk of broken images to be used later on.

Suggested-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Suggested-by: Michael Olbrich <mol@pengutronix.de>
Suggested-by: Enrico Jörns <e.joerns@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 images/Makefile      | 4 ++--
 scripts/Makefile.lib | 3 +++
 2 files changed, 5 insertions(+), 2 deletions(-)

diff --git a/images/Makefile b/images/Makefile
index e26880de50b4..c1cb56f5b189 100644
--- a/images/Makefile
+++ b/images/Makefile
@@ -136,7 +136,7 @@ missing_fw = $(strip $(wildcard $(obj)/$(FILE_$(@F)).missing-firmware $(basename
 $(obj)/%.img: $(obj)/$$(FILE_$$(@F))
 	$(Q)if [ -z $(FILE_$(@F)) ]; then echo "FILE_$(@F) empty!"; false; fi
 	$(Q)$(if $(missing_fw),cat $(missing_fw) >$@.missing-firmware,rm -f $@.missing-firmware)
-	$(call if_changed,$(if $(missing_fw),0size,shipped))
+	$(call if_changed,$(if $(missing_fw),delete,shipped))
 
 board = $(srctree)/arch/$(SRCARCH)/boards
 objboard = $(objtree)/arch/$(SRCARCH)/boards
@@ -202,7 +202,7 @@ images: $(image-y-path) $(flash-link) $(flash-list) FORCE
 	@echo "images built:"
 	@for i in $(image-y); do \
 	  if [ -s $(obj)/$$i ]; then echo $$i; \
-	  else >&2 echo "** firmware missing for $$i **"; \
+	  else >&2 echo "** $$i skipped due to missing firmware **"; \
 	  $(if $(CONFIG_MISSING_FIRMWARE_ERROR), >&2 sed 's/^/\t/' <$(obj)/$${i}.missing-firmware; missing=1;) \
 	  fi; done; if [ -n "$$missing" ]; then \
 	    echo >&2 "Firmware missing in CONFIG_MISSING_FIRMWARE_ERROR=y build"; exit 1; fi
diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
index b8fb2684421e..f04c09f9e280 100644
--- a/scripts/Makefile.lib
+++ b/scripts/Makefile.lib
@@ -239,6 +239,9 @@ endef
 quiet_cmd_0size = 0SIZE $@
 cmd_0size = : > $@
 
+quiet_cmd_delete = DELETE  $@
+      cmd_delete = rm -f $@
+
 quiet_cmd_shipped = SHIPPED $@
 cmd_shipped = cat $< > $@
 
-- 
2.39.2



