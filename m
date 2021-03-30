Delivery-date: Tue, 30 Mar 2021 08:51:59 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lR8EJ-0002x1-Lg
	for lore@lore.pengutronix.de; Tue, 30 Mar 2021 08:51:59 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lR8EI-0001T2-VT
	for lore@pengutronix.de; Tue, 30 Mar 2021 08:51:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=LJ8lf/C50m582JSptlTSn57AAsB+ZnRyqiYsmYWB0/4=; b=OqqW9V5alzJNiCyfvOAytCwjp
	WA/ivR8GcOvrPjlvX2MLIHzba+w62wD1p6BwDI+yJe5uBeUPku5qdscjHm4YUrZT/KpV0IrvS/VJ9
	otWp9RBioF69UtuS4qa7UEx6GE2TkzVovY93eD1UFQ8CoB0Q1Biq8TvIa/vB8fl8q/S6+a41SNwj3
	GDPW8rNRCkrb3ljXKwjUhcenkb0XOGZyrH0WsW2kCESLwbkAJMl/3ePVz5MaG8P6oF8ABBHgYsB+/
	EOs837OOkIQrgc5V00RYnc6CwOcxd/7jGil69eArR0Eoe3fg/V4HIN7Jtl5Vsr6s1Kk9CWAYgMBPC
	YZlofmdTw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lR8DJ-002rko-HT; Tue, 30 Mar 2021 06:50:57 +0000
Received: from mickerik.phytec.de ([195.145.39.210])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lR8DB-002ria-IC
 for barebox@lists.infradead.org; Tue, 30 Mar 2021 06:50:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; d=phytec.de; s=a1; c=relaxed/simple;
 q=dns/txt; i=@phytec.de; t=1617087041; x=1619679041;
 h=From:Sender:Reply-To:Subject:Date:Message-Id:To:Cc:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=B6mvX0L+k0lYWfTZJdzwLaABrkkRtpHPdqbX2w0+9Bk=;
 b=Hl6dswPNPaG8NKDX5so5CJkYq4mX0+ILsTsq2FVlcbQdjbh2UbSUMYJecsrQPDcU
 JcXx3JoSH+4Lid7VIZmwaZV80lTFPumKd1ewPN8uha9FRBeTuIXeieaysv2+LxHe
 e4AbNdJfk/Dc6HzuZgjVjOyF13LdRfBePpazEckyQMU=;
X-AuditID: c39127d2-868b870000001c91-e8-6062ca41ba1e
Received: from idefix.phytec.de (Unknown_Domain [172.16.0.10])
 by mickerik.phytec.de (PHYTEC Mail Gateway) with SMTP id 9F.23.07313.14AC2606;
 Tue, 30 Mar 2021 08:50:41 +0200 (CEST)
Received: from lws-riedmueller.phytec.de ([172.16.23.108])
 by idefix.phytec.de (IBM Domino Release 9.0.1FP7)
 with ESMTP id 2021033008504125-261344 ;
 Tue, 30 Mar 2021 08:50:41 +0200 
From: Stefan Riedmueller <s.riedmueller@phytec.de>
To: barebox@lists.infradead.org
Date: Tue, 30 Mar 2021 08:50:40 +0200
Message-Id: <20210330065040.5030-4-s.riedmueller@phytec.de>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210330065040.5030-1-s.riedmueller@phytec.de>
References: <20210330065040.5030-1-s.riedmueller@phytec.de>
MIME-Version: 1.0
X-MIMETrack: Itemize by SMTP Server on Idefix/Phytec(Release 9.0.1FP7|August
 17, 2016) at 30.03.2021 08:50:41,
 Serialize by Router on Idefix/Phytec(Release 9.0.1FP7|August  17, 2016) at
 30.03.2021 08:50:41
X-TNEFEvaluated: 1
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFmpiluLIzCtJLcpLzFFi42JZI8DApet4KinB4MoyWYsTi/uZHRg9Ni+p
 D2CM4rJJSc3JLEst0rdL4MqYd/cle0GHYMWdJ+8ZGxjb+boYOTkkBEwkNi67zt7FyMUhJLCN
 UaLt2hM2COcao8T+F/PZQarYBIwkFkxrZAKxRQTkJebub2MFsYUFIiSOvL3ACGKzCKhK/Dv8
 jwXE5hWwlujaf4MdYoO8xMxL38FsTgEbid0btrGB2EJANX8O7WeEqBeUODnzCQvIYgmBK4wS
 Ww49hmoWkji9+CwziM0soC2xbOFr5gmM/LOQ9MxCklrAyLSKUSg3Mzk7tSgzW68go7IkNVkv
 JXUTIzCcDk9Uv7SDsW+OxyFGJg7GQ4wSHMxKIrzCBxIThHhTEiurUovy44tKc1KLDzFKc7Ao
 ifNu4C0JExJITyxJzU5NLUgtgskycXBKNTAGH9i0x+F/XfOWiq9l8/t1PCMqDmx+8eN78/bL
 Vh33RKxqlONUFjQZ/bfN+Sui9v+PaYBYuGnW/QnOxdVydzerl/5hPjh/4nW32jOGdxyZnI/o
 3Ve5cSHzTeie3Xx9rneXTA6KXu3jXbO3KmQue1nmnOrl9nczi5S25SifP/b7woe03w/kMtiV
 WIozEg21mIuKEwF4+3zhFQIAAA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210330_075049_697040_84EBDE58 
X-CRM114-Status: GOOD (  15.11  )
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
X-Spam-Status: No, score=-103.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED,
	USER_IN_WELCOMELIST,USER_IN_WHITELIST autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 4/4] imx-bbu-nand-fcb: Inform user if the barebox partition is
 too small
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Show an error message and return an error code if the barebox partition
is too small. This can easily happen when having large erasoblocks since
all four FCB copies need a separate eraseblock.

Signed-off-by: Stefan Riedmueller <s.riedmueller@phytec.de>
---
 common/imx-bbu-nand-fcb.c | 16 +++++++++++++++-
 1 file changed, 15 insertions(+), 1 deletion(-)

diff --git a/common/imx-bbu-nand-fcb.c b/common/imx-bbu-nand-fcb.c
index 0e008c6bc2c0..4e680a0a51e7 100644
--- a/common/imx-bbu-nand-fcb.c
+++ b/common/imx-bbu-nand-fcb.c
@@ -501,7 +501,8 @@ static int imx_bbu_firmware_start_block(struct mtd_info *mtd, int num)
  * @num: The slot number (0 or 1)
  *
  * This returns the start page for a firmware slot, to be written into the
- * Firmwaren_startingPage field in the FCB.
+ * Firmwaren_startingPage field in the FCB or a negative error code in case
+ * of a failure.
  */
 static int imx_bbu_firmware_fcb_start_page(struct mtd_info *mtd, int num)
 {
@@ -512,6 +513,11 @@ static int imx_bbu_firmware_fcb_start_page(struct mtd_info *mtd, int num)
 
 	blocksleft = imx_bbu_firmware_max_blocks(mtd);
 
+	if (blocksleft <= 0) {
+		pr_err("partition size too small for both firmwares\n");
+		return -ENOMEM;
+	}
+
 	/*
 	 * The ROM only checks for a bad block when advancing the read position,
 	 * but not if the initial block is good, hence we cannot directly point
@@ -1258,7 +1264,15 @@ static int imx_bbu_nand_update(struct bbu_handler *handler, struct bbu_data *dat
 		free(fcb);
 		fcb = xzalloc(sizeof(*fcb));
 		fcb->Firmware1_startingPage = imx_bbu_firmware_fcb_start_page(mtd, !used);
+		if (fcb->Firmware1_startingPage < 0) {
+			ret = fcb->Firmware1_startingPage;
+			goto out;
+		}
 		fcb->Firmware2_startingPage = imx_bbu_firmware_fcb_start_page(mtd, used);
+		if (fcb->Firmware2_startingPage < 0) {
+			ret = fcb->Firmware2_startingPage;
+			goto out;
+		}
 		fcb->PagesInFirmware1 = fw_size / mtd->writesize;
 		fcb->PagesInFirmware2 = fcb->PagesInFirmware1;
 
-- 
2.25.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

