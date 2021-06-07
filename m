Delivery-date: Mon, 07 Jun 2021 11:32:18 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lqBcI-0004Pi-Fh
	for lore@lore.pengutronix.de; Mon, 07 Jun 2021 11:32:18 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lqBcD-0007GP-UE
	for lore@pengutronix.de; Mon, 07 Jun 2021 11:32:18 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=rVh2BAmCDI5+GHVF5kTtjvWQlUMZJ2kzcE8wHukTtmQ=; b=kWjdjbAfR7xMAt
	Emmkboq8fEiTU+tPH3s5Vtn3HFwq+zCjS89tGhJsRMFzetuSKekM+3Y78F6vj1GZzYDUuocf2LjSe
	dszAQcTb9KS3k2m5F51D3QvcHOhgcYXWXZU9qcQtkS3zg9osrJTqjI8O5iX0Kpkh3RerVRd5QVFyp
	0SgbNXVNAzZX2W/3n13Kc6czo+q40R7pPlPxUcDt7697m70QX88MIW29tZSvlURcW4IYoiVGAjoHL
	peG+9e3WUpAOqlOyk0flXvtUdk6Wqb7WQcGqfTdlZJhKEK9KdGgFcF6Pn92XmSN0OI+TzNifPtjfn
	k3J9ZdIHeccOmDrW6vsQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lqBa9-002bZ4-T6; Mon, 07 Jun 2021 09:30:06 +0000
Received: from cpanel.siel.si ([46.19.9.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lqBHU-002V2a-0M
 for barebox@lists.infradead.org; Mon, 07 Jun 2021 09:10:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=norik.com; 
 s=default;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:
 To:From:Sender:Reply-To:Cc:Content-Type:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=+1dhXgoqF+9YlzGPDvnpwLfkIwJLhr8iirJAC4TQUBA=; b=pT7D92+GpNwiJGpxztK+UUE3wF
 WsLeluBxP0Dsisob7G6kWdGVN/ata2oovr25qXe0Ey4B96Zjza9ZBsDQTjwkF0+iEb5tH+j3CZg0V
 8xvg2yX84zkASuU+ZtgcjIyE0FgD4qrjeh3FMx3iqBINw6oH689J84WXl0nHqxbN0kYfpUqWoyddN
 oaJsZrjo/XkZWGHyUHz2N75q7HdWBzHpAvmMN1HCpApllb5uQpIohj6u1cIQVumJNxArsNWld9P9D
 eiai8zfa9zUreZGHIrdWh0ZfsT18qPCUo1Nqz6jycEhEWxRTw2ha2f6GfjhfEmm0SvvJMj1X9HCZK
 e5Csu6Gw==;
Received: from [89.212.21.243] (port=44534 helo=localhost.localdomain)
 by cpanel.siel.si with esmtpsa (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 (Exim 4.94.2)
 (envelope-from <andrej.picej@norik.com>) id 1lqBHD-00FlZg-Dn
 for barebox@lists.infradead.org; Mon, 07 Jun 2021 11:10:39 +0200
From: Andrej Picej <andrej.picej@norik.com>
To: barebox@lists.infradead.org
Date: Mon,  7 Jun 2021 11:09:50 +0200
Message-Id: <20210607090951.107269-1-andrej.picej@norik.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - cpanel.siel.si
X-AntiAbuse: Original Domain - lists.infradead.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - norik.com
X-Get-Message-Sender-Via: cpanel.siel.si: authenticated_id:
 andrej.picej@norik.com
X-Authenticated-Sender: cpanel.siel.si: andrej.picej@norik.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210607_021048_274958_A8F53446 
X-CRM114-Status: UNSURE (   9.37  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] ARM: i.MX: xload-gpmi-nand: fix bad block mark swapping
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Until now GPMI NAND xloader assumed NAND bad block marker start bit was
always 0! This is not true for every NAND chip out there. Thus make
xloader more robust and port NAND bad block marker swapping
functionality from the nand_mxs driver and make use of it in PBL.

This patch was tested on a PHYTEC phyCARD i.MX6Q board with next NANDs:
 - Spansion S34ML08G201FI00,
 - Samsung K9K8G08U0E and
 - Winbond W29N08GVSIAA.

Signed-off-by: Andrej Picej <andrej.picej@norik.com>
---
 arch/arm/mach-imx/xload-gpmi-nand.c | 41 +++++++++++++++++++++++++++--
 1 file changed, 39 insertions(+), 2 deletions(-)

diff --git a/arch/arm/mach-imx/xload-gpmi-nand.c b/arch/arm/mach-imx/xload-gpmi-nand.c
index b3fd479cb..661302762 100644
--- a/arch/arm/mach-imx/xload-gpmi-nand.c
+++ b/arch/arm/mach-imx/xload-gpmi-nand.c
@@ -1086,6 +1086,43 @@ static int block_is_bad(struct mxs_nand_info *info, int blocknum)
 	return 0;
 }
 
+/* Function ported from nand_mxs driver -> mxs_nand_swap_block_mark() */
+static void bad_block_marker_swap(struct mxs_nand_info *info,
+		uint8_t *data_buf, uint8_t *oob_buf)
+{
+	struct fcb_block *fcb = &info->fcb;
+
+	uint32_t bit_offset;
+	uint32_t buf_offset;
+
+	uint32_t src;
+	uint32_t dst;
+
+	/* Location of bad block marker is specified in FCB. */
+	bit_offset = fcb->BadBlockMarkerStartBit;
+	buf_offset = fcb->BadBlockMarkerByte;
+
+	/*
+	 * Get the byte from the data area that overlays the block mark. Since
+	 * the ECC engine applies its own view to the bits in the page, the
+	 * physical block mark won't (in general) appear on a byte boundary in
+	 * the data.
+	 */
+
+	src = data_buf[buf_offset] >> bit_offset;
+	src |= data_buf[buf_offset + 1] << (8 - bit_offset);
+
+	dst = oob_buf[0];
+
+	oob_buf[0] = src;
+
+	data_buf[buf_offset] &= ~(0xff << bit_offset);
+	data_buf[buf_offset + 1] &= 0xff << bit_offset;
+
+	data_buf[buf_offset] |= dst << bit_offset;
+	data_buf[buf_offset + 1] |= dst >> (8 - bit_offset);
+}
+
 static int read_firmware(struct mxs_nand_info *info, int startpage,
 	void *dest, int len)
 {
@@ -1121,8 +1158,8 @@ static int read_firmware(struct mxs_nand_info *info, int startpage,
 			return ret;
 		}
 
-		*((u8 *)dest + fcb->BadBlockMarkerByte) =
-			*(u8 *)(dest + pagesize);
+		/* Read DMA completed, now swap the bad block marker. */
+		bad_block_marker_swap(info, dest, dest + pagesize);
 
 		numpages--;
 		dest += pagesize;
-- 
2.25.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

