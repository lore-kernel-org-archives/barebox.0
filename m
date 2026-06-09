Delivery-date: Tue, 09 Jun 2026 18:11:19 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wWz2t-0042Xu-1l
	for lore@lore.pengutronix.de;
	Tue, 09 Jun 2026 18:11:19 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wWz2s-0004fA-UY
	for lore@pengutronix.de; Tue, 09 Jun 2026 18:11:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=JviZRmGdTktQhhyTVlOeKEdOQ7MnvsvOQ6x7Qciz0+g=; b=vKHeZpOhbfLgfxq8HjUOvrnuXb
	U6MtiBFDPtYFBNDMYy8uGhkH6dkmMI1CHGYtmGmSFTbi7dcnkdkdtUJr1khoaP92fgA9x/o8U97cC
	WxDrRRE31s/emS1buO8D1omn0k/aWfejUBOksnNOxfPzCu9bOIIa2eJoP5koDKYonHCXAqTGRtPaD
	2tuW2Er5xCVF9gcpCEvY/VSGMLt2Lj+EX2EB2tHmEo4+QVaMkMS3bjt8hxXSV6tr51/VKAkP6aR3S
	IbjVIDQSYfWT3HnJpgA7jIxRk0v+nncK0JItzsZz2chnOxpB8mUImToNVa8ony2S6J3ugkCk2gHso
	V4zphW/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWz1Q-0000000603j-1hU4;
	Tue, 09 Jun 2026 16:09:48 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWz1M-0000000602s-3Vss
	for barebox@lists.infradead.org;
	Tue, 09 Jun 2026 16:09:46 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=localhost.localdomain)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1wWz1I-0004NX-NN; Tue, 09 Jun 2026 18:09:40 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Fabian Pflug <f.pflug@pengutronix.de>,
	Ahmad Fatoum <a.fatoum@barebox.org>
Date: Tue,  9 Jun 2026 18:09:37 +0200
Message-ID: <20260609160939.2032936-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260609_090945_131955_78002F8E 
X-CRM114-Status: UNSURE (   9.41  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH RFT] ARM: lib32: bootm: support booting EFI-stubbed kernels without EFI
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The bootm_efi_check_image callback implements the global.bootm.efi aware
handling for EFI-stubbed kernels:

  - If no CONFIG_EFI_LOADER support is compiled in, boot normally
  - If CONFIG_EFI_LOADER=y, consult global.bootm.efi

In absence of this callback, the filetype match is taken literally,
which will just lead to EFI-stubbed kernel images being refused
outright.

Align ARM32 with what ARM64 and RISC-V already do and set
image_handler::check_image appropriately.

Fixes: 0fca24055c57 ("filetype: add new filetype for efi-stubbed ARM zImages")
Reported-by: Fabian Pflug <f.pflug@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 arch/arm/lib32/bootm.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/lib32/bootm.c b/arch/arm/lib32/bootm.c
index 4bca29c3fbf8..e94bb979eff9 100644
--- a/arch/arm/lib32/bootm.c
+++ b/arch/arm/lib32/bootm.c
@@ -515,12 +515,14 @@ static int do_bootz_linux(struct image_data *data)
 static struct image_handler zimage_handler = {
 	.name = "ARM zImage",
 	.bootm = do_bootz_linux,
+	.check_image = bootm_efi_check_image,
 	.filetype = filetype_arm_zimage,
 };
 
 static struct image_handler barebox_handler = {
 	.name = "ARM barebox",
 	.bootm = do_bootm_linux,
+	.check_image = bootm_efi_check_image,
 	.filetype = filetype_arm_barebox,
 };
 
-- 
2.47.3



