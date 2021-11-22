Delivery-date: Mon, 22 Nov 2021 09:52:33 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mp53x-0003YJ-Sk
	for lore@lore.pengutronix.de; Mon, 22 Nov 2021 09:52:33 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mp53w-0001Up-NS
	for lore@pengutronix.de; Mon, 22 Nov 2021 09:52:33 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CJBVkofyHylt1iTKHe/oYY32dlwV6sV92st9pwZNelo=; b=RRsM+QH+IPPT9K
	VLizC0SL/8n8CzPAE2nE0ekDDJqfX2TyICOsCXvA9ReMEC6qMeDOJFk41GluRGnw4h74yaBL9B+Fj
	cpnNiasP34VxnSR/mcQzhG2KzX92MmfvGog/y/2DaEg9UG1tWT97/sbpQkRhIqtWyzWqCMh0c1CVq
	M0uFGtLQezj+5hk8CKtUZYtWNjMNVRBvkINwM32Kc/t0g5vk5S+rtioUE5V3s5LLb9vi5frzLrvNH
	vboddR/bh1vHLOHZhhlcMYOAxRp2HoJF3PeZU7mLbxIvItZ3yHRoTnjyl8jnEy75vI0dU2sKbpSFf
	+Gl75+QZtUFeWHWwJZ4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mp52R-00FMnl-Nq; Mon, 22 Nov 2021 08:51:00 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mp4zK-00FL4z-2b
 for barebox@lists.infradead.org; Mon, 22 Nov 2021 08:47:47 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1mp4zA-0007wE-Eu; Mon, 22 Nov 2021 09:47:36 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1mp4z9-00Ateb-9l; Mon, 22 Nov 2021 09:47:35 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 22 Nov 2021 09:47:05 +0100
Message-Id: <20211122084732.2597109-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211122084732.2597109-1-a.fatoum@pengutronix.de>
References: <20211122084732.2597109-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211122_004746_175290_1FBFE330 
X-CRM114-Status: GOOD (  11.23  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 03/30] block : efi: rename driver variable from efi_fs_driver
 to efi_bio_driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Rename the copy-pasted second efi_fs_driver to a more fitting
efi_bio_driver.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/block/efi-block-io.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/block/efi-block-io.c b/drivers/block/efi-block-io.c
index 3475615baf93..04234b5ab2d4 100644
--- a/drivers/block/efi-block-io.c
+++ b/drivers/block/efi-block-io.c
@@ -182,11 +182,11 @@ static int efi_bio_probe(struct efi_device *efidev)
 	return 0;
 }
 
-static struct efi_driver efi_fs_driver = {
+static struct efi_driver efi_bio_driver = {
         .driver = {
 		.name  = "efi-block-io",
 	},
         .probe = efi_bio_probe,
 	.guid = EFI_BLOCK_IO_PROTOCOL_GUID,
 };
-device_efi_driver(efi_fs_driver);
+device_efi_driver(efi_bio_driver);
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

