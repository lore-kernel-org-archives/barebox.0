Delivery-date: Wed, 10 Dec 2025 11:16:43 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vTHFT-009sTb-2l
	for lore@lore.pengutronix.de;
	Wed, 10 Dec 2025 11:16:43 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vTHFT-0001v2-9v
	for lore@pengutronix.de; Wed, 10 Dec 2025 11:16:43 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Lh46gd/lbx7fDcUN5vCbvuhG/bcgbPbZKOTZXGN/RCo=; b=N+316w9plnj5WvZurjNupL6tef
	M/47L8JhqQ4+pozrvU8bWTcFmBehLHA1hBnrjmOxb1n4qJkS8vnRkg5WcTdpAKFjI0WkzcMLwz3f8
	vjtPBohHWGnk2iakrKXbZGqZenQkpykXGlSBghCSlHqYuUiJR4Ul3IoFKDAs+puDv/onAvDfLt1Aj
	HzTvHIobAiOJrX6xzF1SfEIIqwsrNlGXeV3SwOgEDbVGpN1WCT2Wc0CdUiLBxeMxSqP5ULtXI8Yzh
	vwFwSrkmf+GMNYNy1lVJJakcra/zyAmktdjoOcmLK2ne02jveO9+FXrIb3JH+uYXUrNaBNtIs1AWT
	KCejfk6g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTHEw-0000000FJLJ-3Pa9;
	Wed, 10 Dec 2025 10:16:10 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTHEq-0000000FJKC-0rcL
	for barebox@lists.infradead.org;
	Wed, 10 Dec 2025 10:16:08 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vTHEm-0001eI-Ru; Wed, 10 Dec 2025 11:16:00 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vTHEm-004wMH-22;
	Wed, 10 Dec 2025 11:16:00 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vTHEm-00000004RFo-2JNt;
	Wed, 10 Dec 2025 11:16:00 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 10 Dec 2025 11:16:00 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251210-devfs-prep-v1-2-3a2a3aa27eab@pengutronix.de>
References: <20251210-devfs-prep-v1-0-3a2a3aa27eab@pengutronix.de>
In-Reply-To: <20251210-devfs-prep-v1-0-3a2a3aa27eab@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1765361760; l=837;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=2ynZNBWukr/YKNj0hHzvRprQRpY3EQTL7H1trrDvCfQ=;
 b=lFUu1j/V+MA1wzez4ZU7tI2dkwhNptmOEzT5/LSStvLg6W8c5keMMGcotaiQ9tFMIroAH1crl
 8dUZ0aVdLGXB4VyESNLzegUOTmYnwQCYjBPL5dVy/wEoqudjuelb0c7
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251210_021604_243976_FD624189 
X-CRM114-Status: UNSURE (   9.00  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 2/3] fs: warn when mount reference count becomes negative
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Warn when the reference count of a mount would become negative.
With this we warn when it happens. Previously, only unmounting
a mountpoint failed with -EBUSY which was misleading because
mnt->ref was only true because it was negative.

Do not actually allow it to become negative anymore.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/fs.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/fs/fs.c b/fs/fs.c
index f7859304a7b5f4158db83298b586c633668301d5..e063dc48d9d53a64932564c4b983d5ca1b026a1a 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -260,6 +260,12 @@ static void mntput(struct vfsmount *mnt)
 	if (!mnt)
 		return;
 
+	if (!mnt->ref) {
+		WARN_ONCE(1, "refcount for mount \"%s\" becomes negative\n",
+			  mnt->mountpoint->name);
+		return;
+	}
+
 	mnt->ref--;
 }
 

-- 
2.47.3



