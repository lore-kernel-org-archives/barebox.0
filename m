Delivery-date: Thu, 02 Apr 2026 12:13:18 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w8F38-007oN9-2I
	for lore@lore.pengutronix.de;
	Thu, 02 Apr 2026 12:13:18 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w8F36-00036K-IW
	for lore@pengutronix.de; Thu, 02 Apr 2026 12:13:18 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qUQDOCrkmETzK2Uqalw3d728SACQh723TVaSBe7Nmmg=; b=pkaWLa1aNC7pL9KuTe721bq89a
	itXgZ6oG5oDO+rQEhZMmkGuQcgZ2+eChjq3feBMY+5AlG1BpUAmF3aOBYNCaYacG466NNLa9z8SEH
	Tu3Vn/iRNS43AYQZbXV+B0rNftp73EGE8FGZQKHJ7l4p/pYssM9NT5HlMTQPYzb2Bfhrf1Oef9FoC
	Bp+Qws0+0YRcQuNNe9zRJTrcSe+26efqdWs5GB8y4JbjfTmY1T/Rddl0pnQI8AEAFUykh0sZsHOft
	6cOBM13oToHWCokUEPu8E8abeILtckerDe70CzBu3Idgwi8XC5y6WNbC5JmAQqvL9cmRmNGwqX41R
	AP0hjtYg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w8F2h-0000000HNYI-2aQS;
	Thu, 02 Apr 2026 10:12:51 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w8F2g-0000000HNXM-121V
	for barebox@bombadil.infradead.org;
	Thu, 02 Apr 2026 10:12:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=qUQDOCrkmETzK2Uqalw3d728SACQh723TVaSBe7Nmmg=; b=kK7QIlX+lMjWzfOBsVVMENblxf
	AemN6npjih65ktZpcSkzl7qRvoAOkzJ7GDk5vkyJeN7U0CqRZ7BeW6aECAHWlGHaIEVESSvcNMM6/
	59oWYCkgM0RKMcZZ3vO5LbGweNf//qDuCWg2SsXyXfMLIWZLHjrdX1Z/vBgF1XJs9kJcul17YEBmC
	K0WfD0bc/KoceQy+0GM8/XtfYKiNCC+TW9oBeFHCVDRNkB1qN9AQLyQck8qUgG5NdvN5RojdhNlyj
	7KtXMvxb2eAJ2zJKC3NL4yl9sTIvhb6vLIfAWUCSP3sUu+XQRz+4Rtd+X8anKiXN9y3Yq1eX5rdS9
	b8pDNo1w==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w8F2c-00000002DIv-3X8X
	for barebox@lists.infradead.org;
	Thu, 02 Apr 2026 10:12:48 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w8F2M-0002li-FI; Thu, 02 Apr 2026 12:12:30 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w8F2M-003MCY-0O;
	Thu, 02 Apr 2026 12:12:30 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w8F2M-00000004I4C-06Dl;
	Thu, 02 Apr 2026 12:12:30 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 02 Apr 2026 12:12:31 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260402-fs-ext4-buffer-overflows-v1-3-b9f8a909fe58@pengutronix.de>
References: <20260402-fs-ext4-buffer-overflows-v1-0-b9f8a909fe58@pengutronix.de>
In-Reply-To: <20260402-fs-ext4-buffer-overflows-v1-0-b9f8a909fe58@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1775124749; l=2032;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=NCZ7yaGHbe7wIfQQ+FOws0efTNmmVhHWmTH4f+qewA4=;
 b=knvZndIkCjfedJ3/OkgC/GgvM+kDnSn+BSZdjL5zl3gK0BiosCApkMLwhqYEfV/br706i0B3X
 RuKExTS+BI6DOfjjAe5eBpGEDXJtR1+N8qcfc4J/uLHUFLYSJ+GAsdO
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260402_111247_141504_0BEDF010 
X-CRM114-Status: GOOD (  12.79  )
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
Cc: "Claude Opus 4.6 \(1M context\)" <noreply@anthropic.com>
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
Subject: [PATCH 3/5] fs: ext4: fix OOB read and infinite loop in
 ext_iterate()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

ext_iterate() reads the entire directory into a buffer and walks it
parsing ext2_dirent entries, but has several issues with untrusted
on-disk data:

1. No check that a full ext2_dirent struct fits before reading it,
   causing an OOB read for the last partial entry.

2. No check that fpos + sizeof(dirent) + namelen fits within the
   buffer before passing the filename pointer to dir_emit(), causing
   an OOB read if namelen extends past the allocation.

3. If dirent->direntlen is 0, fpos never advances, causing an
   infinite loop.

Fix by:
- Checking that a full dirent struct fits before each iteration
- Validating that the filename region is within bounds before emitting
- Breaking out of the loop if direntlen is smaller than the minimum
  dirent size (which also catches the zero case)

All three are triggerable from a crafted ext4 filesystem image.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Co-Authored-By: Claude Opus 4.6 (1M context) <noreply@anthropic.com>
---
 fs/ext4/ext_barebox.c | 11 ++++++++---
 1 file changed, 8 insertions(+), 3 deletions(-)

diff --git a/fs/ext4/ext_barebox.c b/fs/ext4/ext_barebox.c
index 5bee4853d4..ef1a71368d 100644
--- a/fs/ext4/ext_barebox.c
+++ b/fs/ext4/ext_barebox.c
@@ -157,15 +157,20 @@ static int ext_iterate(struct file *file, struct dir_context *ctx)
 		goto out;
 	}
 
-	while (fpos < dir->i_size) {
+	while (fpos + sizeof(struct ext2_dirent) <= dir->i_size) {
 		const struct ext2_dirent *dirent = buf + fpos;
 		const char *filename = buf + fpos + sizeof(*dirent);
+		uint16_t direntlen = le16_to_cpu(dirent->direntlen);
 
-		if (dirent->namelen != 0)
+		if (direntlen < sizeof(struct ext2_dirent))
+			break;
+
+		if (dirent->namelen != 0 &&
+		    fpos + sizeof(*dirent) + dirent->namelen <= dir->i_size)
 			dir_emit(ctx, filename, dirent->namelen,
 				 le32_to_cpu(dirent->inode), DT_UNKNOWN);
 
-		fpos += le16_to_cpu(dirent->direntlen);
+		fpos += direntlen;
 	}
 	ret = 0;
 out:

-- 
2.47.3



