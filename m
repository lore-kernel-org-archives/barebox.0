Delivery-date: Mon, 17 Jun 2024 13:37:28 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sJAfw-007YgF-2m
	for lore@lore.pengutronix.de;
	Mon, 17 Jun 2024 13:37:28 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sJAfw-0007AR-02
	for lore@pengutronix.de; Mon, 17 Jun 2024 13:37:28 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=AwRq4gbbiyMFapKFDu5HS2MVYLTb8X1YZ8KKitVf0Hk=; b=cR+qFRjf/35XmempDPU9tgT4Ic
	dq2U00097EWb9Wn23USynXZe5OFHXE5GYhtIedgFqEw+0emc8XK9L1xWpTGx78VbsZCn+MUf9onEZ
	smSHAuH5MSh1Bb6bruilO6cKhEKoWoaS4a8eiFxrwf/iPhppdAqJT0YWOuzY/ZUF4MkB2BGzmkWJ9
	xPNyUmWHyc17N4PDFxYlEPsys6a8r6Zpjl7P7s6T3h33sN6w06BOOdPhH8R//BIerH0QdtX0dw2pU
	oxTalD6GdXAoDeKDHbQ0bt7QtyefjVOIk1Sgw4f38PL6I/MkIZCygpuiIWwuQF/UkbQPMKqRPoI1b
	iu+vEiyg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJAfP-0000000AVhm-0HMp;
	Mon, 17 Jun 2024 11:36:55 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJAfA-0000000AVWI-3UPh
	for barebox@lists.infradead.org;
	Mon, 17 Jun 2024 11:36:43 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=ratatoskr.trumtrar.info)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.trumtrar@pengutronix.de>)
	id 1sJAf8-0006ab-Aa; Mon, 17 Jun 2024 13:36:38 +0200
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Mon, 17 Jun 2024 13:36:29 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240617-v2024-05-0-topic-socfpga-arria10-xloader-v1-7-48a6eba4bb5e@pengutronix.de>
References: <20240617-v2024-05-0-topic-socfpga-arria10-xloader-v1-0-48a6eba4bb5e@pengutronix.de>
In-Reply-To: <20240617-v2024-05-0-topic-socfpga-arria10-xloader-v1-0-48a6eba4bb5e@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240617_043640_948370_4F2F7BE9 
X-CRM114-Status: GOOD (  11.63  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 07/14] ARM: arria10: xload: fix __arria10_load_fpga
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

If arria10_load_fpga is called with an offset the (count < size)
comparison must handle that; increasing the count variable doesn't make
the bitstream size smaller.
As the function actually works with sectors, rename the variables to
make that clearer and add the offset to the bitstream_size to get the
correct end_sector up until __arria10_load_fpga needs to read.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 arch/arm/mach-socfpga/arria10-xload.c | 21 +++++++++++----------
 1 file changed, 11 insertions(+), 10 deletions(-)

diff --git a/arch/arm/mach-socfpga/arria10-xload.c b/arch/arm/mach-socfpga/arria10-xload.c
index d4370945a1..e9a12ca9bb 100644
--- a/arch/arm/mach-socfpga/arria10-xload.c
+++ b/arch/arm/mach-socfpga/arria10-xload.c
@@ -353,25 +353,25 @@ int arria10_prepare_mmc(int barebox_part, int rbf_part)
 	return 0;
 }
 
-static inline int __arria10_load_fpga(void *buf, uint32_t count, uint32_t size)
+static inline int __arria10_load_fpga(void *buf, uint32_t sector, uint32_t end)
 {
 	int ret;
 
-	arria10_read_blocks(buf, count + bitstream.first_sec, SZ_16K);
+	arria10_read_blocks(buf, sector + bitstream.first_sec, SZ_16K);
 
-	count += SZ_16K / SECTOR_SIZE;
+	sector += SZ_16K / SECTOR_SIZE;
 
 	ret = a10_fpga_init(buf);
 	if (ret)
 		return -EAGAIN;
 
-	while (count <= size) {
+	while (sector <= end) {
 		ret = a10_fpga_write(buf, SZ_16K);
 		if (ret == -ENOSPC)
 			break;
 
-		count += SZ_16K / SECTOR_SIZE;
-		ret = arria10_read_blocks(buf, count, SZ_16K);
+		sector += SZ_16K / SECTOR_SIZE;
+		ret = arria10_read_blocks(buf, sector, SZ_16K);
 	}
 
 	ret = a10_fpga_write_complete();
@@ -385,8 +385,8 @@ int arria10_load_fpga(int offset, int bitstream_size)
 {
 	int ret;
 	void *buf = (void *)0xffe00000 + SZ_256K - 256 - SZ_16K;
-	uint32_t count;
-	uint32_t size = bitstream_size / SECTOR_SIZE;
+	uint32_t sector_count;
+	uint32_t end_sector = (bitstream_size + offset) / SECTOR_SIZE;
 	uint32_t retryCount;
 
 	if (offset)
@@ -397,9 +397,10 @@ int arria10_load_fpga(int offset, int bitstream_size)
 	 * some margin and try up to 10 times
 	 */
 	for (retryCount = 0; retryCount < 10; ++retryCount) {
-		count = offset;
 
-		ret = __arria10_load_fpga(buf, count, size);
+		sector_count = offset;
+
+		ret = __arria10_load_fpga(buf, sector_count, end_sector);
 		if (!ret)
 			return 0;
 		else if (ret == -EAGAIN)

-- 
2.43.2



