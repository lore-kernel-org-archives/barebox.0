Delivery-date: Fri, 19 Dec 2025 11:38:51 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWXsp-00DAgb-0a
	for lore@lore.pengutronix.de;
	Fri, 19 Dec 2025 11:38:51 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWXsU-0006dN-Bf
	for lore@pengutronix.de; Fri, 19 Dec 2025 11:38:51 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aqWl25baLo55L+9QCWRU0UyaGEkg6QGawXW+kbIUYSE=; b=lVyxDkuv5joFHw
	AU3ql/L9IsEgwPbaxBcbFNIaVLLwKxRH76i30Sc72mmQMKD0mCVs0anX/cUMyKkqGEKzgirwKFaXb
	paw02q15qOZazqd4UW0vlTI68V6B/8HrgMoGDrRDBrCFfqfqwLp/evnolx0quUEAdAzSPnwQqovD4
	uPSbY0LyizgrZCHlTthUp6hv7esWH8TMT09H6WuhBnq8tMvqNbEGpvIrt79/kQWaqHV13FdmQ9FdG
	dnywjrgHBEjcYX3DkuevOAWkzOtcbmq3mI56ANF31V6ltFvlcLRyHAQpJjc9vkGHtb1katqqS9W/p
	I2fsKrnvtDWX8M2O3GFw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWXrO-0000000A6VX-2yu8;
	Fri, 19 Dec 2025 10:37:22 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWXqy-0000000A63f-2YEN
	for barebox@bombadil.infradead.org;
	Fri, 19 Dec 2025 10:36:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=aqWl25baLo55L+9QCWRU0UyaGEkg6QGawXW+kbIUYSE=; b=mxnsVhVpMRJK5SnEExH4F+DLBc
	x8LLibUq7nW73qucjvnA/4dchOPO0cVc5y9HJaYfgXhYjZcRJyBwFGzrBHIb4KdcJrOOkkMq11P6Z
	RNDDFOMEb6R08u3uVlSlmm1F6CdtpepiRKrTeUFU6xB6ljAtHjD9PNrUfLi436txUNAR/hAAAaQ5o
	eg78x8rmEU3txATtB9BDsNZ2//SB2wTdRK6rXFq+hSR++JsqcnT8n1zqTfW3AVfpA40kFvIlGBkdO
	D78l6mtkJam7LNmCCBBoepf9bUQAV5JSNJK5XNs5TZSZo8kHcdJyaQrOTlLBQENoOHwBOeS19LcUq
	pzoy/mUw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWWzQ-0000000AbBy-0RXK
	for barebox@lists.infradead.org;
	Fri, 19 Dec 2025 09:41:40 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWXqr-0004dr-Jx; Fri, 19 Dec 2025 11:36:49 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWXqr-006RVJ-1J;
	Fri, 19 Dec 2025 11:36:49 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWXVi-0000000320L-1rMD;
	Fri, 19 Dec 2025 11:14:58 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Fri, 19 Dec 2025 10:21:18 +0100
Message-ID: <20251219101453.2806980-43-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251219101453.2806980-1-a.fatoum@pengutronix.de>
References: <20251219101453.2806980-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251219_094136_304726_6AB361F6 
X-CRM114-Status: UNSURE (   9.44  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2025.09.y 42/49] ARM: k3: am62l: fix dependencies on k3img input files
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Sascha Hauer <s.hauer@pengutronix.de>

Apart from the barebox image itself the k3img tool has several other
input files. Add proper dependencies on them to make sure the image
is rebuilt when one of the input files changes.

Link: https://lore.barebox.org/20251202-k3-deps-v1-4-68404d3b2c70@pengutronix.de
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
(cherry picked from commit f1739aa759f076ecdea8ebe1d792db98c6d0ab68)
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 images/Makefile.k3 | 12 ++++++++++--
 1 file changed, 10 insertions(+), 2 deletions(-)

diff --git a/images/Makefile.k3 b/images/Makefile.k3
index bb49c0a9548a..7e779193b190 100644
--- a/images/Makefile.k3
+++ b/images/Makefile.k3
@@ -118,8 +118,16 @@ quiet_cmd_k3_am62lx_tiboot3_image = K3_am62lx_tiboot3_IMG   $@
 $(obj)/%.k3_am62x_img: $(obj)/% scripts/k3img FORCE
 	$(call if_changed,k3_am62x_image)
 
-$(obj)/%.k3_am62lx_img: $(obj)/% scripts/k3img FORCE
+$(obj)/%.k3_am62lx_img: $(obj)/% scripts/k3img FORCE \
+		$(TFA_BL31_am62lx)				\
+		$(INNERDATA_am62lx)				\
+		$(SYSFW_am62lx_hs_fs)				\
+		$(SYSFWDATA_am62lx)				\
+		$(AM62L_TIBOOT3_OPTEE)
 	$(call if_changed,k3_am62lx_image)
 
-$(obj)/%.k3_am62lx_tiboot3_img: $(obj)/% scripts/k3img FORCE
+$(obj)/%.k3_am62lx_tiboot3_img: $(obj)/% scripts/k3img FORCE 	\
+		$(SYSFW_am62lx_hs_fs)				\
+		$$(TFA_BL1_$$(@F))				\
+		$(INNERDATA_am62lx)
 	$(call if_changed,k3_am62lx_tiboot3_image)
-- 
2.47.3



