Delivery-date: Tue, 23 Apr 2024 19:37:02 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rzK4k-00D3mU-2D
	for lore@lore.pengutronix.de;
	Tue, 23 Apr 2024 19:37:02 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rzK4k-0004ER-1U
	for lore@pengutronix.de; Tue, 23 Apr 2024 19:37:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=v0duEEXSsPRfGZoMPnEz2KjwBq1y8f8n3oYyEokD6mk=; b=3WHiYyDtEW1SNR1PJD32ZXCmaH
	qGgn+3QrKGVIw+C98VzCjfF6FXaSMb+tevxo7E18psYUMpMKv0R7iKKjjHuqTgOHrIfU03jQL/jGi
	WAmRkwXXt4R/i2L2s4rgcmFyZMcvHkCF6PpdsahQmvwVfkKHAKdH1dYJnCyP4RmQ6HcxHceYAumqa
	Eaoje+V5s8sZrbLHa2JPYT4O0Gde6JoIimsDU6ADSFp0erML2KkqCi8huVIlvcC42IgG3m7McopR7
	buv9N02HQ/IKgJazO68jN+jgUxUwGjCnm/gzLOSiagK8q6wVhZhOape3ExxrEXowMuQzOLSFXSJJ4
	qXcU5Jig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzK3y-00000000zKY-1f0x;
	Tue, 23 Apr 2024 17:36:14 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzK3u-00000000zJD-3psC
	for barebox@lists.infradead.org;
	Tue, 23 Apr 2024 17:36:13 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1rzK3q-0003ak-HR; Tue, 23 Apr 2024 19:36:06 +0200
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1rzK3q-00Dw41-4m; Tue, 23 Apr 2024 19:36:06 +0200
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ukl@pengutronix.de>)
	id 1rzK3q-007F53-0D;
	Tue, 23 Apr 2024 19:36:06 +0200
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>
To: barebox@lists.infradead.org
Cc: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Date: Tue, 23 Apr 2024 19:35:32 +0200
Message-ID: <20240423173531.518304-2-uwe@kleine-koenig.org>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-Developer-Signature: v=1; a=openpgp-sha256; l=2623; i=uwe@kleine-koenig.org; h=from:subject; bh=Itoo3nAk7FcJBtjw8Ve7Aap2rSxe4HKqakUMj2CzKEw=; b=owEBbQGS/pANAwAKAY+A+1h9Ev5OAcsmYgBmJ/Fkyy6lLkNt4dXyKaiLG7GZtzzNsaPBXICeK kEN1bz/zwGJATMEAAEKAB0WIQQ/gaxpOnoeWYmt/tOPgPtYfRL+TgUCZifxZAAKCRCPgPtYfRL+ TlIQCACzrwCVq5hp1BG4iRyME6oHC4rJieg65b6JFWhV3enHSpF6gu9+mGKlnP8/uiT0Ev8IqB/ tihe7ZbA8xxvqQrPviBc4JQ06mbMMn9No3TacM2aJoNj+FmaOwJFcsESkEoAdabRIZjTiTCVfRk tmzD71/IDJZj1brD9d3w87vZJ4mCmqOOiONvmDZg93uvC136XDW9YRnPFb1sdTnmuVGULbEmIFv nPZh45Tpqz+5bBqoW2mieSiZS2Ms1iQOzBXWprkn6njQxM5gXVQTQz5gAqS8A/qtgsTXpLWQcwD CBtjvpI1pksjaBUSGA8IbpjQe8cCKnUgNiSxS3E8acu90dxp
X-Developer-Key: i=uwe@kleine-koenig.org; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240423_103610_989146_C97869DB 
X-CRM114-Status: GOOD (  14.95  )
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
X-Spam-Status: No, score=-4.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] mtd: nand-imx: Improve comment about vendor BBM and address verschwurbelung
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Uwe Kleine-König <u.kleine-koenig@pengutronix.de>

To better describe why the BBM is at offset 2000 describe the full
misinterpretation^Wmapping of the NAND memory that the i.MX hardware
implements.

Also adapt the comment to reality: A BBT is created automatically since
commit 2ad441bb7e78 ("mtd: nand-imx: Create BBT automatically when
necessary") which was included in v2020.03.0.

Signed-off-by: Uwe Kleine-König <u.kleine-koenig@pengutronix.de>
---
 drivers/mtd/nand/nand_imx.c | 30 +++++++++++++++++++++---------
 1 file changed, 21 insertions(+), 9 deletions(-)

diff --git a/drivers/mtd/nand/nand_imx.c b/drivers/mtd/nand/nand_imx.c
index 23b9c52e0f76..77655daa4efe 100644
--- a/drivers/mtd/nand/nand_imx.c
+++ b/drivers/mtd/nand/nand_imx.c
@@ -1139,20 +1139,32 @@ static int __init mxcnd_probe_dt(struct imx_nand_host *host)
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

base-commit: f40319c8e157c90117d32aed1dae5549a723c63e
-- 
2.43.0



