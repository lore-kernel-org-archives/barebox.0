Delivery-date: Mon, 31 May 2021 08:57:05 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lnbrF-0002fg-Ch
	for lore@lore.pengutronix.de; Mon, 31 May 2021 08:57:05 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lnbrE-0000Bd-2r
	for lore@pengutronix.de; Mon, 31 May 2021 08:57:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o/jG960pyvpX9TwA1tZQY7ILVOuQv8VfbWgJE/gDwDQ=; b=CJj4pYkbp9DWXr
	9+EaPDk+/7G7G8TrbIl6gyPyzhFF9UMM85qL7wef2bv0q9D16W4gN1L5ykYBMs3dIWN9Qy3xED+y7
	/4hpwjHoqxgjcc3WMHK5UrXHoZf8sPaMvr+yfzZxzUhVmhcLEaYU3TW3M79Ghvs427k7AfF7QNba6
	fI8FQZQY8e+PmC6rulu3ECeeJ6xvq5cmeFWKm1tKcdDS9tKgwZPAtJNAPDqgIZxfb9Y3icMlxAFIM
	TMDpZEX3CGPcev1Oxit52Mdng4Ikb2gMd3sV0b28cLpGfmUGHxQ8m6WwmVz7+PyUsYYykI7qxv+ag
	1rFKWpiCw66gvKoqT3/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lnbpv-00B0in-OL; Mon, 31 May 2021 06:55:43 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lnbpe-00B0d5-Jq
 for barebox@lists.infradead.org; Mon, 31 May 2021 06:55:28 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lnbpa-0007yd-IK; Mon, 31 May 2021 08:55:22 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lnbpZ-0003ff-Oo; Mon, 31 May 2021 08:55:21 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 31 May 2021 08:55:08 +0200
Message-Id: <20210531065520.12385-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210531065520.12385-1-a.fatoum@pengutronix.de>
References: <20210531065520.12385-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210530_235526_669730_A97C067E 
X-CRM114-Status: GOOD (  10.19  )
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
Subject: [PATCH v2 01/13] kbuild: add install target
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

