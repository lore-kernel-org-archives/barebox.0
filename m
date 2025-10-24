Delivery-date: Fri, 24 Oct 2025 12:25:31 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vCEzD-00BHeb-0d
	for lore@lore.pengutronix.de;
	Fri, 24 Oct 2025 12:25:31 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vCEzC-0004s9-Lg
	for lore@pengutronix.de; Fri, 24 Oct 2025 12:25:31 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=g1b7ZeZs1/rPxfdSYHC+lkcAXcSGGeiqIkyvrBpxDzg=; b=Rb6QzaPf4S5Xpg//IWDkO1E8je
	D8HGSYPyGPM3AGmgtta8sj6g8nnNZBUqH8ymx+O+utzog+WGaK2/9T/Uq+YNuknOWXS8iI1yXIB+s
	O0GsaVijqq6/a/Wn9Jabom4gU0N/GoSFXUmahnpCJB4Y8fj/P3aEyjngQLxFBd+Pa4sp707wwsJHr
	Ulc2bBfrD8F3tVJ/esm51Vf89HsqCjNwXKvQ0Y6IDbKScvEcA2LhyKf2X4jacsVW99XCkP1Jywg7W
	PjRo7Gj4p0OE8oIbmD0n46+H/S0S3wSnQrNa9ADQ/7Dxg2CPqXT7EGlweGdQ5OXSqhmiFRs0KoqLb
	Xi5nC9DQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vCEya-000000091HV-0p6t;
	Fri, 24 Oct 2025 10:24:52 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vCEyX-000000091Gi-3vls
	for barebox@lists.infradead.org;
	Fri, 24 Oct 2025 10:24:51 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vCEyV-0004gv-MZ; Fri, 24 Oct 2025 12:24:47 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vCEyV-005D2m-1e;
	Fri, 24 Oct 2025 12:24:47 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vCEyV-000000021mD-1keW;
	Fri, 24 Oct 2025 12:24:47 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 24 Oct 2025 12:24:43 +0200
Message-ID: <20251024102446.483330-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251024_032449_970258_1A7617C7 
X-CRM114-Status: GOOD (  10.14  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: Rockchip: mention tee-raw.bin by name
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We already mention tee.bin in the sentence before, so mention
tee-raw.bin as well by name for completeness.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Documentation/boards/rockchip.rst | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/boards/rockchip.rst b/Documentation/boards/rockchip.rst
index 8bce92865e3e..eb1bbe81819a 100644
--- a/Documentation/boards/rockchip.rst
+++ b/Documentation/boards/rockchip.rst
@@ -88,8 +88,8 @@ With these barebox can be compiled as:
 
 .. note:: When compiling OP-TEE yourself, use the tee.bin image as it has
   a header telling barebox where to load the image to.
-  Without the header, barebox will fallback to the hardcoded addresses expected
-  by the vendor blobs in the rkbin repository.
+  The tee-raw.bin image lacks a header and thus barebox will fallback to the hardcoded
+  addresses expected by the vendor blobs in the rkbin repository.
 
 .. note:: The RK3566 and RK3568 seem to share the bl31 and bl32 firmware files,
   whereas the memory initialization blob is different.
-- 
2.47.3



