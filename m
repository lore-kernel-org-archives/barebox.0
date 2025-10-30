Delivery-date: Thu, 30 Oct 2025 09:41:51 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vEOEB-00DM6j-2t
	for lore@lore.pengutronix.de;
	Thu, 30 Oct 2025 09:41:51 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vEOEB-0007Ta-Bn
	for lore@pengutronix.de; Thu, 30 Oct 2025 09:41:51 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=3xZdFgJdppAO6s1kkF30gqEMJ5CR+YsIiFt25twQX+U=; b=NWjYcPdVAstz4xhrxBfZd/FOJn
	8UCTrcpvIBP+74HJrCRJ+xNxmDfGE0dx27BMFrkofSzp32zS8w3DY9cIPvYNuG2uKrzrSaOt2NgDK
	q62QJ6uF6iaYkoKiGp1w1rlpighDHzeMkFEoGMil6/cDWlLlsq0BF60JdisK5Nj7KF0n2wValwDrD
	/T6m7Tq89uSadWfMtRWK/3SQY2dV5ohq9ocrkf/O9vGAZFew4zTJaXxQDzJDH4amrBh6Il2dJFc+E
	VE6Ag8BbyoZwVe/rFNjF6gOT8KTIHRppr2oBRJn1nHfQDprdrPXzsRryB2frDlycF3TFI3Dl6LUYJ
	H5Ok15zw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vEODc-00000003m1X-32h9;
	Thu, 30 Oct 2025 08:41:16 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vEODa-00000003lyq-2I42
	for barebox@lists.infradead.org;
	Thu, 30 Oct 2025 08:41:16 +0000
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <jre@pengutronix.de>)
	id 1vEODW-0007Lw-IH; Thu, 30 Oct 2025 09:41:10 +0100
From: Jonas Rebmann <jre@pengutronix.de>
Date: Thu, 30 Oct 2025 09:41:00 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251030-gitignore-build-v2-1-8f4fcd824921@pengutronix.de>
X-B4-Tracking: v=1; b=H4sIAJskA2kC/3WNyw7CIBBFf6WZtRgeRaMr/8N0ITDQSQw0QJuap
 v8udu/ynOSeu0HBTFjg3m2QcaFCKTaQpw7s+IoBGbnGILnUgosrC1QpxJSRmZnejrkbt+bSKyM
 Uh7aaMnpaj+JzaDxSqSl/joNF/Oz/1iKYYF5qp7RVxvv+MWEMc80p0np2CMO+719wokqmswAAA
 A==
X-Change-ID: 20251017-gitignore-build-d90cb643b130
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Jonas Rebmann <jre@pengutronix.de>
X-Mailer: b4 0.15-dev-7abec
X-Developer-Signature: v=1; a=openpgp-sha256; l=1254; i=jre@pengutronix.de;
 h=from:subject:message-id; bh=nU8sBvbDztjQOK3pKZ9mDoZ8lI7mmd64+9cJvPawmb8=;
 b=owGbwMvMwCV2ZcYT3onnbjcwnlZLYshkVlnk0OTxPWzRr8IcuS+91jW8644+5plT7dm2xfikn
 r5ZhMXijlIWBjEuBlkxRZZYNTkFIWP/62aVdrEwc1iZQIYwcHEKwETS0xkZbgdyi2x+uPN6U8TH
 CPtlFfURyZtOZ32JvXJUOT2x5Vv7NIb/hS3WmkaOLGarfnf/6t7qHa7RcXOSwxH73/UxE7lbzHd
 yAwA=
X-Developer-Key: i=jre@pengutronix.de; a=openpgp;
 fpr=0B7B750D5D3CD21B3B130DE8B61515E135CD49B5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251030_014114_594280_747F7B63 
X-CRM114-Status: UNSURE (   9.14  )
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
X-Spam-Status: No, score=-3.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2] gitignore: ignore /build, /oe-logs, /oe-workdir
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Documentation such as Documentation/boards/kvx.rst and tooling such as
conftest.py suggests /build is a good choice for build output directory.
The build system does set up a .gitignore in the build directory but
this has no effect if /build is a symlink to outside the tree.

Similarly, YOCTOs "devtool" sets up the symlinks /oe-logs and
/oe-workdir to point to the respective paths in yoctos build tree.

Include those in .gitignore.

Signed-off-by: Jonas Rebmann <jre@pengutronix.de>
---
Changes in v2:
- EDITME: describe what is new in this series revision.
- EDITME: use bulletpoints and terse descriptions.
- Link to v1: https://lore.barebox.org/barebox/20251017-gitignore-build-v1-1-f25d35c3bff4@pengutronix.de
---
 .gitignore | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/.gitignore b/.gitignore
index 98bb4dac89..a235f9f7de 100644
--- a/.gitignore
+++ b/.gitignore
@@ -53,6 +53,9 @@ policy-list
 /TAGS
 /barebox*
 /System.map
+/build
+/oe-logs
+/oe-workdir
 
 #
 # git files that we don't want to ignore even it they are dot-files

---
base-commit: 8defba1d0ab1aef9dd5d57710e18d0d02e2c48e2
change-id: 20251017-gitignore-build-d90cb643b130

Best regards,
--  
Jonas Rebmann <jre@pengutronix.de>



