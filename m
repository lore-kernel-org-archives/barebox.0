Delivery-date: Thu, 06 Nov 2025 16:19:03 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vH1lP-00Fynt-2A
	for lore@lore.pengutronix.de;
	Thu, 06 Nov 2025 16:19:03 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vH1lL-0006hn-TK
	for lore@pengutronix.de; Thu, 06 Nov 2025 16:19:03 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=8WTDE3tdDMkshIQxbnjroEqf7Ywwg/rqBzSUiDnzMG8=; b=IXSANpMtmztWy+nJU4aQCDdI2x
	gaLd8kWFp27mV3k8n+KXibC5MjJcACk4SVtA5gtltH4r5LlJ9II2qZ0g/BlqHLx28F1eGy32ylzRs
	xKNpyztjPV8e1Fejp3B2mw4h183jCscDYzj49LGdd6jHpCgo7vqIHeG9lE5BZSoT80shBiXKUDgmK
	74Ta+/12dou65wiOKyfAznEJWUhZ8FcJR+/swJPLHm4gtkwGMEGrsd9IMUQ1AtY8TfDZDu77GlFK2
	TJ42ZvFEFHrF4T8tox0CfotQGBBmAdFEpg/t93HPZAb0gOuQ9q7BdlaYHK95EBJBKJfUyBqAnjN2S
	zV8DzBgQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vH1kf-0000000FnGE-3Ew3;
	Thu, 06 Nov 2025 15:18:17 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vH1kc-0000000FnAW-0clj
	for barebox@lists.infradead.org;
	Thu, 06 Nov 2025 15:18:16 +0000
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <jre@pengutronix.de>)
	id 1vH1kY-0005tl-VH; Thu, 06 Nov 2025 16:18:10 +0100
From: Jonas Rebmann <jre@pengutronix.de>
Date: Thu, 06 Nov 2025 16:18:04 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251106-tlv-signature-v3-7-5d00ed378e75@pengutronix.de>
References: <20251106-tlv-signature-v3-0-5d00ed378e75@pengutronix.de>
In-Reply-To: <20251106-tlv-signature-v3-0-5d00ed378e75@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, 
 Jonas Rebmann <jre@pengutronix.de>
X-Mailer: b4 0.15-dev-7abec
X-Developer-Signature: v=1; a=openpgp-sha256; l=1041; i=jre@pengutronix.de;
 h=from:subject:message-id; bh=MR7EzFItX275m+2F7CmYKdGgq8XVQXVOXgBy5Dzr4t0=;
 b=owGbwMvMwCV2ZcYT3onnbjcwnlZLYsjk2aPLdlnBV//zNauQwsavyZ9NZnbvnGLULzDl98uXj
 LM+v3EN7ihlYRDjYpAVU2SJVZNTEDL2v25WaRcLM4eVCWQIAxenAExk5QmG/z5fO/qTt2Z/2Xtm
 UXjk/ud6v17f+l9x03tOgl/zsZJlBy4xMrz/evuhu2FW3gaHC3+23X3wyeGOwc7fE8zlfs1bq2S
 0/AsfAA==
X-Developer-Key: i=jre@pengutronix.de; a=openpgp;
 fpr=0B7B750D5D3CD21B3B130DE8B61515E135CD49B5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251106_071814_195529_1E5E9C80 
X-CRM114-Status: GOOD (  10.68  )
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
X-Spam-Status: No, score=-3.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v3 07/17] commands: tlv: Error out on invalid TLVs
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

TLV parsing happens in the TLV drivers probe function
(tlv_probe_from_magic()) but register_device() does not propagate
errors from match(), always returning zero.

match() however ensures that dev->driver is always NULL if an error
occurred on probe and since we're only probing the TLV driver, rely on
that as indicator of an error during TLV parsing (e.g. CRC mismatch).

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Signed-off-by: Jonas Rebmann <jre@pengutronix.de>
---
 commands/tlv.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/commands/tlv.c b/commands/tlv.c
index 6118a2947f..c01a7b0399 100644
--- a/commands/tlv.c
+++ b/commands/tlv.c
@@ -29,7 +29,7 @@ static int do_tlv(int argc, char *argv[])
 		return COMMAND_ERROR_USAGE;
 
 	tlvdev = tlv_register_device_by_path(filename, NULL);
-	if (IS_ERR(tlvdev)) {
+	if (IS_ERR(tlvdev) || tlvdev->dev.driver == NULL) {
 		printf("Could not open \"%s\": %m\n", filename);
 		return COMMAND_ERROR;
 	}

-- 
2.51.2.535.g419c72cb8a



