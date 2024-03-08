Delivery-date: Fri, 08 Mar 2024 15:21:36 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rib6O-00Dmfn-2Z
	for lore@lore.pengutronix.de;
	Fri, 08 Mar 2024 15:21:36 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rib6N-0004MA-U1
	for lore@pengutronix.de; Fri, 08 Mar 2024 15:21:36 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=HvsJhRSJ7Dhzf43LlfslplLHVrSAswPDNTI/qZjddbM=; b=GvpN4nnoMDJx/qy5L9y6sJz03V
	Vox/CdeTzEoTQAf8FY1az664NXg6dc1jJWOyJ79A8LMJg+qx1Iafs9vznCkO17uOGGVjIk69EFC25
	VJFX4qpEVIpThVbutTMC0GoCZxIBKUIWCY4iCOMHkSHJ9D2jIwICi43vC+SH3851KGN/BPWgM0c8d
	wSh44HZFeLhe1BmKKLXfNgQbRxUMG/MYYZmix8fVazsw751XR7wHxZtwKUPfrRQzXLJArKcBMjG5C
	log21+flHXEOiZVEv8MzsUy5umUtL2aaLOPnfWXrYv7tX7tN4LN+ZWOb7UiLc7eHRmzkdTAnsKwM8
	hcY29+0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rib5l-00000009X5r-0PNw;
	Fri, 08 Mar 2024 14:20:57 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rib5g-00000009X3o-1cDW
	for barebox@lists.infradead.org;
	Fri, 08 Mar 2024 14:20:54 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rib5d-0003Xa-Fv; Fri, 08 Mar 2024 15:20:49 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rib5d-0059b9-3K; Fri, 08 Mar 2024 15:20:49 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rib5c-00GVJO-1X;
	Fri, 08 Mar 2024 15:20:49 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri,  8 Mar 2024 15:20:47 +0100
Message-Id: <20240308142047.3890639-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240308_062052_490335_6F33BD5E 
X-CRM114-Status: GOOD (  12.13  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] fs: fix overlap of O_RWSIZE with new O_PATH/O_CHROOT flags
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

O_PATH had the same value as O_RWSIZE_2, while O_CHROOT overlapped with
O_RWSIZE_4. Fix this by moving up the bits used for O_PATH and O_CHROOT.

This resolves the EINVAL reported when running md -w 0.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
This fixes a regression in next cause by:
  fs: implement O_PATH
  fs: implement O_CHROOT

@Sascha, could you apply the changes to each commit individually, so
there's no regression? Alternatively, I can resent these two commits
to replace what's in next.
---
 include/fcntl.h | 11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/include/fcntl.h b/include/fcntl.h
index 532a3a0f6b1e..a746471411b5 100644
--- a/include/fcntl.h
+++ b/include/fcntl.h
@@ -23,11 +23,6 @@
 #define O_APPEND	00002000
 #define O_DIRECTORY	00200000	/* must be a directory */
 #define O_NOFOLLOW	00400000	/* don't follow links */
-#define O_PATH		02000000	/* open as path */
-#define O_CHROOT	04000000	/* dirfd: stay within filesystem root */
-#define __O_TMPFILE	020000000
-
-#define O_TMPFILE       (__O_TMPFILE | O_DIRECTORY)
 
 /* barebox additional flags */
 #define O_RWSIZE_MASK	017000000
@@ -37,6 +32,12 @@
 #define O_RWSIZE_4	004000000
 #define O_RWSIZE_8	010000000
 
+#define __O_TMPFILE	020000000
+#define O_PATH		040000000	/* open as path */
+#define O_CHROOT	0100000000	/* dirfd: stay within filesystem root */
+
+#define O_TMPFILE       (__O_TMPFILE | O_DIRECTORY)
+
 int openat(int dirfd, const char *pathname, int flags);
 
 static inline int open(const char *pathname, int flags, ...)
-- 
2.39.2



