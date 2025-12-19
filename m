Delivery-date: Fri, 19 Dec 2025 11:39:12 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWXtA-00DAko-08
	for lore@lore.pengutronix.de;
	Fri, 19 Dec 2025 11:39:12 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWXsv-000750-4H
	for lore@pengutronix.de; Fri, 19 Dec 2025 11:39:11 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SsDFGx5IsPVlaEMDTLt2gdk1AqZsOfxc/Y3I2ZhVe7s=; b=hNJzBu4ZP8Il2y
	M1CyDt1zCJVkktglhuGOew9mFUT8NtWffTSgg37ZwKdHHqBeXEx5xS8aZLtZu76jBv6XFRhySZbJv
	CszvPotFzdRpXyNM7UU7hdd7dlIEsq5Kk+FjEhPULt2Xsv/RA7lyY0LST15VgxFnQ/xbn+3/g0HCy
	/6BfWAlgeY/3kRB4D5yDjHXkMzuAwt2mxVlakEtUL4rIx00KCdyZL8jUPGi4U6ZTzwesRs2oP3O31
	LsWO6URd5D4Efmw3SQbis16eC9tsNkjJ0sWJyqw3cw4bHpx/5Pxn+SFopOBk/XGUiHWepta6q47d+
	JXB4+1k0plfjI3aVWMdQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWXrg-0000000A76B-2kX1;
	Fri, 19 Dec 2025 10:37:40 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWXr4-0000000A6CC-0I1v
	for barebox@bombadil.infradead.org;
	Fri, 19 Dec 2025 10:37:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=SsDFGx5IsPVlaEMDTLt2gdk1AqZsOfxc/Y3I2ZhVe7s=; b=M9VI7lMRxNU+26gZunZ2GSAzpt
	p6kkCg7GKuXpz46aLJultMCSfF0mj9BCM/aUv//VwIbX1/ggkfmftRU7QZUOzx8liEh8jeWf6yQDj
	Qwdlc7hZE9krCZSDxMmbgJkxrwtmobsBlOgzbI2nTyy5SLlA7yvBA95O/W32qBmjaXpP2QRDZRZE8
	T/4/OmF+8M6xdgarNzCCOGeLbKD91F4qUq1ZrtssiVyxFVjHhVQmvAcmfYWAydNEGrMt7vIwT2tkT
	9Y12eP9vA2azLwQlt7dvpbk3OA0+Cy/Dfa4+m+JNFBNBSQof/zlPmTs4W9A2JxIszJkuhzybl+5du
	Vq85PkPQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by casper.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWXr0-00000007RVj-35iN
	for barebox@lists.infradead.org;
	Fri, 19 Dec 2025 10:37:01 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWXqs-0004fV-1W; Fri, 19 Dec 2025 11:36:50 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWXqr-006RVd-2i;
	Fri, 19 Dec 2025 11:36:49 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWXVi-0000000320L-13Yi;
	Fri, 19 Dec 2025 11:14:58 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Fri, 19 Dec 2025 10:21:14 +0100
Message-ID: <20251219101453.2806980-39-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251219101453.2806980-1-a.fatoum@pengutronix.de>
References: <20251219101453.2806980-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251219_103658_812419_54B949BD 
X-CRM114-Status: UNSURE (   9.86  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
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
Subject: [PATCH v2025.09.y 38/49] fs: fix automount when last filename component is a automountpoint
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Sascha Hauer <s.hauer@pengutronix.de>

When opening a directory in openat() as indicated with the O_DIRECTORY
flag, pass the LOOKUP_DIRECTOY flag to filename_lookup() to make sure
the target is actually a directory. By doing this we can skip the check
afterwards.

filename_lookup() only triggers the automount on the last component when
the LOOKUP_DIRECTORY flag is set, so with this change when /mnt/mmc2.3/
is a automountpoint a

stat /mnt/mmc2.3/

now triggers automounting. This also fixes tab completion with
"ls /mnt/mmc2.3/<tab>" which previously didn't trigger autmounting.

Fixes: a1da0079d1 ("fs: implement opendir in terms of fdopendir")
Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Link: https://lore.barebox.org/20251202092256.1565823-1-s.hauer@pengutronix.de
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
(cherry picked from commit 500df27eb054f86ce232c5bb30c3a7ea8f771e61)
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 fs/fs.c | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/fs/fs.c b/fs/fs.c
index 54bd35786857..3eaf9084d096 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -2606,7 +2606,12 @@ int openat(int dirfd, const char *pathname, int flags)
 	}
 
 	if (!(flags & O_CREAT) || error == -EEXIST) {
-		error = filename_lookup(dirfd, getname(pathname), LOOKUP_FOLLOW, &path);
+		unsigned f = LOOKUP_FOLLOW;
+
+		if (flags & O_DIRECTORY)
+			f |= LOOKUP_DIRECTORY;
+
+		error = filename_lookup(dirfd, getname(pathname), f, &path);
 		dentry = path.dentry;
 	}
 
@@ -2636,9 +2641,6 @@ int openat(int dirfd, const char *pathname, int flags)
 		}
 
 		flags |= O_DIRECTORY;
-	} else if (flags & O_DIRECTORY) {
-		error = -ENOTDIR;
-		goto out1;
 	}
 
 	inode = d_inode(dentry);
-- 
2.47.3



