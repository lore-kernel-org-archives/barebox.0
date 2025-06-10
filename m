Delivery-date: Tue, 10 Jun 2025 11:50:59 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uOvdD-005kt1-2I
	for lore@lore.pengutronix.de;
	Tue, 10 Jun 2025 11:50:59 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uOvdD-0007DP-5M
	for lore@pengutronix.de; Tue, 10 Jun 2025 11:50:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=hixd4P+5d0F16vDBDwxg6CehvqOrgcZrZmtUz/MwnPg=; b=1Wm6ieZbGcbYVwQQt63TnCgWLs
	/JsEDRGOsRcpkHlWGzwrMboUabMgQRd9Jl15G0+4DEhJskxm5V7BH5WOBjgeTRMItjK0BJU8FzVXD
	+boAjVtT05PClLszVh/Cl02sIkGwnBqWRRL2U5IICSIFSogMHa8+sJxpiiJifopxOc/Zf58eMRDbI
	eNrsM97NqvRul0HnRmxDxV7dZQJrkYY0fZXVk3MNS8GAH5974LuJc8GtL72uPzLhzu7N6nIVAQQ5J
	IHvDZIjtXaq4pyBtAUXej+7GxwhJmj1bTYFuPjDg2dGcsVUebFgm6X+96ejgRKm+Q0e5ZGPvNgwsz
	svviYnHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uOvcb-00000006OsK-0Ci1;
	Tue, 10 Jun 2025 09:50:21 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uOvGO-00000006Kk4-3VqP
	for barebox@lists.infradead.org;
	Tue, 10 Jun 2025 09:27:26 +0000
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <bst@pengutronix.de>)
	id 1uOvGL-0002k2-Kc; Tue, 10 Jun 2025 11:27:21 +0200
From: Bastian Krause <bst@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Bastian Krause <bst@pengutronix.de>
Date: Tue, 10 Jun 2025 11:27:18 +0200
Message-Id: <20250610092718.258050-1-bst@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250610_022724_871310_3CE3E16D 
X-CRM114-Status: UNSURE (   8.63  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] Documentation: user: use https instead of git protocol for cloning
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The git server at git.pengutronix.de no longer supports the git
protocol, so switch to https.

Signed-off-by: Bastian Krause <bst@pengutronix.de>
---
 Documentation/user/barebox.rst | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/Documentation/user/barebox.rst b/Documentation/user/barebox.rst
index 338c2f5d03c..8b3a29fc1c0 100644
--- a/Documentation/user/barebox.rst
+++ b/Documentation/user/barebox.rst
@@ -18,15 +18,15 @@ can be checked out as follows:
 
 .. code-block:: sh
 
-  $ git clone git://git.pengutronix.de/git/barebox.git
+  $ git clone https://git.pengutronix.de/git/barebox
   Cloning into 'barebox'...
-  remote: Counting objects: 113356, done.
-  remote: Compressing objects: 100% (25177/25177), done.
-  remote: Total 113356 (delta 87910), reused 111155 (delta 85935)
-  Receiving objects: 100% (113356/113356), 33.13 MiB | 183.00 KiB/s, done.
-  Resolving deltas: 100% (87910/87910), done.
-  Checking connectivity... done.
-  Checking out files: 100% (5651/5651), done.
+  remote: Enumerating objects: 330649, done.
+  remote: Counting objects: 100% (3932/3932), done.
+  remote: Compressing objects: 100% (2203/2203), done.
+  remote: Total 330649 (delta 2421), reused 2217 (delta 1706), pack-reused 326717
+  Receiving objects: 100% (330649/330649), 82.03 MiB | 14.88 MiB/s, done.
+  Resolving deltas: 100% (265076/265076), done.
+  Updating files: 100% (19054/19054), done.
 
 By default, the master branch is checked out. If you want to develop for
 barebox, this is the right branch to send patches against.
-- 
2.39.5



