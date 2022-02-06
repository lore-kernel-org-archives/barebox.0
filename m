Delivery-date: Sun, 06 Feb 2022 16:09:37 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nGjAV-007RHB-Eq
	for lore@lore.pengutronix.de; Sun, 06 Feb 2022 16:09:37 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nGjAU-0000rJ-9i
	for lore@pengutronix.de; Sun, 06 Feb 2022 16:09:34 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=s+W2bPm5UtcDQWZ7gY0Er0aV+6cUZQSONa6MV9tfCDU=; b=is/WbRuLt2sLVL
	cbWq9LL88b33xAywPLzs71jH2+u+s/Q435fV/2vw+dJTLdB4/vZy3whr11iQCBiNd6KjwDoAXno0c
	4cVPwUjlX1HqAjGF9OrLS172NVh2O0WiT8ejHJ5HJt2c/2XWCo2Kwt7uTcManwO5ncdhaW5BCWQPE
	YKlxb1RuDrSQOymgC9KZF/anhsm26xk140DC54M3TPZkl0p+0O6ZJjM6oF55Jq24bD9Cckrxa52eM
	/Qt1ZWmMoW9vrub5X6CbzwYtnnC/iWroma9Wu2CDnIySoxVKJ1c5m0AtPUDkOSTyQMe9VqzimysHS
	wZ/HlWVjygcSyH7WpeOw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nGj8d-008LvH-O5; Sun, 06 Feb 2022 15:07:39 +0000
Received: from mxout1.routing.net ([2a03:2900:1:a::a])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nGj8Z-008Lum-B2
 for barebox@lists.infradead.org; Sun, 06 Feb 2022 15:07:36 +0000
Received: from mxbox2.masterlogin.de (unknown [192.168.10.89])
 by mxout1.routing.net (Postfix) with ESMTP id AE47C3FF76;
 Sun,  6 Feb 2022 15:07:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailerdienst.de;
 s=20200217; t=1644160042;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=DwsH+bybjwXZUaQ/l+hoM+n6KOrqThhv7tW0xAOdJPc=;
 b=ttnX9DE3qLEwChKvPgnIYk9sPJm2FUVTetJczZSoNh7OQMs9yAgYKUNDSxIaEfernwIIOa
 8gz1tpugAUgvAm3WDME3HJkjalFUIlLJ/Ei2lXXVekFDk47GAfm0PP/FSQBndPy4aMfftl
 deuB0lPfq3HE5UWmurAhdKh8QEtg/dc=
Received: from localhost.localdomain (fttx-pool-80.245.75.84.bambit.de
 [80.245.75.84])
 by mxbox2.masterlogin.de (Postfix) with ESMTPSA id 2A711100681;
 Sun,  6 Feb 2022 15:07:22 +0000 (UTC)
From: Frank Wunderlich <linux@fw-web.de>
To: barebox@lists.infradead.org
Cc: Frank Wunderlich <frank-w@public-files.de>
Date: Sun,  6 Feb 2022 16:07:16 +0100
Message-Id: <20220206150716.32531-1-linux@fw-web.de>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Mail-ID: a6cdfed5-540c-4a25-8688-2cacad47eb1c
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220206_070735_582733_E806D287 
X-CRM114-Status: UNSURE (   6.75  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] Kbuild: add bareboxversion target to Makefile
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

From: Frank Wunderlich <frank-w@public-files.de>

This allows getting version string with make bareboxversion
like for linux and uboot.

Signed-off-by: Frank Wunderlich <frank-w@public-files.de>
---
 Makefile | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/Makefile b/Makefile
index 3125d628114b..4b4a92181034 100644
--- a/Makefile
+++ b/Makefile
@@ -247,7 +247,7 @@ version_h := include/generated/version.h
 clean-targets := %clean mrproper cleandocs
 no-dot-config-targets := $(clean-targets) \
 			 cscope gtags TAGS tags help% %docs \
-			 $(version_h) kernelversion outputmakefile
+			 $(version_h) bareboxversion outputmakefile
 no-sync-config-targets := $(no-dot-config-targets) install %install \
 			   kernelrelease
 
@@ -1277,6 +1277,9 @@ docs: FORCE
 	@$(SPHINXBUILD) -b html -d $(objtree)/doctrees $(srctree)/Documentation \
 		$(objtree)/Documentation/html
 
+bareboxversion:
+	@echo $(KERNELVERSION)
+
 # Single targets
 # ---------------------------------------------------------------------------
 # Single targets are compatible with:
-- 
2.25.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

