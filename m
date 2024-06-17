Delivery-date: Mon, 17 Jun 2024 13:37:36 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sJAg4-007YjE-0t
	for lore@lore.pengutronix.de;
	Mon, 17 Jun 2024 13:37:36 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sJAg2-0007HQ-Nk
	for lore@pengutronix.de; Mon, 17 Jun 2024 13:37:36 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3dvj+UzPm/4zVFULFU7sjsOqXeaFviCeauqfVq2hnSQ=; b=BQihv1GAquhOFDOqcHy4+BGHzM
	dWjZ934omEo2Bop3sAaArA0mcG1vfJp/wVCrfmHhIiFru3Zace1t2sDieUFzGy6iWD/773Tt6H+AV
	LLtjPO0ykmyALZntxamN81cxoV2OLqE11aJlfYAwSchSyAwQ8evsd733U3Dx+FfP8Kr4PpZeJ7QKT
	/FAoe20NmEIp2bjuosvzIpoutzJj9yARydt2nysstihJOJIZjSOZR7VfsWNorVY1R+8f2mjRnHdRJ
	9B+XrZdzCLP1pOuMUVWv7tNk72p2ubiy5zo8ozCdWEURr8NwCtkQBjM/slc/95gFka1cDq1/avs4X
	fy8Of+vg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJAfY-0000000AVor-1kWj;
	Mon, 17 Jun 2024 11:37:04 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJAfB-0000000AVWl-3RBK
	for barebox@lists.infradead.org;
	Mon, 17 Jun 2024 11:36:45 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=ratatoskr.trumtrar.info)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.trumtrar@pengutronix.de>)
	id 1sJAf9-0006ab-0K; Mon, 17 Jun 2024 13:36:39 +0200
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Mon, 17 Jun 2024 13:36:36 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240617-v2024-05-0-topic-socfpga-arria10-xloader-v1-14-48a6eba4bb5e@pengutronix.de>
References: <20240617-v2024-05-0-topic-socfpga-arria10-xloader-v1-0-48a6eba4bb5e@pengutronix.de>
In-Reply-To: <20240617-v2024-05-0-topic-socfpga-arria10-xloader-v1-0-48a6eba4bb5e@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240617_043642_925049_6D0F1B14 
X-CRM114-Status: GOOD (  13.62  )
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
Subject: [PATCH 14/14] ARM: arria10-xload: rework broken bitstream handling
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

When after 10 tries, the bitstream still couldn't be loaded, mark the
boot as failed in ARRIA10_SYSMGR_ROM_INITSWSTATE.
This information can be retrieved on barebox start (in lowlevel.c) to
decide what to do.

The bootROM will *not* boot the next boot slot, but will just try again
booting the failed bootloader slot.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 arch/arm/mach-socfpga/arria10-xload.c | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/arch/arm/mach-socfpga/arria10-xload.c b/arch/arm/mach-socfpga/arria10-xload.c
index 3921ace3aa..afec55c33a 100644
--- a/arch/arm/mach-socfpga/arria10-xload.c
+++ b/arch/arm/mach-socfpga/arria10-xload.c
@@ -364,7 +364,7 @@ static inline int __arria10_load_fpga(void *buf, uint32_t sector, uint32_t end)
 
 	while (sector <= end) {
 		ret = a10_fpga_write(buf, SZ_16K);
-		if (ret == -ENOSPC)
+		if (ret)
 			break;
 
 		arria10_kick_l4wd0();
@@ -375,7 +375,7 @@ static inline int __arria10_load_fpga(void *buf, uint32_t sector, uint32_t end)
 	arria10_kick_l4wd0();
 	ret = a10_fpga_write_complete();
 	if (ret)
-		return -EAGAIN;
+		return ret;
 
 	return 0;
 }
@@ -391,6 +391,8 @@ int arria10_load_fpga(int offset, int bitstream_size)
 	if (offset)
 		offset = offset / SECTOR_SIZE;
 
+	writel(0x0, ARRIA10_SYSMGR_ROM_ISW7);
+
 	/* Up to 4 retries have been seen on the Enclustra Mercury AA1+ board, as
 	 * FPGA configuration is mandatory to be able to continue the boot, take
 	 * some margin and try up to 10 times
@@ -402,10 +404,14 @@ int arria10_load_fpga(int offset, int bitstream_size)
 		ret = __arria10_load_fpga(buf, sector_count, end_sector);
 		if (!ret)
 			return 0;
+		else if (ret == -EIO)
+			break;
 		else if (ret == -EAGAIN)
 			continue;
 	}
 
+	writel(0x64616544, ARRIA10_SYSMGR_ROM_ISW7);
+
 	hang();
 	return -EIO;
 }

-- 
2.43.2



