Delivery-date: Mon, 29 Sep 2025 10:05:12 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v38si-002La3-0C
	for lore@lore.pengutronix.de;
	Mon, 29 Sep 2025 10:05:12 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v38sh-0000fz-HN
	for lore@pengutronix.de; Mon, 29 Sep 2025 10:05:11 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=4CORjE7qsu8CAss8Ou5X/EYg5veas+mu0bSTzimBzRc=; b=yfQOY6NfPtyA+2TMQUCRjQpFed
	ZqnwtZh6YyqsAuBiazQB4w/lrjdzyoVtcNWapndmNBzCAxDcHg76qkpb7w3Wgpmhh5oS7TVdrAT77
	ZNT9WaILRasrSeeq7uJRIYV+pao5Imb82lSqU4CMNYFzsDxRWHmCBTkn3l2rkKXM6c29aiWKoQhyF
	0BBm6URaFjT/dlmj0nzI9dgxXXfyw8Lc8HDJettqVI4Y+E89yziELbuP8ihg2Z+4VBWMNtWDhOIn5
	HqBC9DHUqigk9u2H9UGCfW5WFjuYHulgmhtHCs0T6Y5GrWaNvr4YpGtBF0UjyDF2EHZ0SCIKs45ZT
	oI9k15kQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v38sD-00000001iLz-2UBP;
	Mon, 29 Sep 2025 08:04:41 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v38s9-00000001iGu-12vm
	for barebox@lists.infradead.org;
	Mon, 29 Sep 2025 08:04:39 +0000
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <jre@pengutronix.de>)
	id 1v38s6-000070-EI; Mon, 29 Sep 2025 10:04:34 +0200
From: Jonas Rebmann <jre@pengutronix.de>
Date: Mon, 29 Sep 2025 10:03:58 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250929-tlv-integration-v2-7-55f75da7e670@pengutronix.de>
References: <20250929-tlv-integration-v2-0-55f75da7e670@pengutronix.de>
In-Reply-To: <20250929-tlv-integration-v2-0-55f75da7e670@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Tobias Waldekranz <tobias@waldekranz.com>, 
 Jonas Rebmann <jre@pengutronix.de>
X-Mailer: b4 0.15-dev-7abec
X-Developer-Signature: v=1; a=openpgp-sha256; l=848; i=jre@pengutronix.de;
 h=from:subject:message-id; bh=uAe8Y/iKiu8dBPUalWqxJWutV2XkjsnwUGqfMUtws/w=;
 b=owGbwMvMwCV2ZcYT3onnbjcwnlZLYsi4ZTvBtm7ewZW8ewTaji9QksuzSuyfwNjCdOn6e+6do
 tb/rVbf7yhlYRDjYpAVU2SJVZNTEDL2v25WaRcLM4eVCWQIAxenAEwk7gEjQ9eOSp7tUl03pyq/
 Ov13AsvbyrXF7eELD/AW/FGYKRIVr8/IcGa6Z3zJw8mtK40tzmmKauRnnKnUveDjIGH168RiLet
 73AA=
X-Developer-Key: i=jre@pengutronix.de; a=openpgp;
 fpr=0B7B750D5D3CD21B3B130DE8B61515E135CD49B5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250929_010437_301499_4D71E911 
X-CRM114-Status: UNSURE (   7.70  )
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
X-Spam-Status: No, score=-4.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 7/9] ci: container: install crcmod and cryptography
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Needed for bareboxtlv-generator.py which will be part of integration
tests.

While at it, sort python packages alphabetically.

Signed-off-by: Jonas Rebmann <jre@pengutronix.de>
---
 test/Containerfile | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/test/Containerfile b/test/Containerfile
index c6c3c57596..f2e785d17c 100644
--- a/test/Containerfile
+++ b/test/Containerfile
@@ -43,11 +43,13 @@ RUN apt-get update && apt-get install -y --no-install-recommends \
 	qemu-system-common \
 	ovmf \
 	python3 \
-	python3-pip \
-	python3-virtualenv \
-	python3-setuptools \
+	python3-crcmod \
+	python3-cryptography \
 	python3-jsonschema \
 	python3-libfdt \
+	python3-pip \
+	python3-setuptools \
+	python3-virtualenv \
 	python3-yaml \
 	virtualenv \
 	sudo \

-- 
2.51.0.297.gca2559c1d6



