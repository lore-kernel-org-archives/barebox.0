Delivery-date: Tue, 02 Dec 2025 16:59:05 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vQSmP-007DFK-2X
	for lore@lore.pengutronix.de;
	Tue, 02 Dec 2025 16:59:05 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vQSmP-0005R7-73
	for lore@pengutronix.de; Tue, 02 Dec 2025 16:59:05 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=itwuoFQcx6tvq6XWYacsifjErbY4fMMywjBAiFGZb08=; b=K94Sw2f65fJxgY7QVnRi85Fo6y
	Qa6t2M96nAU2VnO9z54OSHpBcyDLEtIve4yEgM9IUmn9nJNvHpAlrIRct/Vg+VoWP8kZb6FDu4nG3
	4oFZDOomYnY0gwo64NERbWvgKLHZuUSa9gzlmfiP3fYLHR2YReWHoPy+dQPrAV6auzBfQka6in33V
	8SZUFZUbs30cKmkFBS86rBekAbhz0KhnmgncZHww7UPRw8qaTpOBvvY/gu9YPUjbKxYX7QP5Z+aQ0
	4HRf01l0TTRv5R0Iifq9dbtmXK4rgWi7+HUbdfXPtjQaJ5j6HLUql/klHDpNfYdRm+5VPkoDyZGPq
	VusmPwJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQSly-00000005aPt-1Bwp;
	Tue, 02 Dec 2025 15:58:38 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQSlv-00000005aOU-2lH8
	for barebox@lists.infradead.org;
	Tue, 02 Dec 2025 15:58:36 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vQSlm-0005Bq-6L; Tue, 02 Dec 2025 16:58:26 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vQSll-003dT0-35;
	Tue, 02 Dec 2025 16:58:25 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vQSll-00000006wsy-3dHt;
	Tue, 02 Dec 2025 16:58:25 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 02 Dec 2025 16:58:28 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251202-k3-deps-v1-4-68404d3b2c70@pengutronix.de>
References: <20251202-k3-deps-v1-0-68404d3b2c70@pengutronix.de>
In-Reply-To: <20251202-k3-deps-v1-0-68404d3b2c70@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1764691105; l=1293;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=Y4WGs0JUUtEnFJ19rzSXoxyMoesWOIq3wFb2rryI94M=;
 b=4l/wTkpDdwmbip9/lN4WdoGv9lziJHES5FGJHYWaH7pSvbbtFrMOmz/Gs3sW3LiOVq0537JzQ
 pXf+g1cO56kCaYekn5BV02Z92JDE7glSUsVeudJdmexJJzkpzTkfLPG
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251202_075835_702877_3ADE62BE 
X-CRM114-Status: UNSURE (   9.62  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 4/4] ARM: k3: am62l: fix dependencies on k3img input files
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Apart from the barebox image itself the k3img tool has several other
input files. Add proper dependencies on them to make sure the image
is rebuilt when one of the input files changes.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 images/Makefile.k3 | 12 ++++++++++--
 1 file changed, 10 insertions(+), 2 deletions(-)

diff --git a/images/Makefile.k3 b/images/Makefile.k3
index caaca1fbc9a1e90921ba873d61c7627d1e8f5e19..789f77722abd4128fa2ed31ca5009da00a25cd61 100644
--- a/images/Makefile.k3
+++ b/images/Makefile.k3
@@ -126,8 +126,16 @@ quiet_cmd_k3_am62lx_tiboot3_image = K3_am62lx_tiboot3_IMG   $@
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



