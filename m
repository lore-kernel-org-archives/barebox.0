Delivery-date: Wed, 09 Jul 2025 11:56:00 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uZRWy-00FfIe-2I
	for lore@lore.pengutronix.de;
	Wed, 09 Jul 2025 11:56:00 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uZRWy-0002KX-63
	for lore@pengutronix.de; Wed, 09 Jul 2025 11:56:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Xt5BqVJd+mm6QvXvobZEitaqcJOjp/8crEEG4OFG9JA=; b=gkjBIFbsaUMYzm3FlTB0jpcAGI
	i97dFFj/dXOMlTVrGgVwd5BWBbUqv2mcxAZlDnn6uS3ZiDiqsq5PrfJnIuqYUvvFUfsXYLQk62M4I
	B+9m7oMH+F310VIHem50D9VhVKtv+yt88YCiLBvRj9dp1fFcfl2QS2dslde7Znel5tIRorjA0bQEj
	hvhGpKaIzqkhDsKvQ8VJ2Ly/eDbTpMNX5QYQ8wvTMxTjpGPMYLJy40RHPVYudrNu6vBiLYPKLfbIJ
	9o5Hv7p1iIxbCSfIlFYAY6niIP3jHQrVIDNpsaxGx2y1NJfxSZfdYnbUq2ZwbzRr/X8f4eMzgiee6
	Zlx3WQ2g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZRWG-00000008C0h-3r53;
	Wed, 09 Jul 2025 09:55:16 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZPS4-00000007qQU-3G1Q
	for barebox@lists.infradead.org;
	Wed, 09 Jul 2025 07:42:50 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1uZPS1-0004OB-LL; Wed, 09 Jul 2025 09:42:45 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1uZPS1-007XrR-1X;
	Wed, 09 Jul 2025 09:42:45 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1uZPS0-00CYlz-2u;
	Wed, 09 Jul 2025 09:42:45 +0200
From: Stefan Kerkmann <s.kerkmann@pengutronix.de>
Date: Wed, 09 Jul 2025 09:42:43 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250709-fix-hab-equal-hash-writes-v1-1-6a59bb4b5ff1@pengutronix.de>
X-B4-Tracking: v=1; b=H4sIAHIdbmgC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDI1MDcwNL3bTMCt2MxCTd1MLSxBwgqzhDt7wosyS1WNfCPNnIwtzSKDE5zUQ
 JqL+gKBWoGGx2dGxtLQBSCnUxawAAAA==
X-Change-ID: 20250709-fix-hab-equal-hash-writes-87c28792acf4
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Stefan Kerkmann <s.kerkmann@pengutronix.de>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250709_004248_816354_67B0BD46 
X-CRM114-Status: GOOD (  11.57  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] hab: writing the same srk hash is not an error
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Before this commit writing the same srk hash twice failed with an error.
This is inconsistent with other invocations of the hab tool e.g.: `hab
-l -p` doesn't fail if the lockdown bit is already set.

So let's align the behavior by only throwing an error if we attempt to
write a srk hash that is different from the one that is already burned.

Signed-off-by: Stefan Kerkmann <s.kerkmann@pengutronix.de>
---
 drivers/hab/hab.c | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/drivers/hab/hab.c b/drivers/hab/hab.c
index 4e9f96c98b619d12d069986aa688b92d48f3442c..1c747e8a3e52fdfc0240b5794fbffe9a2a562bb2 100644
--- a/drivers/hab/hab.c
+++ b/drivers/hab/hab.c
@@ -470,12 +470,13 @@ int imx_hab_write_srk_hash(const void *buf, unsigned flags)
 	}
 
 	if (imx_hab_srk_hash_valid(cursrk)) {
-		char *str = "Current SRK hash is valid";
-
 		if (flags & IMX_SRK_HASH_FORCE) {
-			pr_warn("%s, ignoring\n", str);
+			pr_warn("Current SRK hash is valid, ignoring\n");
+		} else if (memcmp(cursrk, buf, SRK_HASH_SIZE) == 0) {
+			pr_info("Current SRK hash is equal, nothing to do\n");
+			return 0;
 		} else {
-			pr_err("%s, refusing to burn again\n", str);
+			pr_err("Current SRK hash is different, refusing to burn again\n");
 			return -EEXIST;
 		}
 	}

---
base-commit: f49c873d7ec78a2df7bd3c7a86f5372fb1666517
change-id: 20250709-fix-hab-equal-hash-writes-87c28792acf4

Best regards,
-- 
Stefan Kerkmann <s.kerkmann@pengutronix.de>



