Delivery-date: Mon, 18 May 2026 10:02:14 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wOsvV-0013jl-33
	for lore@lore.pengutronix.de;
	Mon, 18 May 2026 10:02:13 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wOsvV-0006H8-9j
	for lore@pengutronix.de; Mon, 18 May 2026 10:02:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=tDH4cFVPJStJMIrxDFKChFA3FKS0spavz+mVAUXx/ho=; b=Wwr/qTCS7//bAnVGutaVSibb9E
	IbOLs8w8wY03Pcexmfz3jWGXPc79MkmP1yw5kFqBHZ3x6x7cna9FqSf6qvgs6fOSpDS4t2GQTod6f
	kmY3Jqj8JtK2LLv9faqX6CLVN0/t4KRBMItJd8H3qIcYd05f4bS2E+O7buSHsBFc6AIyu/4VbpxL2
	v8yIEJswUdRNJudEbYQuZkBLrb4XiSQhC6ITaS3HHFEcKt/jaCXRT/a0+JN9Wh/xPmZiD5wn0UMk2
	iu6Wdc6J5cNaYFN7HCjmmngwWz6NNwLQok+D+YAmyelLxeGsA+k1f2DrapoOQku1LTAJKbLhHIfVa
	lCXHzQtw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOspz-0000000EgOm-26lM;
	Mon, 18 May 2026 07:56:31 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOspv-0000000EgMJ-1MlL
	for barebox@lists.infradead.org;
	Mon, 18 May 2026 07:56:28 +0000
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <jre@pengutronix.de>)
	id 1wOsps-0003WR-9r; Mon, 18 May 2026 09:56:24 +0200
From: Jonas Rebmann <jre@pengutronix.de>
Date: Mon, 18 May 2026 09:56:13 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260518-barebox-port-ecc-v1-1-25509bd37030@pengutronix.de>
References: <20260518-barebox-port-ecc-v1-0-25509bd37030@pengutronix.de>
In-Reply-To: <20260518-barebox-port-ecc-v1-0-25509bd37030@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 "open list:BAREBOX" <barebox@lists.infradead.org>
Cc: Lukas Wunner <lukas@wunner.de>, Ahmad Fatoum <a.fatoum@pengutronix.de>, 
 Jonas Rebmann <jre@pengutronix.de>
X-Mailer: b4 0.16-dev
X-Developer-Signature: v=1; a=openpgp-sha256; l=883; i=jre@pengutronix.de;
 h=from:subject:message-id; bh=/4uU6vGbmo3fCa15fymbCD99fZXWoT6NE1TljaGPLpw=;
 b=owGbwMvMwCV2ZcYT3onnbjcwnlZLYsjiOqa6OUE5u1W3Il1ik3wLV+vqylXS9j9OR+tIenQ+2
 LzomnV0RykLgxgXg6yYIkusmpyCkLH/dbNKu1iYOaxMIEMYuDgFYCJNPIwM5z++Y0idFme2eP/0
 u6q/DlXO3TTLKM1P7+VTtutH+F2YBRj+p8493F/RHXEkWOK+mfX7T+/CgwM23Cj+o+MicnJ1bOM
 7VgA=
X-Developer-Key: i=jre@pengutronix.de; a=openpgp;
 fpr=0B7B750D5D3CD21B3B130DE8B61515E135CD49B5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260518_005627_370059_84342756 
X-CRM114-Status: UNSURE (   8.06  )
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
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/4] crypto: ecc: Add Origin-URL to document kernel
 revision
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

To systematically port fixes from the linux kernel, add
Origin-URL-references[1] to crypto/ecc.c which was copied from the linux
kernel in commit d2cc4152f483 ("Add elliptic curve cryptography (ECC)
helper functions").

[1]: https://lore.kernel.org/barebox/20251218151807.691382-1-a.fatoum@pengutronix.de/

Signed-off-by: Jonas Rebmann <jre@pengutronix.de>
---
 crypto/ecc.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/crypto/ecc.c b/crypto/ecc.c
index c3d71627a6..77068ebfbd 100644
--- a/crypto/ecc.c
+++ b/crypto/ecc.c
@@ -1,3 +1,4 @@
+// SPDX-Comment: Origin-URL: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/crypto/ecc.c?id=c6ab5c915da460c0397960af3c308386c3f3247b
 /*
  * Copyright (c) 2013, 2014 Kenneth MacKay. All rights reserved.
  * Copyright (c) 2019 Vitaly Chikunov <vt@altlinux.org>

-- 
2.54.0.129.g3edf2eeba9



