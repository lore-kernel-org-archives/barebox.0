Delivery-date: Thu, 18 Dec 2025 12:41:19 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWCNj-00Cobz-1O
	for lore@lore.pengutronix.de;
	Thu, 18 Dec 2025 12:41:19 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWCNB-0002gE-FR
	for lore@pengutronix.de; Thu, 18 Dec 2025 12:41:19 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=RLaFOAonOPdLbJT05D6B3XAuFjjNLykz+3K/gSMX8Sc=; b=rLv//5jRw7ZRiOB2iTvWl7HszK
	gbbI2dIz/w7WK7ezxrvlcrh5cJXJXSFFUctgC0wOtb8cOWV+/xpWFthBnvXKn9JT0dHAhuwSu7ioq
	rqbhrdyulzqJE6vPeaRrteEeTJJ5r7NZ6wYWtVI9E3iQAhhYptw1KOrhy3GqDbBRonu7/vQvTdBeY
	um1pbj55VFOv9ta1eS6M8wEpTlENGVHFWgYT2vXJhFz4VFlBBvk8L3e44XqtWbuJH5YA0VKjyTgjF
	wRp+7kqsR/4zEAPKko/KEnaFLB+zDqfNaFe2Qsk9QXJiKLXRyCXeNjArw5HGy+tzmF8tRLfgE+4Id
	svHTdY2g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWCKb-00000008LrO-42ff;
	Thu, 18 Dec 2025 11:38:06 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWCJn-00000008Kei-1otT
	for barebox@bombadil.infradead.org;
	Thu, 18 Dec 2025 11:37:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=RLaFOAonOPdLbJT05D6B3XAuFjjNLykz+3K/gSMX8Sc=; b=bBl9oGy+/rP9GsJgroQKwlTrzc
	+GBSSvpUtQkhKgqQbQC/AM8ki2CYi6vszFbwAdt71jIzgv3L4L9msa3sFxCetmBIXTe0ulM0yN5wY
	0xLaV6uLfTL0hzWZK0pIlZDw5Xx9Mxl5NUF9nn//1moMANfCp5/31MXM1XdV8/T+3Z9rwdOMzald2
	6SN5CkcXbglL10N7saPJSO2yDX2aXPgSozzzVdPTqIjZCoJwVsFnQV4vn1gEmyyebzhn6GwGIKjju
	6BDAIhuap5D/RAO7Q66U26B1YSWb/sdoufZBaC75NQkfS1H+U9PiX2m6AFQqbPR+xVcddXumJ0A/J
	ukGMXDbQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWBS1-00000008fRT-0XBv
	for barebox@lists.infradead.org;
	Thu, 18 Dec 2025 10:41:59 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWCJN-0008CH-FM; Thu, 18 Dec 2025 12:36:49 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWCJN-006Gvm-0r;
	Thu, 18 Dec 2025 12:36:49 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWBw4-0000000AVre-4AzF;
	Thu, 18 Dec 2025 12:12:45 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 18 Dec 2025 11:38:01 +0100
Message-ID: <20251218111242.1527495-42-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251218111242.1527495-1-a.fatoum@pengutronix.de>
References: <20251218111242.1527495-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251218_104157_939358_5D9E9F92 
X-CRM114-Status: GOOD (  12.02  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v1 41/54] filetype: add new filetype for efi-stubbed ARM zImages
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

To allow booting EFI payloads on ARM and to control whether EFI stub or
normal DT boot should be attempted, add a filetype for EFI-stubbed
zImages.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/filetype.c  | 4 +++-
 include/filetype.h | 1 +
 2 files changed, 4 insertions(+), 1 deletion(-)

diff --git a/common/filetype.c b/common/filetype.c
index 196591698768..b82667c30a4b 100644
--- a/common/filetype.c
+++ b/common/filetype.c
@@ -31,6 +31,7 @@ static const struct filetype_str filetype_str[] = {
 	[filetype_unknown] = { "unknown", "unknown" },
 	[filetype_empty] = { "empty", "empty" },
 	[filetype_arm_zimage] = { "ARM Linux zImage", "arm-zimage" },
+	[filetype_arm_efi_zimage] = { "ARM/EFI Linux zImage", "arm-efi-zimage" },
 	[filetype_lzo_compressed] = { "LZO compressed", "lzo" },
 	[filetype_lz4_compressed] = { "LZ4 compressed", "lz4" },
 	[filetype_arm_barebox] = { "ARM barebox image", "arm-barebox" },
@@ -441,7 +442,7 @@ enum filetype file_detect_type(const void *_buf, size_t bufsize)
 	if (is_barebox_arm_head(_buf))
 		return filetype_arm_barebox;
 	if (buf[9] == 0x016f2818 || buf[9] == 0x18286f01)
-		return filetype_arm_zimage;
+		return is_dos_exe(buf8) ? filetype_arm_efi_zimage : filetype_arm_zimage;
 
 	if (is_dos_exe(buf8))
 		return filetype_exe;
@@ -585,6 +586,7 @@ bool filetype_is_barebox_image(enum filetype ft)
 bool filetype_is_linux_efi_image(enum filetype ft)
 {
 	switch (ft) {
+	case filetype_arm_efi_zimage:
 	case filetype_arm64_efi_linux_image:
 	case filetype_riscv_efi_linux_image:
 	case filetype_x86_efi_linux_image:
diff --git a/include/filetype.h b/include/filetype.h
index 283b8fee4c70..aed02fcc2566 100644
--- a/include/filetype.h
+++ b/include/filetype.h
@@ -13,6 +13,7 @@ enum filetype {
 	filetype_unknown,
 	filetype_empty,
 	filetype_arm_zimage,
+	filetype_arm_efi_zimage,
 	filetype_lzo_compressed,
 	filetype_lz4_compressed,
 	filetype_arm_barebox,
-- 
2.47.3



