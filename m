Delivery-date: Thu, 14 Jul 2022 10:12:50 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oBtxq-007Lqh-M1
	for lore@lore.pengutronix.de; Thu, 14 Jul 2022 10:12:50 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oBtxo-0001Ye-Oa
	for lore@pengutronix.de; Thu, 14 Jul 2022 10:12:49 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=M7I3Paw66abdK5MRR7AT0YgZ4LdcBrwpDokJ+CkXoLk=; b=Ovdzg1ggsGRAJKfSt2u7/ihoF2
	N+gnqk7YilpAZFNyRWzTtV3JsDoj0MbE3Iq67HGUPeJJBGj+NCflpEjKsF4d41CLkNSLZ160vyipl
	1oRTJNfgOS/ZwSu11MKtTWNzIQkzNoUJJausHUnzXZPGeIsa7S01tgrKYtQTIwKegzWL8zqg8NNvQ
	o9KEfuSxKX0Rv9Xtp+2u7GZqlyapJnov91KW3YrxPpEydIktwEzZxfEDb4Nn/rLpFbHC6swS/L0ca
	irxc5fxR4pm68JtMTe5jbspkYCwMKYScUd3skzXTUVWhEJNgW92tc+FxgGieOkeDCoae7L/5wwM3m
	ssK+v9WA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oBtwU-00CDTu-Ki; Thu, 14 Jul 2022 08:11:26 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oBtwM-00CDPE-VV
	for barebox@lists.infradead.org; Thu, 14 Jul 2022 08:11:20 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1oBtwJ-0001DX-T0; Thu, 14 Jul 2022 10:11:15 +0200
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1oBtwJ-000rwc-19; Thu, 14 Jul 2022 10:11:15 +0200
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1oBtwI-0056ZB-E0; Thu, 14 Jul 2022 10:11:14 +0200
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: barebox@lists.infradead.org
Date: Thu, 14 Jul 2022 10:11:07 +0200
Message-Id: <20220714081108.101094-1-u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.36.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-Developer-Signature: v=1; a=openpgp-sha256; l=3187; h=from:subject; bh=Wf/+evkJPQtB4DaIZaXM+8rHPnCkFf3L6eP7ImLUToE=; b=owEBbQGS/pANAwAKAcH8FHityuwJAcsmYgBiz8+M4A0xeOsb07t8t0Bvykf8O0R2zLIKbjKGMT4j sjrjqA6JATMEAAEKAB0WIQR+cioWkBis/z50pAvB/BR4rcrsCQUCYs/PjAAKCRDB/BR4rcrsCTYvCA CWYx+nx5vyOPHBqejbvW/f9CLxmNdz+WaiYHDMvFjo6qA5GMvqubx4BNTFm/nU4/E+qdLoZPNMg70A NHf7Bsc80uoBmG5x354B8LYOHTT9zLsDaEOwgIunpdzXwrtnnLiCA1gntTbWMh2FTsPiZmPCT1HTQ4 8mNRNKZaMlGdhRRuks5Hd6vSGnD25iY211WteLDndfwbPuGA7w/19qhswCitlbEFt3rfA6yhcDpyQ3 5uuX5q/dueJa72jYCqNJMmjg2DcHKH6cN2YfYYgBqbi9IpMiW4pAMQvI1OrBcvYcqflcP8XpPR9x08 LvXKSOw7Uy3WqW3ZMJo0AzCJlcb9vw
X-Developer-Key: i=u.kleine-koenig@pengutronix.de; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220714_011119_072153_09795327 
X-CRM114-Status: GOOD (  14.10  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 1/2] ARM: imx/bbu-external-nand: Rename offset -> nand_offset
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The next commit introduces a new offset variable for image. To be better
able to differentiate the two, pick a better name for the already
existing one. There is no functional change.

Signed-off-by: Uwe Kleine-König <u.kleine-koenig@pengutronix.de>
---
 arch/arm/mach-imx/imx-bbu-external-nand.c | 26 +++++++++++------------
 1 file changed, 13 insertions(+), 13 deletions(-)

diff --git a/arch/arm/mach-imx/imx-bbu-external-nand.c b/arch/arm/mach-imx/imx-bbu-external-nand.c
index 392497e43423..4d3493f9e1e0 100644
--- a/arch/arm/mach-imx/imx-bbu-external-nand.c
+++ b/arch/arm/mach-imx/imx-bbu-external-nand.c
@@ -29,7 +29,7 @@ static int imx_bbu_external_nand_update(struct bbu_handler *handler, struct bbu_
 	int size_available, size_need;
 	int ret;
 	uint32_t num_bb = 0, bbt = 0;
-	loff_t offset = 0;
+	loff_t nand_offset = 0;
 	int block = 0, len, now, blocksize;
 	void *image = NULL;
 
@@ -61,27 +61,27 @@ static int imx_bbu_external_nand_update(struct bbu_handler *handler, struct bbu_
 	 * Collect bad blocks and construct BBT
 	 */
 	while (size_need > 0) {
-		ret = ioctl(fd, MEMGETBADBLOCK, &offset);
+		ret = ioctl(fd, MEMGETBADBLOCK, &nand_offset);
 		if (ret < 0)
 			goto out;
 
 		if (ret) {
-			if (!offset) {
+			if (!nand_offset) {
 				printf("1st block is bad. This is not supported\n");
 				ret = -EINVAL;
 				goto out;
 			}
 
-			debug("bad block at 0x%08llx\n", offset);
+			debug("bad block at 0x%08llx\n", nand_offset);
 			num_bb++;
 			bbt |= (1 << block);
-			offset += blocksize;
+			nand_offset += blocksize;
 			block++;
 			continue;
 		}
 		size_need -= blocksize;
 		size_available -= blocksize;
-		offset += blocksize;
+		nand_offset += blocksize;
 		block++;
 
 		if (size_available < 0) {
@@ -124,7 +124,7 @@ static int imx_bbu_external_nand_update(struct bbu_handler *handler, struct bbu_
 	}
 
 	len = data->len;
-	offset = 0;
+	nand_offset = 0;
 
 	/* last chance before erasing the flash */
 	ret = bbu_confirm(data);
@@ -137,13 +137,13 @@ static int imx_bbu_external_nand_update(struct bbu_handler *handler, struct bbu_
 	while (len > 0) {
 		now = min(len, blocksize);
 
-		ret = ioctl(fd, MEMGETBADBLOCK, &offset);
+		ret = ioctl(fd, MEMGETBADBLOCK, &nand_offset);
 		if (ret < 0)
 			goto out;
 
 		if (ret) {
-			offset += blocksize;
-			if (lseek(fd, offset, SEEK_SET) != offset) {
+			nand_offset += blocksize;
+			if (lseek(fd, nand_offset, SEEK_SET) != nand_offset) {
 				ret = -errno;
 				goto out;
 			}
@@ -151,9 +151,9 @@ static int imx_bbu_external_nand_update(struct bbu_handler *handler, struct bbu_
 			continue;
 		}
 
-		debug("writing %d bytes at 0x%08llx\n", now, offset);
+		debug("writing %d bytes at 0x%08llx\n", now, nand_offset);
 
-		ret = erase(fd, blocksize, offset);
+		ret = erase(fd, blocksize, nand_offset);
 		if (ret)
 			goto out;
 
@@ -163,7 +163,7 @@ static int imx_bbu_external_nand_update(struct bbu_handler *handler, struct bbu_
 
 		len -= now;
 		image += now;
-		offset += now;
+		nand_offset += now;
 	}
 
 	ret = 0;

base-commit: 298727bc7931fe878fd72a1fa6f35c18bd7c593c
-- 
2.36.1



