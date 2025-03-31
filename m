Delivery-date: Mon, 31 Mar 2025 14:50:39 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tzEb9-006ZQr-0u
	for lore@lore.pengutronix.de;
	Mon, 31 Mar 2025 14:50:39 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tzEb8-0008MA-Mn
	for lore@pengutronix.de; Mon, 31 Mar 2025 14:50:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=zXAz5l2F216glKrXVK0MdA1p2gmOo0mFVk36VIl9KCQ=; b=LOVRfmyEkNZ1VVQvPBbSwwvobu
	SqvIJH13TXTfyqO50VRcYHr3DbC68wZOAyHjqKsJj0uEHOHTamu+Uptuj89zgWRJHl8oCds1Ohs/U
	q86FByE4b0ejZgPYFgvYAPod0ZXBBC5eg+2IWWUD737Q+qAYTNQgNXuM0wiuxeTUQZz4mEkVbI16s
	FfEt7Xf/TYDF3SBHePk/toXQq9QUvnqVlWBGu2ixU18DnCNDjg00PhgX8iQMJPOQkqUd2rgFiDyce
	R5pE06mBqF3+uJPMgobNegMA4cy06MrcaZi70nIAEW2iTUBPvqto4F5x3Q6wOKFHnj8O2PbyDjJEX
	LuETWEJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tzEai-00000000OBL-2sHP;
	Mon, 31 Mar 2025 12:50:12 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tzEac-00000000O5r-41Y2
	for barebox@lists.infradead.org;
	Mon, 31 Mar 2025 12:50:09 +0000
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <bst@pengutronix.de>)
	id 1tzEaa-0007tJ-9D; Mon, 31 Mar 2025 14:50:04 +0200
From: Bastian Krause <bst@pengutronix.de>
To: barebox@lists.infradead.org
Cc: =?UTF-8?q?Enrico=20J=C3=B6rns?= <ejo@pengutronix.de>,
	Bastian Krause <bst@pengutronix.de>
Date: Mon, 31 Mar 2025 14:49:25 +0200
Message-Id: <20250331124932.901033-2-bst@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250331124932.901033-1-bst@pengutronix.de>
References: <20250331124932.901033-1-bst@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250331_055007_011123_AB8AAABF 
X-CRM114-Status: GOOD (  10.52  )
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
X-Spam-Status: No, score=-6.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/9] doc: bootchooser: drop confusing description for "remaining_attempts"
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

"Every attempt counter reaches zero" is not how redundant booting is
meant to be used. Usually userspace or the next barebox boot increments
the counter again. This sentence is at least confusing, so drop it
altogether.

Signed-off-by: Bastian Krause <bst@pengutronix.de>
---
 Documentation/user/bootchooser.rst | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/Documentation/user/bootchooser.rst b/Documentation/user/bootchooser.rst
index e318b245c14..fc36f8fb1ca 100644
--- a/Documentation/user/bootchooser.rst
+++ b/Documentation/user/bootchooser.rst
@@ -70,9 +70,7 @@ means the boot target is disabled.
 
 When booting, *bootchooser* starts the boot target with the highest ``priority`` that
 has a non-zero ``remaining_attempts`` counter. With every start of a boot target the
-``remaining_attempts`` counter of this boot target is decremented by one. This means
-every boot target's ``remaining_attempts`` counter reaches zero sooner or later and
-the boot target won't be booted anymore.
+``remaining_attempts`` counter of this boot target is decremented by one.
 This behavior assures that one can retry booting a target a limited number of
 times to handle temporary issues (such as power outage) and optionally allows
 booting a fallback in case of a permanent failure.
-- 
2.39.5



