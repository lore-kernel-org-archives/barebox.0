Delivery-date: Mon, 08 May 2023 12:43:38 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pvyLD-00A1A5-RG
	for lore@lore.pengutronix.de; Mon, 08 May 2023 12:43:38 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pvyLB-0002u1-Gg
	for lore@pengutronix.de; Mon, 08 May 2023 12:43:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=TBbevSEbsaBZQyKHSjxs9xvlxZTyaJhS6pdUsiKKHF8=; b=rFG3Gj0Z6FktXKH00lQJo1GZzP
	rHvzxWb+cvitbjMx6LCBh17rZWdwAqWW/99PArngRmGah74tWQW6AKLRQBfg4b42iMsraJYp49zSR
	fMBvMTRRmjbMZle0v9+eQYlP0HpZTMeZWWTdKQ5AzdxPLGeLd6kjW/q6EAH/ge2g845i5MJ7uLeQx
	fBR/FbjgaTnQGSYeWQPRp/yuFJNxVp9jVkXnrMLOyraC0ZtubaPa3f9Ikbs5LV5Cd+AynK2kGn/vQ
	ubG0OtUDgQSuUTVP5PgdyUS10CYPZ0luPTH+aBoTPdCMx00mkYIcCNJnZPZsKKpBTIEoAA9y/aHfF
	0dSNIeqQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pvyJp-000KJK-0z;
	Mon, 08 May 2023 10:42:13 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pvyJn-000KIz-1c
	for barebox@bombadil.infradead.org;
	Mon, 08 May 2023 10:42:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=TBbevSEbsaBZQyKHSjxs9xvlxZTyaJhS6pdUsiKKHF8=; b=NhpUYBOUvMpoRzNjcXmN1z7fRu
	nax3xUUYKxUC1FVdtLThFbThHnHoJhCn9DzdxyfsWtK/DLt8QAtw1ykgMSKiDbfwbxcN5h0F6CTrx
	FtZmRZjgQbxVOqFlAHDyGTnMshMyVyfYNyO1kW+5v3vaNG/T3nX1p8KtOBI3Zcyy5v7u910l711su
	JWFVOyUHiGiWgRkEhfS3CHgXSSMccctV+oSXUN9VGhqTV0qySIfmbsuLlygFAh6FWljfJRxzOC9uP
	MkTxGlt7F4e6wjmB6U6gZcwLVDXJQHzpgnKhTrKwQNGal5abgfB0P0W9gBX4SBK2YkCXNCLoXxbT2
	beW95Myw==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pvvEk-0054yR-0O
	for barebox@lists.infradead.org;
	Mon, 08 May 2023 07:24:47 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=pengutronix.de)
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.trumtrar@pengutronix.de>)
	id 1pvvEi-0007nU-9A; Mon, 08 May 2023 09:24:44 +0200
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Cc: Kai Assman <kai.assmann@de.bosch.com>
Date: Mon,  8 May 2023 09:24:31 +0200
Message-Id: <20230508072431.94874-1-s.trumtrar@pengutronix.de>
X-Mailer: git-send-email 2.39.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230508_082446_211070_FB90D3FD 
X-CRM114-Status: UNSURE (   8.24  )
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] clk: zynq: eval ps-clock-frequency from DT
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

From: Kai Assman <kai.assmann@de.bosch.com>

Currently the ps_clk_rate is locked to 33.3MHz. The devicetree
provides a property "ps-clock-frequency" that specifies this clock.

If the property is found, overwrite ps_clk_rate otherwise stay at the
default 33.3MHz

Signed-off-by: Kai Assmann <kai.assmann@de.bosch.com>
Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 drivers/clk/zynq/clkc.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/clk/zynq/clkc.c b/drivers/clk/zynq/clkc.c
index 8e4beda295..37a0fbadb5 100644
--- a/drivers/clk/zynq/clkc.c
+++ b/drivers/clk/zynq/clkc.c
@@ -388,6 +388,9 @@ static int zynq_clock_probe(struct device *dev)
 			return PTR_ERR(parent_res);
 
 		slcr_offset = parent_res->start;
+
+		of_property_read_u32(dev->device_node, "ps-clock-frequency",
+				     (u32 *)&ps_clk_rate);
 	}
 
 	iores = request_iomem_region(dev_name(dev), iores->start + slcr_offset,
-- 
2.39.0



