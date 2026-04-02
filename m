Delivery-date: Thu, 02 Apr 2026 12:13:21 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w8F3B-007oNr-08
	for lore@lore.pengutronix.de;
	Thu, 02 Apr 2026 12:13:21 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w8F3A-000386-Cm
	for lore@pengutronix.de; Thu, 02 Apr 2026 12:13:20 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=TblOGNmSn8ASLdo7ByP39E4IkM3CNdocyQjCVqPAU3I=; b=EYXVI+bso3cvNyOQHCUnwOJewj
	9nNd1Bd8IFHnyfvBzVD+NZGvvF367hLoRzMHTS+KeUZp1jqVpFipcUnlIQy4gJKFF0LTuLxUVd+we
	4In5aTQ6lMKxYYZif9qF17iID22pnjZ2esiU7F1QULXY63ZWmoZ0EUIa3ptD+ZZrTUFdkgMBVamP5
	sgLQSUfIsqq3Fq6or8h+TuSoF+5yBgK/17THCjVGqAblrg8hWMNPTp68gpxtET/oHNxm8+PNPqnRy
	tqSrjNWpgzkVIgcnoAAUgYrMGe6vLAYehfNbvqZHpp/rr4DRRJZXf3IAevJGBDHuWfhczTjzZgKGC
	ETlnx+fA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w8F2V-0000000HNUP-2iZP;
	Thu, 02 Apr 2026 10:12:39 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w8F2U-0000000HNU4-27oi
	for barebox@bombadil.infradead.org;
	Thu, 02 Apr 2026 10:12:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=TblOGNmSn8ASLdo7ByP39E4IkM3CNdocyQjCVqPAU3I=; b=pMvWdE4rqmNlGG3NU371Om+354
	kscDH570Pjr1QGQfDbylLk4cqfq/8IxT16huyDvLrLUS/QSQBpEjPPQDT4dWFW+0lI+jhQIB2zCuB
	hlaQx9IqbbCsZUZ8dL2klKtQ8rEagyniHmFl4mNYt70/LPue8I+AyF5ODmUZmx8ndvSl5oWFbIgSk
	Q1wHdZCAyi1bTzPthmsOld/xK7gWiCpqxmBqfjOH4j30KOQm2gRvuR4mTaSqljF4uEooLm9B+3RGH
	CusbGtlpuBpOvEa6MFqbkzyvatMUj2Vjnhx2TLg9EQ5a3InJJrK8WJ68aV4AqxgIVlKfWUthfROU9
	kytKLFFA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w8F2N-00000002DG4-3kSQ
	for barebox@lists.infradead.org;
	Thu, 02 Apr 2026 10:12:36 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w8F2M-0002lg-FI; Thu, 02 Apr 2026 12:12:30 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w8F2M-003MCZ-0R;
	Thu, 02 Apr 2026 12:12:30 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w8F2M-00000004I4C-074t;
	Thu, 02 Apr 2026 12:12:30 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 02 Apr 2026 12:12:32 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260402-fs-ext4-buffer-overflows-v1-4-b9f8a909fe58@pengutronix.de>
References: <20260402-fs-ext4-buffer-overflows-v1-0-b9f8a909fe58@pengutronix.de>
In-Reply-To: <20260402-fs-ext4-buffer-overflows-v1-0-b9f8a909fe58@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1775124750; l=1520;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=BXAgL5k1E3Tkwx7471Y2SG3d8zAOFMtY9UiAq4773d0=;
 b=tIUNLfSbpTWo7kGrQDKSUFhDXkJLX6NVg0Wq5+3Vyg0VfcJyeDfAqiFXEN4o0BWKbuisb+ADi
 cPCgEcgR5J5C6C9Pa+euDpOO/akqdejRTs349+VGvXC0NZevT//kbUH
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260402_111234_768011_FF601C2D 
X-CRM114-Status: UNSURE (   8.87  )
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
Subject: [PATCH 4/5] fs: ext4: reject dirents with too-small direntlen to
 prevent infinite loops
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

ext4fs_iterate_dir() and ext4fs_get_ino() walk directory entries using
dirent->direntlen from disk to advance the position. If a crafted
filesystem has direntlen == 0, the position never advances, causing an
infinite loop that can only be broken by a reset.

Reject directory entries where direntlen is smaller than the minimum
dirent struct size. This catches the zero case and also prevents
reading overlapping dirents.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Co-Authored-By: Claude Opus 4.6 (1M context) <noreply@anthropic.com>
---
 fs/ext4/ext4_common.c | 2 ++
 fs/ext4/ext_barebox.c | 2 ++
 2 files changed, 4 insertions(+)

diff --git a/fs/ext4/ext4_common.c b/fs/ext4/ext4_common.c
index 5d252b4a2c..b0c78f9e9a 100644
--- a/fs/ext4/ext4_common.c
+++ b/fs/ext4/ext4_common.c
@@ -359,6 +359,8 @@ int ext4fs_iterate_dir(struct ext2fs_node *dir, char *name,
 
 			free(fdiro);
 		}
+		if (le16_to_cpu(dirent.direntlen) < sizeof(struct ext2_dirent))
+			return -EINVAL;
 		fpos += le16_to_cpu(dirent.direntlen);
 	}
 	return -ENOENT;
diff --git a/fs/ext4/ext_barebox.c b/fs/ext4/ext_barebox.c
index ef1a71368d..f9a978c10c 100644
--- a/fs/ext4/ext_barebox.c
+++ b/fs/ext4/ext_barebox.c
@@ -106,6 +106,8 @@ static int ext4fs_get_ino(struct ext2fs_node *dir, struct qstr *name, int *inum)
 				return 0;
 			}
 		}
+		if (le16_to_cpu(dirent.direntlen) < sizeof(struct ext2_dirent))
+			return -EINVAL;
 		fpos += le16_to_cpu(dirent.direntlen);
 	}
 

-- 
2.47.3



