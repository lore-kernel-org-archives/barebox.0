Delivery-date: Wed, 28 May 2025 13:46:43 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uKFF5-001AoO-2m
	for lore@lore.pengutronix.de;
	Wed, 28 May 2025 13:46:43 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uKFF5-00033k-A7
	for lore@pengutronix.de; Wed, 28 May 2025 13:46:43 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=0zbTXnhO6XXbQHDCyiL/9w4B5HrZrMl7tc7Rh1Q5rAE=; b=PMA5UR08hz38SGMsFvlliaK+nF
	qGIwkNGZwhViuRZGn7SKJHaBowgDNz4SaQP9NX+Y2mU1Omexej5G6k8aCowGe61SrQV6b1yr6T5NR
	MLlG/LQc6G9+rYIfxFVlPlIA43xETLijsLmZoaUf9MpDCCCipJnHnTYJbjm9E6c1CGTD+fOZdhToe
	3YZyPnmt/oMFWKRsQGxqJe+4gqdYdGEIXo3Gt1dzhMQOfvc4kJPGKFjvik6b3lasGf8IiL2wC2IAh
	jwDk0md/MURT5yBq9wN49Q9qS3JRRaSeR4bK1dZurSzuPccipggkk03qsYRTymhkxiDIxNNohZySs
	DME0pTiQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKFEF-0000000D0Fs-2dQp;
	Wed, 28 May 2025 11:45:51 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKFEC-0000000D0CL-06CY
	for barebox@lists.infradead.org;
	Wed, 28 May 2025 11:45:49 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uKFE2-00021V-Sd; Wed, 28 May 2025 13:45:38 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uKFE2-000a7C-1m;
	Wed, 28 May 2025 13:45:38 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uKFE2-00CB0R-1O;
	Wed, 28 May 2025 13:45:38 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 28 May 2025 13:45:13 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250528-arm-k3-am62l-v1-1-3f88e6d10d99@pengutronix.de>
References: <20250528-arm-k3-am62l-v1-0-3f88e6d10d99@pengutronix.de>
In-Reply-To: <20250528-arm-k3-am62l-v1-0-3f88e6d10d99@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1748432738; l=501;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=hIxg5ed2ljGLyoADCdCS3uNk4mc6VJCnsy8Z9vDMP/o=;
 b=3PUMkspCvptt4D9ReHPJkoMb2GCD+SFzNWCtAdfn9uEP6fDfKRtUrtPOlfs/I4XFRnrZ01uFY
 mdSSKKY/dH5B5GRs75xGQQp61drqNtsjmCSO1muXX3bXA2AIb7yICYz
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250528_044548_067462_A1C677D5 
X-CRM114-Status: UNSURE (   6.86  )
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
X-Spam-Status: No, score=-6.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 01/31] scripts: k3img: remove duplicate case value
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 scripts/k3img | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/scripts/k3img b/scripts/k3img
index a514852fcdf6369c33b1e291b59c121badc6f4bd..f622f877cb89ce5604b8cb7651b3c23d3a5459be 100755
--- a/scripts/k3img
+++ b/scripts/k3img
@@ -25,11 +25,6 @@ while true; do
 		shift 2
 		continue
 	;;
-        '--sysfw')
-		sysfw="$2"
-		shift 2
-		continue
-	;;
         '--dmdata')
 		dmdata="$2"
 		shift 2

-- 
2.39.5



