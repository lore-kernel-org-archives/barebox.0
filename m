Delivery-date: Mon, 12 Apr 2021 09:19:59 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lVqrX-0003iz-2z
	for lore@lore.pengutronix.de; Mon, 12 Apr 2021 09:19:59 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lVqrV-0005PO-Ps
	for lore@pengutronix.de; Mon, 12 Apr 2021 09:19:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=0r54LVN5WhVab//Dm5FRFwYQY8KRNcPGGFOdo+Co2jo=; b=S/wv/kf5+S6m/vELjz8I33ZLC
	QmOxBiLy+5cqQYPBzWWmF/Jdi+BkmbbUPXIFJWeFH495zquElQcVY8kYzXIaLixfMOR4+kceM7ZwK
	3/Vq2Agr9pcV0SffhklhETO8Dm+vsY6YWtHmAnFnpXlSvYXwm/zUbWaMs+iiI8L2x45sZGSzpUkCu
	cdZ6F0A9wJMkR6ea1lux6FHE3yYDkw84WXtDByk8qwYoyAWzB7B6vAQGg8WrwsRBG7TTygy4CR4Iy
	79PQewZ64yrLJCGJgWtDcU4Vr7n6S8b3FJtVwBZYYHCXEfiscbgcw4oV15AZQ3Cjzb5181jCyF84D
	x5YwINFCw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lVqq7-005wP9-BW; Mon, 12 Apr 2021 07:18:31 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lVqol-005vuz-Sp
 for barebox@desiato.infradead.org; Mon, 12 Apr 2021 07:17:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=GIabUIxsIT3eC7PHTzKktU/JDEJ2kFJ6bN6L+r6sgOg=; b=3tzFp2TOVSSCqcSMWr/Ci+RiJ1
 HbF2SQPIZX+PfYq9kwpBVKRQsnbmRzYJ1j6FILE0WJuQ1HOY+SbMoCF580dIlH2iWThzwtckId85E
 BPRihi1cQrv5cjTYCsoIGUidEocx5t6VAI8h1Gyx1NZCgf2VWvk9kaM8wruLtGVywn4hmZB1cxMwk
 Gwu9KnYIRSUAxw9iT278LE6xkbBZv0wNnbhK/iVf8NNVke72tUGff6u2jznXN40mJ1mdlNKzvHbyO
 HFYzDaIPYQO+Wx3LWt3tIkYHMYbifjL4CO474gEpAUGdmNGToGrmJDUHb4ejDwsw3Vxxw3t9TvZMR
 KmwrqZXA==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lVqoj-005vHA-HF
 for barebox@lists.infradead.org; Mon, 12 Apr 2021 07:17:06 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lVqoa-0004HD-2T; Mon, 12 Apr 2021 09:16:56 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lVqoZ-0002fM-6Z; Mon, 12 Apr 2021 09:16:55 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Mon, 12 Apr 2021 09:16:35 +0200
Message-Id: <20210412071651.8769-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210412071651.8769-1-a.fatoum@pengutronix.de>
References: <20210412071651.8769-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210412_001705_587060_D238AA85 
X-CRM114-Status: UNSURE (   9.58  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, rcz@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 01/17] kbuild: add install target
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

For CI, it could be useful to have the barebox build install the
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
index e80584b9c9dd..a13f1e792549 100644
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

