Delivery-date: Fri, 26 Sep 2025 12:15:08 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v25To-001IIK-2F
	for lore@lore.pengutronix.de;
	Fri, 26 Sep 2025 12:15:08 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v25Tn-0004nh-Mb
	for lore@pengutronix.de; Fri, 26 Sep 2025 12:15:08 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=4CORjE7qsu8CAss8Ou5X/EYg5veas+mu0bSTzimBzRc=; b=h0SSQzvVlfv+dsuw1G+P/Xb0U6
	BEDk2P3wKIkfHFLVIDnsVFXqBpoKOoSKAwWbkXGtSY7iQt7wBS+1/5YkdI0KHOXK50pusVnVOLaVH
	pj/q28Uy6Ie/DCfo6NlJ+q3mFYdHPtH73vhFVgWiUy4wGrPKR78YblKIhxjaRDM4gMN3jC/X2rfiC
	1BhNTb/VCTgMI0CnmV08HMGW+svRMfogt8ujQMfQ1lNM8Rn1M//g2x6Eq3buESbrGfRlBGViTLhGL
	jpN+wsobCQ5ntD19lMhRfbUQfaYmfn4eN1V9CBEf1C0prwmF5LYP1X9j23rklT14SLDI5Qk8BtR2U
	qzRTPJ8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v25TH-00000000Ie3-0vAI;
	Fri, 26 Sep 2025 10:14:35 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v25TB-00000000IWp-1Xjw
	for barebox@lists.infradead.org;
	Fri, 26 Sep 2025 10:14:32 +0000
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <jre@pengutronix.de>)
	id 1v25T8-0004Ji-Ha; Fri, 26 Sep 2025 12:14:26 +0200
From: Jonas Rebmann <jre@pengutronix.de>
Date: Fri, 26 Sep 2025 12:14:07 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250926-tlv-integration-v1-6-45dc68b9b602@pengutronix.de>
References: <20250926-tlv-integration-v1-0-45dc68b9b602@pengutronix.de>
In-Reply-To: <20250926-tlv-integration-v1-0-45dc68b9b602@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Jonas Rebmann <jre@pengutronix.de>
X-Mailer: b4 0.15-dev-7abec
X-Developer-Signature: v=1; a=openpgp-sha256; l=848; i=jre@pengutronix.de;
 h=from:subject:message-id; bh=uAe8Y/iKiu8dBPUalWqxJWutV2XkjsnwUGqfMUtws/w=;
 b=owGbwMvMwCV2ZcYT3onnbjcwnlZLYsi4lt747cSqL9GeDy/VlzrPCnp991++4qvKpQHn6svk7
 1z+cD/vV0cpC4MYF4OsmCJLrJqcgpCx/3WzSrtYmDmsTCBDGLg4BWAix70Z/rs8nKx0IpDzHZdI
 Zr+Vy0OekN3mR025bs2NEhRcd8iU8wAjw76syQy3pPpe/ElNYF3Y9shh4qOX5zMneFydWL8j83D
 lUy4A
X-Developer-Key: i=jre@pengutronix.de; a=openpgp;
 fpr=0B7B750D5D3CD21B3B130DE8B61515E135CD49B5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250926_031429_461143_7C50258F 
X-CRM114-Status: UNSURE (   7.08  )
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
Subject: [PATCH 6/7] ci: container: install crcmod and cryptography
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



