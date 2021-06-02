Delivery-date: Wed, 02 Jun 2021 16:38:46 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1loS18-0003wb-MX
	for lore@lore.pengutronix.de; Wed, 02 Jun 2021 16:38:46 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1loS13-0007sU-Gk
	for lore@pengutronix.de; Wed, 02 Jun 2021 16:38:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o/jG960pyvpX9TwA1tZQY7ILVOuQv8VfbWgJE/gDwDQ=; b=AQD+Re2jIOfITi
	VF87DCc8uOm7fDasvGBHcvdGf25C8k2sCWggVyXTdjRIhRPOmnwBr7QW1lXMl9EHhQEQBNve9HvIe
	eO6vMYFTuXSg0hvVDoJehOpNG23Ycxli7UuKmASmtCm165kFHQLQjMegBPKnogQ9cmW1Ce90WHEs0
	+y0NK9bdsfGR4fpREoSdKVjE+Yznpm3YB1oFr5ge7N+KSNPMgjYdK8k5nfUHcDTop3345v7sLkCZa
	2yJ4gU8eWg+teYOAatrxUdFyRUA+hlUvro0Lkgv0oih4MQDH+dHJc8jpzWaMDzALS17OL2R6R9vIk
	YcsD/HWkAcTf5wPUckXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1loRz8-004blh-Kr; Wed, 02 Jun 2021 14:36:42 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1loRxY-004ayB-Ua
 for barebox@lists.infradead.org; Wed, 02 Jun 2021 14:35:06 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1loRxW-0006tM-87; Wed, 02 Jun 2021 16:35:02 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1loRxV-0006hK-Ky; Wed, 02 Jun 2021 16:35:01 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  2 Jun 2021 16:34:41 +0200
Message-Id: <20210602143453.23097-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210602143453.23097-1-a.fatoum@pengutronix.de>
References: <20210602143453.23097-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210602_073505_041599_04258A74 
X-CRM114-Status: GOOD (  10.10  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v3 01/13] kbuild: add install target
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

For CI, it would be useful to have the barebox build install the
artifacts into a directory. Add an install target that does this.

Example usage: make install INSTALL_PATH=install/

Unlike Linux, we don't set INSTALL_PATH to a default value, because
most barebox-enabled boards don't have barebox in a file system.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Makefile        | 14 ++++++++++++++
 images/Makefile |  5 +++++
 2 files changed, 19 insertions(+)

diff --git a/Makefile b/Makefile
index ec1770042549..65e3f6f80c72 100644
--- a/Makefile
+++ b/Makefile
@@ -880,6 +880,20 @@ ifndef CONFIG_PBL_IMAGE
 	$(call cmd,check_file_size,$@,$(CONFIG_BAREBOX_MAX_IMAGE_SIZE))
 endif
 
+install:
+ifeq ($(INSTALL_PATH),)
+	@echo 'error: INSTALL_PATH undefined' >&2
+	@exit 1
+endif
+ifdef CONFIG_PBL_IMAGE
+	$(Q)$(MAKE) $(build)=images __images_install
+	@install -t "$(INSTALL_PATH)" barebox.bin
+else
+	@install -t "$(INSTALL_PATH)" $(KBUILD_IMAGE)
+endif
+
+PHONY += install
+
 # By default the uImage load address is 2MB below CONFIG_TEXT_BASE,
 # leaving space for the compressed PBL image at 1MB below CONFIG_TEXT_BASE.
 UIMAGE_BASE ?= $(shell printf "0x%08x" $$(($(CONFIG_TEXT_BASE) - 0x200000)))
diff --git a/images/Makefile b/images/Makefile
index ee1347f6b6bd..c185982c17ed 100644
--- a/images/Makefile
+++ b/images/Makefile
@@ -204,6 +204,11 @@ images: $(image-y-path) $(flash-link) $(flash-list) FORCE
 	@echo "images built:"
 	@for i in $(image-y); do echo $$i; done
 
+__images_install: images
+	@for i in $(image-y-path); do install -t "$(INSTALL_PATH)" $$i; done
+
+PHONY += __images_install
+
 $(flash-link): $(link-dest) FORCE
 	$(call if_changed,ln)
 
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

