Delivery-date: Wed, 11 Oct 2023 10:40:04 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qqUlA-004Eet-Nk
	for lore@lore.pengutronix.de; Wed, 11 Oct 2023 10:40:04 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qqUl8-0003Zf-Nm
	for lore@pengutronix.de; Wed, 11 Oct 2023 10:40:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=4qJ6xnFZ+Q5XBP467GjMI9zX449u593gM4HCtO5Uk5o=; b=ZFjdxzHRmSxAOKIAWmhzP18hmC
	+grMlo0FeIu1Lp9hZ7HQIQJ3dkGLjBa2hN3hGpzQz8GihQaJu5QuFtFFotiq7xEA477mQLWIxkdfl
	ZM8VZ307S7otwXDQpF/7X+YVi0H9qKfS2voIgpTro78oSIh/yAxA7aoqgbR/aOC8/yDywuJLj/3px
	mj00jtDJDSHGlCeY/XB8nZFBroh4LvB3f+1+H1PM7hYRadP+InKc696mHWEpnqPAu3MV67PGBPZ+6
	aO60iCSHuqlcB7ZiqpeASx+lwNtVA+8MC2q5b+esJTcSfdY1wy1uc+N9GWqDbaeWvosAed+TGo4Ht
	8vapUZCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qqUji-00FF6x-1e;
	Wed, 11 Oct 2023 08:38:34 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qqUjf-00FF6E-02
	for barebox@lists.infradead.org;
	Wed, 11 Oct 2023 08:38:33 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=pengutronix.de)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.trumtrar@pengutronix.de>)
	id 1qqUja-0003M6-0Y; Wed, 11 Oct 2023 10:38:26 +0200
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Bruno Knittel <bruno.knittel@bruker.com>
Date: Wed, 11 Oct 2023 10:37:50 +0200
Message-ID: <20231011083813.1353200-1-s.trumtrar@pengutronix.de>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231011_013831_052941_08FB321C 
X-CRM114-Status: GOOD (  15.29  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: arria10: xload: retry FPGA configuration
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Bruno Knittel <bruno.knittel@bruker.com>

The Intel documentation states that the FPGA configuration might fail.
This has been observed on the Enclustra AA1+ board where up to 4 retries
where required to configure the FPGA.

Debugging session showed that the data where correctly read from the
eMMC but yet the configuration failed.

This commit introduces a retry loop on the FPGA configuration.
Up to 10 retries (arbitrary) are attempted.
As the hardware can't be used anyway without the FPGA loaded, this
doesn't introduce any boot time problems. Taking longer is better than
just hang()ing.

Signed-off-by: Bruno Knittel <bruno.knittel@bruker.com>
Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 arch/arm/mach-socfpga/arria10-xload.c | 47 +++++++++++++++++----------
 1 file changed, 30 insertions(+), 17 deletions(-)

diff --git a/arch/arm/mach-socfpga/arria10-xload.c b/arch/arm/mach-socfpga/arria10-xload.c
index 9d54a1de58..0e49452c17 100644
--- a/arch/arm/mach-socfpga/arria10-xload.c
+++ b/arch/arm/mach-socfpga/arria10-xload.c
@@ -359,33 +359,46 @@ int arria10_load_fpga(int offset, int bitstream_size)
 	int ret;
 	uint32_t count;
 	uint32_t size = bitstream_size / SECTOR_SIZE;
+	uint32_t retryCount;
 
 	if (offset)
 		offset = offset / SECTOR_SIZE;
 
-	count = offset;
+	/* Up to 4 retires have been seen on the Enclustra Mercury AA1+ board, as FPGA configuration is mandatory
+	 * to be able to continue the boot, take some margin and try up to 10 times
+	 */
+	for (retryCount = 0; retryCount < 10; ++retryCount) {
+		count = offset;
 
-	arria10_read_blocks(buf, count + bitstream.first_sec, SZ_16K);
+		arria10_read_blocks(buf, count + bitstream.first_sec, SZ_16K);
 
-	count += SZ_16K / SECTOR_SIZE;
+		count += SZ_16K / SECTOR_SIZE;
 
-	ret = a10_fpga_init(buf);
-	if (ret)
-		hang();
+		ret = a10_fpga_init(buf);
+		if (ret)
+			continue;
 
-	while (count <= size) {
-		ret = a10_fpga_write(buf, SZ_16K);
-		if (ret == -ENOSPC)
-			break;
-		count += SZ_16K / SECTOR_SIZE;
-		ret = arria10_read_blocks(buf, count, SZ_16K);
-	}
+		while (count <= size) {
+			ret = a10_fpga_write(buf, SZ_16K);
+			if (ret == -ENOSPC)
+				continue;
 
-	ret = a10_fpga_write_complete();
-	if (ret)
-		hang();
+			count += SZ_16K / SECTOR_SIZE;
+			ret = arria10_read_blocks(buf, count, SZ_16K);
+			// Reading failed, consider this a failed attempt to configure the FPGA and retry
+			if (ret)
+				continue;
+		}
 
-	return 0;
+		ret = a10_fpga_write_complete();
+		if (ret)
+			continue;
+
+		return 0;
+	}
+
+	hang();
+	return -EIO;
 }
 
 void arria10_start_image(int offset)
-- 
2.41.0



