Delivery-date: Wed, 15 Nov 2023 14:17:28 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r3Fln-00CYLJ-35
	for lore@lore.pengutronix.de;
	Wed, 15 Nov 2023 14:17:28 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r3Flm-0004L7-J6
	for lore@pengutronix.de; Wed, 15 Nov 2023 14:17:28 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=SSpk5R/so8StU/mIEDP7RDSgea7SsfrvRyKxA6Ldy+Q=; b=kC9Y9iVN3jis2s7y3zXiC0khjl
	oweuUF0DxsbkhXgBOnbAg2OOxJx+ObniqsJUPzWw1zzrPdDyhT0gzCGwADat1nR6r2RfvigaakH2J
	FARV63tIZkgQqlHPig/sGoK3HLyXgobkr3t4reQLtF9/N0esUMUtONBN24c3h+jKssZLzXepMkR97
	vn4maAA5Y+/cweu69SMZisBQcCpQaQ8cWUTELtKpPM3u9HwTcj3Lri50PNRmyGJbRhhIEuNmy9lAz
	1vPEbqasES+hcziR29WjSszmrYQV5mCfljC5gJjpCUD6XCZ2WDD9hadEEA2UZkuVbHUebzRzZuzIK
	zse0V7+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r3FkF-000qid-1J;
	Wed, 15 Nov 2023 13:15:51 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r3FkC-000qhJ-0Z
	for barebox@lists.infradead.org;
	Wed, 15 Nov 2023 13:15:49 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=ratatoskr.trumtrar.info)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.trumtrar@pengutronix.de>)
	id 1r3Fk9-0003fY-F4; Wed, 15 Nov 2023 14:15:45 +0100
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Wed, 15 Nov 2023 14:11:22 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231115-arria10-fpga-reload-on-failure-v2-1-6a45f125c9c2@pengutronix.de>
X-B4-Tracking: v=1; b=H4sIAHnDVGUC/x3NPQqAMAxA4atIZgO2/gxeRRxim2pAWklRBPHuF
 sdvee+BzCqcYaweUL4kS4oFtq7AbRRXRvHFYBvbGmN6JFUh02A4VkLlPZHHFDGQ7KcyLjR0nik
 411sokUM5yP0Ppvl9P7WngztwAAAA
To: barebox@lists.infradead.org
Cc: Bruno Knittel <bruno.knittel@bruker.com>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=3224;
 i=s.trumtrar@pengutronix.de; h=from:subject:message-id;
 bh=nY0GLAD6aiUXGxrdNJGj13BjbV+3v/mU6xjv3Y3A6/Y=;
 b=owGbwMvMwCUmvd38QH3grB+Mp9WSGFJDjlSvn243a+OjE15hBo2q86bIcl8w+fBk6rtmg5ibez3/
 cx/h7ChlYRDjYpAVU2SJXHtIY7PwZ50vx88zwMxhZQIZwsDFKQATsd/L8L/SzinZnJNh+nc3G/UFPN
 y3DG2VD1525EnaFXeH7+HSyamMDAd1u7dfV2xq/HfZtCNmuuVn31UsCS8v594x9G0+/bDlCT8A
X-Developer-Key: i=s.trumtrar@pengutronix.de; a=openpgp;
 fpr=59ADC228B313F32CF4C7CF001BB737C07F519AF8
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231115_051548_211557_549E6724 
X-CRM114-Status: GOOD (  17.16  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2] ARM: arria10: xload: retry FPGA configuration
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
Changes since v1:
    - split loop into inline function
---
 arch/arm/mach-socfpga/arria10-xload.c | 49 ++++++++++++++++++++++++++---------
 1 file changed, 37 insertions(+), 12 deletions(-)

diff --git a/arch/arm/mach-socfpga/arria10-xload.c b/arch/arm/mach-socfpga/arria10-xload.c
index 9d54a1de58..db3cc209ee 100644
--- a/arch/arm/mach-socfpga/arria10-xload.c
+++ b/arch/arm/mach-socfpga/arria10-xload.c
@@ -353,17 +353,9 @@ int arria10_prepare_mmc(int barebox_part, int rbf_part)
 	return 0;
 }
 
-int arria10_load_fpga(int offset, int bitstream_size)
+static inline int __arria10_load_fpga(void *buf, uint32_t count, uint32_t size)
 {
-	void *buf = (void *)0xffe00000 + SZ_256K - 256 - SZ_16K;
 	int ret;
-	uint32_t count;
-	uint32_t size = bitstream_size / SECTOR_SIZE;
-
-	if (offset)
-		offset = offset / SECTOR_SIZE;
-
-	count = offset;
 
 	arria10_read_blocks(buf, count + bitstream.first_sec, SZ_16K);
 
@@ -371,23 +363,56 @@ int arria10_load_fpga(int offset, int bitstream_size)
 
 	ret = a10_fpga_init(buf);
 	if (ret)
-		hang();
+		return -EAGAIN;
 
 	while (count <= size) {
 		ret = a10_fpga_write(buf, SZ_16K);
 		if (ret == -ENOSPC)
-			break;
+			return -EAGAIN;
+
 		count += SZ_16K / SECTOR_SIZE;
 		ret = arria10_read_blocks(buf, count, SZ_16K);
+		// Reading failed, consider this a failed attempt to configure the FPGA and retry
+		if (ret)
+			return -EAGAIN;
 	}
 
 	ret = a10_fpga_write_complete();
 	if (ret)
-		hang();
+		return -EAGAIN;
 
 	return 0;
 }
 
+int arria10_load_fpga(int offset, int bitstream_size)
+{
+	int ret;
+	void *buf = (void *)0xffe00000 + SZ_256K - 256 - SZ_16K;
+	uint32_t count;
+	uint32_t size = bitstream_size / SECTOR_SIZE;
+	uint32_t retryCount;
+
+	if (offset)
+		offset = offset / SECTOR_SIZE;
+
+	/* Up to 4 retries have been seen on the Enclustra Mercury AA1+ board, as
+	 * FPGA configuration is mandatory to be able to continue the boot, take
+	 * some margin and try up to 10 times
+	 */
+	for (retryCount = 0; retryCount < 10; ++retryCount) {
+		count = offset;
+
+		ret = __arria10_load_fpga(buf, count, size);
+		if (!ret)
+			return 0;
+		else if (ret == -EAGAIN)
+			continue;
+	}
+
+	hang();
+	return -EIO;
+}
+
 void arria10_start_image(int offset)
 {
 	void *buf = (void *)0x0;

---
base-commit: bc5e49335067d0c6c6e97c082a0368fe9d86b725
change-id: 20231115-arria10-fpga-reload-on-failure-ba64deafcc52

Best regards,
-- 
Steffen Trumtrar <s.trumtrar@pengutronix.de>



