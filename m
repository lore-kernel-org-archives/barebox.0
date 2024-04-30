Delivery-date: Tue, 30 Apr 2024 11:46:02 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s1k3m-00A4vf-14
	for lore@lore.pengutronix.de;
	Tue, 30 Apr 2024 11:46:02 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s1k3k-00023e-PQ
	for lore@pengutronix.de; Tue, 30 Apr 2024 11:46:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-ID:Date:Subject:To:From:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=XU8gKnZ22kdCaq98d9HcxUvKk4LjlbmW6jI5C1y322Y=; b=cUPQH4jwKimn29iL7g8C8lHpzL
	XYofosIvVrYpRrEK0TMKMR8SSzwFBxSQpFGYOyjmpE9R4ezbLVRiunlcrdF85A3SBi3lukT2u2+lK
	ko0T0dqd4RRvuKYrrTGxzl8k2IObjaXMhlMFTdAgS1i1xvbfLNbefIyuYQaCxlXlYs6C1754DpGfD
	yc8hWW0MEDh2yiCt/4uEOZXBre/XrW21ticVQ33BfqqCGNl1sniIPIV0jZTjo/1O8WMSyZrN72q84
	uNZO+Emn5yg0idAErdz8WzMCifxhX+uwo7n658Cg1g0l59qD9LVxSeWXoSAsGMAxsPQY7CfVDJiLY
	gJ7vd1wA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s1k2u-00000005t9L-2EiB;
	Tue, 30 Apr 2024 09:45:08 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s1k2q-00000005t7M-2oTC
	for barebox@lists.infradead.org;
	Tue, 30 Apr 2024 09:45:06 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1s1k2n-0001nP-3s; Tue, 30 Apr 2024 11:45:01 +0200
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1s1k2m-00F8e1-NT; Tue, 30 Apr 2024 11:45:00 +0200
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ukl@pengutronix.de>)
	id 1s1k2m-00C2vR-20;
	Tue, 30 Apr 2024 11:45:00 +0200
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue, 30 Apr 2024 11:44:52 +0200
Message-ID: <20240430094451.1038256-4-u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-Developer-Signature: v=1; a=openpgp-sha256; l=2647; i=u.kleine-koenig@pengutronix.de; h=from:subject; bh=qvyYLOJ6wcBRN0ky33/9DMwCdKxWZ4cd9PUX8E1cnbk=; b=owEBbQGS/pANAwAKAY+A+1h9Ev5OAcsmYgBmML2Uu0uqZpLHGZn48XPnbuQqhMwsNqcovp6L/ ruYPj8Xw6GJATMEAAEKAB0WIQQ/gaxpOnoeWYmt/tOPgPtYfRL+TgUCZjC9lAAKCRCPgPtYfRL+ Tm+CB/4hAbrr2kL/cldT//04Kp5tqTv4Nj9Xru12EBezh4Z1v8FymP7hbHf57XiM7t38Kj4Fjug jRy38YlaOHh55W9Jtg1I6Hzva7vJpOwEZjI7f3U082uS8+hzPT1jo52wzIk6y6/QlUc7LbG5RIQ 2gFHSwQw4bCQeBUIyMtuRHCdzNASiC7ddIGU3+yz0USqH6dTKg9IUZoARafCVQlLPP+nSg+3Nrj 6Xx51yIB9+ya/+MP/rr+6xc1eyFQ95r3jwoTtwA/NRPEggd2cdaiIRLerQhIP+9tUIFy2IQrmvS vvOi2DF503CSUl0am7ycLcQ9BpIiErwGiTaGbr/n+XYTtItq
X-Developer-Key: i=u.kleine-koenig@pengutronix.de; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240430_024504_768911_C17C7C63 
X-CRM114-Status: GOOD (  15.51  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/3] mtd: mxc-nand: Improve comment about vendor BBM and address verschwurbelung
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

To better describe why the BBM is at offset 2000 describe the full
misinterpretation^Wmapping of the NAND memory that the i.MX hardware
implements.

Also adapt the comment to reality: A BBT is created automatically since
commit 2ad441bb7e78 ("mtd: nand-imx: Create BBT automatically when
necessary") which was included in v2020.03.0.

Signed-off-by: Uwe Kleine-König <u.kleine-koenig@pengutronix.de>
---
 drivers/mtd/nand/raw/mxc_nand.c | 30 +++++++++++++++++++++---------
 1 file changed, 21 insertions(+), 9 deletions(-)

diff --git a/drivers/mtd/nand/raw/mxc_nand.c b/drivers/mtd/nand/raw/mxc_nand.c
index 2774b6bb4f01..da1c426d1951 100644
--- a/drivers/mtd/nand/raw/mxc_nand.c
+++ b/drivers/mtd/nand/raw/mxc_nand.c
@@ -1528,20 +1528,32 @@ static const struct nand_controller_ops mxcnd_controller_ops = {
  * 512b data + 16b OOB +
  * 512b data + 16b OOB
  *
+ * So the mapping between original NAND addressing (as intended by the chip
+ * vendor) and interpretation when accessed via the i.MX NAND controller is as
+ * follows:
+ *
+ *       original       |        i.MX
+ * ---------------------+---------------------
+ * data 0x0000 - 0x0200 | data 0x0000 - 0x0200
+ * data 0x0200 - 0x0210 | oob  0x0000 - 0x0010
+ * data 0x0210 - 0x0410 | data 0x0200 - 0x0400
+ * data 0x0410 - 0x0420 | oob  0x0010 - 0x0020
+ * data 0x0420 - 0x0620 | data 0x0400 - 0x0600
+ * data 0x0620 - 0x0630 | oob  0x0020 - 0x0030
+ * data 0x0630 - 0x0800 | data 0x0600 - 0x07d0
+ * oob  0x0000 - 0x0030 | data 0x07d0 - 0x0800
+ * oob  0x0030 - 0x0040 | oob  0x0030 - 0x0040
+ *
  * This means that the factory provided bad block marker ends up
- * in the page data at offset 2000 instead of in the OOB data.
+ * in the page data at offset 2000 = 0x7d0 instead of in the OOB data.
  *
- * To preserve the factory bad block information we take the following
- * strategy:
- *
- * - If the NAND driver detects that no flash BBT is present on 2k NAND
- *   chips it will not create one because it would do so based on the wrong
- *   BBM position
- * - This command is used to create a flash BBT then.
+ * If the NAND driver detects that no flash BBT is present on a 2k NAND
+ * chip it will create one automatically in the assumption that the NAND is
+ * pristine (that is completely erased with only vendor BBMs in the OOB) to
+ * preserve factory bad block information.
  *
  * From this point on we can forget about the BBMs and rely completely
  * on the flash BBT.
- *
  */
 static int checkbad(struct nand_chip *chip, loff_t ofs)
 {

base-commit: 8ca910b9218822e7122ac9bcb62d0c50acb971ff
-- 
2.43.0



