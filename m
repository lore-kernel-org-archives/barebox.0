Delivery-date: Wed, 24 Mar 2021 13:21:06 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lP2VW-0006YT-1b
	for lore@lore.pengutronix.de; Wed, 24 Mar 2021 13:21:06 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lP2VQ-0006SH-Om
	for lore@pengutronix.de; Wed, 24 Mar 2021 13:21:01 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=yxCiqJOncj/TM8vh+4yystjSfAom4NIqKs6NBrg+BZs=; b=JGpHEsanRiR7eLgXGyJdmdj1Jv
	/otciC2hKPRvCLFamMTxt6hXrSgkU0U3xwlhvtDnFkni70563hx4KMuQkxAUTR9DKqqRS6EhAhgT3
	VUeDQMMk7sCK//9Trf9BqN1eZG4pBnMPhL4XqBNMAHArnZuAjcfRtixNm1CQFC1IY1dk04+pevF/u
	l8jQQW7zbLE+G3HbWs4gowwIydKxRnzaWgVCw6AL1l5ohWfYzeQdmpr+UZEIXVGwTt39vaZZvXZhH
	1VT0Hf3mLiVNkpmto9Gzc8hl3ZMSi1y/bx62XBV4OBsiRtxzOvOjAWFP4Cq9LRq8WmOLrVA/QT5VT
	mVjdaNqg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lP2UO-00H2KL-K3; Wed, 24 Mar 2021 12:19:56 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lP2Tz-00H2Ei-Ue
 for barebox@lists.infradead.org; Wed, 24 Mar 2021 12:19:34 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lP2Tz-00060R-CF; Wed, 24 Mar 2021 13:19:31 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lP2Tz-0001vr-2y; Wed, 24 Mar 2021 13:19:31 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Bastian Krause <bst@pengutronix.de>, Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 24 Mar 2021 13:19:28 +0100
Message-Id: <20210324121928.7380-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210324_121932_477842_F46E636F 
X-CRM114-Status: GOOD (  10.72  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH master] fs: ext4: fix bogus behavior on failure to read ext4
 block
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The conversion of blknr from a signed 32-bit to an unsigned 64-type resulted
in the check for error to never return true. Fix this.

Affected configuration would behave incorrectly when served with invalid
blocks. Instead of aborting and having the filesystem bubble up an error
code, it would return invalid data. As there is no ext4 write support,
this wouldn't lead to ext4 data corruption however.

Reported-by: Bastian Krause <bst@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 fs/ext4/ext4fs.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/fs/ext4/ext4fs.c b/fs/ext4/ext4fs.c
index 54349aad3f3f..344d423fd9c4 100644
--- a/fs/ext4/ext4fs.c
+++ b/fs/ext4/ext4fs.c
@@ -74,11 +74,11 @@ loff_t ext4fs_read_file(struct ext2fs_node *node, loff_t pos,
 		loff_t blockend = blocksize;
 		loff_t skipfirst = 0;
 
-		blknr = read_allocated_block(node, i);
-		if (blknr < 0)
-			return blknr;
+		ret = read_allocated_block(node, i);
+		if (ret < 0)
+			return ret;
 
-		blknr = blknr << log2blocksize;
+		blknr = ret << log2blocksize;
 
 		/* Last block.  */
 		if (i == blockcnt - 1) {
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

