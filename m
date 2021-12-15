Delivery-date: Wed, 15 Dec 2021 10:11:13 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mxQJd-0079CF-9b
	for lore@lore.pengutronix.de; Wed, 15 Dec 2021 10:11:13 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mxQJc-0000Cq-1G
	for lore@pengutronix.de; Wed, 15 Dec 2021 10:11:12 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=sDCtz2wmhqZ1K4zpHaiECLWp1cLcnpVu76fbMeB7eHA=; b=q4Es7wKTpZv5v7
	/p+M6+sOKBd1U/Sg5VMPeDDAy+3SzC731oGYGeD8z+pD+pxI/3C1f61t/DA0nfJQSJiUE2m1MSptO
	/Be/ur+TR0O0thNzrJZCBcW1gVzgS3nTKr1byFlTOQc47nP/SiLZ9+CjKZQ/RvKiRFTe/1nEZv9rB
	iL6yi4OetU3OXIck8gqyGlunR/XNX322iLxdrlCUzJbuS5mk2ZUt2p2VgGHoj+v/3tiMSQFoD/EoQ
	/kertS6e/24xpjplniQU+HE1JkkB1Gp8gS80rekIxXYwdMKJZ+fKH3pVlW6efDEkJVc42yCm8x/qM
	JEwSfEiq44KON6k7QLVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mxQHa-00HSwK-Hr; Wed, 15 Dec 2021 09:09:06 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mxQHU-00HSvG-S8
 for barebox@lists.infradead.org; Wed, 15 Dec 2021 09:09:02 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <has@pengutronix.de>)
 id 1mxQHR-0008JR-IM; Wed, 15 Dec 2021 10:08:57 +0100
Received: from has by dude02.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <has@pengutronix.de>)
 id 1mxQHR-003zaZ-32; Wed, 15 Dec 2021 10:08:57 +0100
From: Holger Assmann <h.assmann@pengutronix.de>
To: barebox@lists.infradead.org
Date: Wed, 15 Dec 2021 10:08:55 +0100
Message-Id: <20211215090855.752555-1-h.assmann@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211215_010900_936143_4CEF1337 
X-CRM114-Status: GOOD (  14.27  )
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
Cc: Holger Assmann <h.assmann@pengutronix.de>,
 Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2] fs: jffs2: fix error when reading blocks with offset
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This bug resulted in a panic when trying to read a file partially with
an offset, e.g. when starting Linux. In such a case a header is loaded
by a separate call of jffs2_read(), which then copies only the first n
bytes out of the respective block.
When the remaining data of the block is then subsequently going to to be
read the system deviates in its behaviour from that under Linux by not
calling jffs2_read_inode_range() in a 4k-alignment, but with an offset.

jffs2_read_inode_range() originates from the Linux jffs2 driver. When
being called with an offset it still reads 4096 bytes of data and
eventually returns fragments of two consecutive blocks. jffs2_read()
then reads this result whilst again applying the offset, therefore
returning faulty data.

We fix that problem by calling jffs2_get_block() without an offset and
therefore reading the whole block. The offset is then applied when we
actually perform memcpy with the returned buffer. This fix might also
increase the performance since the respective block is likely to be
cached from the previous call.

Signed-off-by: Holger Assmann <h.assmann@pengutronix.de>
Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---

 Changes v1 -> v2:
 - removed stray spaces
 - added review acknowledgement

 fs/jffs2/fs.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/fs/jffs2/fs.c b/fs/jffs2/fs.c
index 8f6625b6e5..1dfa0c92a5 100644
--- a/fs/jffs2/fs.c
+++ b/fs/jffs2/fs.c
@@ -74,6 +74,9 @@ static int jffs2_get_block(struct jffs2_file *jf, unsigned int pos)
 	struct jffs2_inode_info *f = JFFS2_INODE_INFO(jf->inode);
 	int ret;
 
+	/* pos always has to be 4096 bytes aligned here */
+	WARN_ON(pos % 4096 != 0);
+
 	if (pos != jf->offset) {
 		ret = jffs2_read_inode_range(c, f, jf->buf, pos,
 					     JFFS2_BLOCK_SIZE);
@@ -98,12 +101,13 @@ static int jffs2_read(struct device_d *_dev, FILE *f, void *buf,
 	/* Read till end of current block */
 	ofs = f->pos % JFFS2_BLOCK_SIZE;
 	if (ofs) {
-		ret = jffs2_get_block(jf, pos);
+		ret = jffs2_get_block(jf, f->pos - ofs); /* Align down block */
 		if (ret)
 			return ret;
 
 		now = min(size, JFFS2_BLOCK_SIZE - ofs);
 
+		/* Complete block has been read, re-apply ofset now */
 		memcpy(buf, jf->buf + ofs, now);
 		size -= now;
 		pos += now;
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

