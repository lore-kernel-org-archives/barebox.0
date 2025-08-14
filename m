Delivery-date: Thu, 14 Aug 2025 15:16:13 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1umXoU-000WDd-1e
	for lore@lore.pengutronix.de;
	Thu, 14 Aug 2025 15:16:13 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1umXoT-00081N-Bi
	for lore@pengutronix.de; Thu, 14 Aug 2025 15:16:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=agpDSQAMYKGzxNO8uTVD5zCNSTlCkc7pntEo3TdWO00=; b=YiSbtxW03KlJeoxTfp16r6DPsD
	kFbUbwzEslYTyiX1vGgOlj5dxiqQFR+rcPVeONfsH74OpGnGtayJlg0YDXvmxQcgc8YE8f090zdgD
	2DDQnlsa9qccG4oo0KWWwgsjZ7MZOGDBwVmKW8gknNHTbVIxI64VR3STzj1eysIt4AaU5TfHnsnbM
	NeW1TmTLd3cNIWLaUSBRvGIMyOBmOr3jHPD8MUK/RVzsO3NeB5QZqVZgTplmHDjJs1dNlXQ99M9XS
	gkJYcD8votWv20dm1wQw5ctS2cjzkZYZAb4rSqGHNcsVmj1eZNuZHp53FGHvIG+L8PCUHq6efnSfm
	ne1AFtPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umXny-0000000GzFi-44r8;
	Thu, 14 Aug 2025 13:15:42 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umVU4-0000000Ge15-33UT
	for barebox@lists.infradead.org;
	Thu, 14 Aug 2025 10:47:02 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1umVTv-0000NX-JJ; Thu, 14 Aug 2025 12:46:51 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1umVTv-000Eww-16;
	Thu, 14 Aug 2025 12:46:51 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1umVTv-004nMh-0t;
	Thu, 14 Aug 2025 12:46:51 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 14 Aug 2025 12:46:52 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250814-k3-am62l-updates-v1-4-9934277d8757@pengutronix.de>
References: <20250814-k3-am62l-updates-v1-0-9934277d8757@pengutronix.de>
In-Reply-To: <20250814-k3-am62l-updates-v1-0-9934277d8757@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1755168411; l=853;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=2Z4WnU0OmcG/rjj975KB+xKMroBLp/NArz1WQWI1WoI=;
 b=w7+LCvfqyxejtei5Q9e+qLR8HuVHEbAcfYkIolCIcnH7gpC3JC9sY9Tn4KqDZ/l5tZ9ANPiGs
 vBKER1cRpOjAaDffqmUi3H+/C4CPOE4O1+Cr3M9IBsPcfYuEvxo1/fu
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250814_034700_772917_21F5CE29 
X-CRM114-Status: UNSURE (   9.02  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 4/6] k3img: handle PKCS#11 uris
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

In case the keys passed to k3img are PKCS#11 uris we have to set the
keyform/engine options for openssl.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 scripts/k3img | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/scripts/k3img b/scripts/k3img
index 4242c505d07513d915797a9b68faae9310506a0c..bd86a437898de7c3980b61bceffbd973d6b9f3d8 100755
--- a/scripts/k3img
+++ b/scripts/k3img
@@ -143,6 +143,10 @@ EndOfHereDocument
 
 cat $ext_boot_info $components >> $certcfg
 
-openssl req -new -x509 -key $key -nodes -outform DER -out $cert -config $certcfg -sha512
+case $key in pkcs11:*)
+	PKCS11OPTS="-engine pkcs11 -keyform engine"
+esac
+
+openssl req ${PKCS11OPTS} -new -x509 -key "${key}" -nodes -outform DER -out "${cert}" -config "${certcfg}" -sha512
 
 cat $cert $data > $out

-- 
2.39.5



