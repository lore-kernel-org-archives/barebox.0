Delivery-date: Fri, 17 May 2024 09:48:16 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s7sK8-00145k-2W
	for lore@lore.pengutronix.de;
	Fri, 17 May 2024 09:48:16 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s7sK8-0007K3-5n
	for lore@pengutronix.de; Fri, 17 May 2024 09:48:16 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=vTYjyFddjcRyz5SAfp8nKt4vBBsEmjMGScX5J8H3Lq0=; b=3kE9/TmIh1za8rxj9jiTkATf88
	hEEPtc9RNuqGPp1yQ966bQLg+RqAAsni3r3Zc+pIKd8z9D6X5CUz8U/S1QaVdro59Xtl5SxCjZ69w
	A46C9451lfr18DczmaTA7GDTF33WwhVPfPJgNy8qepqHMMtWvkjao+A3jb+Wfd6ndbd96S3TQfZc+
	1sSBQaMLkWR2wbAO669+R9KItdMZ9SCg7CFdFB9faczsRDDZT08xUVXhrD30ZuzzcbVL4h6BWAGku
	eoHZ+FpMAyTLM5EYVV8IBjb03iHxJEwzECXus2zNo9ToOjKWti+4pGuSai5PjFBxHNG+hhQpG4b9t
	PMJX/zBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7sJa-000000076Pd-3Xgl;
	Fri, 17 May 2024 07:47:42 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7sJX-000000076Or-2GT0
	for barebox@lists.infradead.org;
	Fri, 17 May 2024 07:47:40 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s7sJU-00077A-O2; Fri, 17 May 2024 09:47:36 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s7sJU-001q0C-BS; Fri, 17 May 2024 09:47:36 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s7sJU-003DS3-0r;
	Fri, 17 May 2024 09:47:36 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 17 May 2024 09:47:35 +0200
Message-Id: <20240517074735.766656-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240517_004739_600915_AA72CC0D 
X-CRM114-Status: GOOD (  11.80  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master] filetype: fix OOB read when detecting type of truncated kernel images
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The ARM and RISC-V kernel Image format features a 64-byte header and
places the 32-bit magic value identifying it at offset 56.

The check for the magic values should thus ensure that at least 56 bytes
are guaranteed to be available in the buffer, thus move it into
the >= 64 byte segment of the function.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/filetype.c | 14 ++++++++------
 1 file changed, 8 insertions(+), 6 deletions(-)

diff --git a/common/filetype.c b/common/filetype.c
index f922494500d5..db65d1ece25a 100644
--- a/common/filetype.c
+++ b/common/filetype.c
@@ -319,12 +319,7 @@ enum filetype file_detect_type(const void *_buf, size_t bufsize)
 		return filetype_mips_barebox;
 	if (buf[0] == be32_to_cpu(0x534F4659))
 		return filetype_bpk;
-	if (le32_to_cpu(buf[14]) == 0x644d5241)
-		return is_dos_exe(buf8) ? filetype_arm64_efi_linux_image : filetype_arm64_linux_image;
-	if (le32_to_cpu(buf[14]) == 0x05435352)
-		return is_dos_exe(buf8) ? filetype_riscv_efi_linux_image : filetype_riscv_linux_image;
-	if (le32_to_cpu(buf[14]) == 0x56435352 && !memcmp(&buf[12], "barebox", 8))
-		return filetype_riscv_barebox_image;
+
 	if (strncmp(buf8, "RKNS", 4) == 0)
 		return filetype_rockchip_rkns_image;
 	if (le32_to_cpu(buf[0]) == le32_to_cpu(0xaa640001))
@@ -369,6 +364,13 @@ enum filetype file_detect_type(const void *_buf, size_t bufsize)
 	if (bufsize < 64)
 		return filetype_unknown;
 
+	if (le32_to_cpu(buf[14]) == 0x644d5241)
+		return is_dos_exe(buf8) ? filetype_arm64_efi_linux_image : filetype_arm64_linux_image;
+	if (le32_to_cpu(buf[14]) == 0x05435352)
+		return is_dos_exe(buf8) ? filetype_riscv_efi_linux_image : filetype_riscv_linux_image;
+	if (le32_to_cpu(buf[14]) == 0x56435352 && !memcmp(&buf[12], "barebox", 8))
+		return filetype_riscv_barebox_image;
+
 	if (le32_to_cpu(buf[5]) == 0x504d5453)
 		return filetype_mxs_bootstream;
 
-- 
2.39.2



