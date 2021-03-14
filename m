Delivery-date: Sun, 14 Mar 2021 13:29:47 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lLPsR-0007o6-RV
	for lore@lore.pengutronix.de; Sun, 14 Mar 2021 13:29:47 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lLPsN-0007BZ-Fo
	for lore@pengutronix.de; Sun, 14 Mar 2021 13:29:47 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=X1I4g6Ab3b7HrAPLTyd/7xig/g0Cq8ibHg5qcOwaJPM=; b=aYgU+Z9ur6U7BTX+plw9fOXlh
	mP2guK6o7AOd7dGHBcnsvEoepge04l71O2ci0t3Bm9UO1zHMrYEpRiWOUBGMzrzABetOQQSSIWWmB
	nIhqT8KKYEFCgP77vgyK/0sST2bkcMxmFONQs412QZ4RM3BmtXHP3Q+52g1C6n7hmXCaevDf9xETU
	e+s03DKLgV0+x2nhhhil4xwBDDKwOBb9UqTiaFFfSpvJVlHlBiyxhukEHdhFsKzCSLrP2krZ9lbSx
	snhu3iwGhWhsZGB9S707cfM4ClX1sibflFyi00qAnhgBsR13Dl0b+JbI4PVFpmu5F+BbDGZJg16a1
	8BHTXdGqQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lLPrP-00EC77-00; Sun, 14 Mar 2021 12:28:43 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lLPqx-00EBud-Du
 for barebox@lists.infradead.org; Sun, 14 Mar 2021 12:28:18 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lLPqo-0006LX-SJ; Sun, 14 Mar 2021 13:28:06 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lLPqn-000169-IX; Sun, 14 Mar 2021 13:28:05 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Sun, 14 Mar 2021 13:27:50 +0100
Message-Id: <20210314122804.4128-7-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210314122804.4128-1-a.fatoum@pengutronix.de>
References: <20210314122804.4128-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210314_122815_706549_E185715E 
X-CRM114-Status: GOOD (  11.84  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, rcz@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 06/20] filetype: detect RISC-V Linux kernel image
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We still have no boot support for RISC-V, take the first step by
enabling barebox to detect a RISC-V Linux kernel image. The header
format is aligned with that of arm64.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/filetype.c  | 3 +++
 include/filetype.h | 1 +
 2 files changed, 4 insertions(+)

diff --git a/common/filetype.c b/common/filetype.c
index 539c96b74527..d89a5bcffea5 100644
--- a/common/filetype.c
+++ b/common/filetype.c
@@ -61,6 +61,7 @@ static const struct filetype_str filetype_str[] = {
 	[filetype_kwbimage_v1] = { "MVEBU kwbimage (v1)", "kwb1" },
 	[filetype_android_sparse] = { "Android sparse image", "sparse" },
 	[filetype_arm64_linux_image] = { "ARM aarch64 Linux image", "aarch64-linux" },
+	[filetype_riscv_linux_image] = { "RISC-V Linux image", "riscv-linux" },
 	[filetype_elf] = { "ELF", "elf" },
 	[filetype_imx_image_v1] = { "i.MX image (v1)", "imx-image-v1" },
 	[filetype_imx_image_v2] = { "i.MX image (v2)", "imx-image-v2" },
@@ -303,6 +304,8 @@ enum filetype file_detect_type(const void *_buf, size_t bufsize)
 		return filetype_bpk;
 	if (le32_to_cpu(buf[14]) == 0x644d5241)
 		return filetype_arm64_linux_image;
+	if (le32_to_cpu(buf[14]) == 0x05435352)
+		return filetype_riscv_linux_image;
 	if ((buf8[0] == 0x5a || buf8[0] == 0x69 || buf8[0] == 0x78 ||
 	     buf8[0] == 0x8b || buf8[0] == 0x9c) &&
 	    buf8[0x1] == 0 && buf8[0x2] == 0 && buf8[0x3] == 0 &&
diff --git a/include/filetype.h b/include/filetype.h
index 3019dda6ed78..cc97f0a6ba9f 100644
--- a/include/filetype.h
+++ b/include/filetype.h
@@ -43,6 +43,7 @@ enum filetype {
 	filetype_kwbimage_v1,
 	filetype_android_sparse,
 	filetype_arm64_linux_image,
+	filetype_riscv_linux_image,
 	filetype_elf,
 	filetype_imx_image_v1,
 	filetype_imx_image_v2,
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

