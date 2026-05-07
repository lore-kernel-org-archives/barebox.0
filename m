Delivery-date: Thu, 07 May 2026 13:52:36 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wKxHQ-001xAH-30
	for lore@lore.pengutronix.de;
	Thu, 07 May 2026 13:52:36 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wKxHP-0002NB-KQ
	for lore@pengutronix.de; Thu, 07 May 2026 13:52:36 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=B3Qme5vAgqUr/Y1WnLujBM1dzUraBCQ/49MmTjFE/8U=; b=ybtBmug1UAudgvYDBOeKGAxNlU
	GvA21b5HJ2aDTPVLE/BVBbk0wWZycvey0KNUcdbacj9eqqRWQupFR8pf3YGb+gJSjedoxMQGmg8gi
	itWh/qhn9XmWqQrEWcmwMhDbVzDSNmz5pFohk2BHVfR7r67j+lZikRnyyAGEoWwktHlE6uBLuiHei
	xxxijLtAhOcci+9HcU3k36qahB+1qB2nyxmYOaMurRPidY/+cpf9v26maNU31y4XTJJ3lyJ5dN6Oc
	Qprblg4UYuIAmQNCsSy9RbSsCeqhI1n1v5rOwe71EwsaoHSFrU+Y8cuaPipY+cHiOIuIuKSPGuMoX
	OHUmJdjQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wKxGB-00000003i3W-2SHN;
	Thu, 07 May 2026 11:51:19 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wKxG9-00000003i2l-0zXW
	for barebox@lists.infradead.org;
	Thu, 07 May 2026 11:51:18 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1wKxG7-0001as-4E; Thu, 07 May 2026 13:51:15 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Thu,  7 May 2026 13:51:12 +0200
Message-ID: <20260507115114.1367936-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260507_045117_278988_5690DC6B 
X-CRM114-Status: UNSURE (   9.14  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] efi: payload: handle NULL return from loadable_view for ramdisk
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

loadable_view() can return NULL (distinct from ERR_PTR), which is not
caught by IS_ERR().

efi_load_os() already handles this with the ?: ERR_PTR(-ENODATA) pattern,
so apply the same to efi_load_ramdisk().

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 efi/payload/bootm.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/efi/payload/bootm.c b/efi/payload/bootm.c
index 30b6fe8977e0..2f9cc3cbf76b 100644
--- a/efi/payload/bootm.c
+++ b/efi/payload/bootm.c
@@ -86,7 +86,7 @@ static int efi_load_ramdisk(struct image_data *data,
 	if (!data->initrd)
 		return 0;
 
-	initrd_mem = loadable_view(data->initrd, initrd_size);
+	initrd_mem = loadable_view(data->initrd, initrd_size) ?: ERR_PTR(-ENODATA);
 	if (IS_ERR(initrd_mem)) {
 		pr_err("Cannot open ramdisk image: %pe\n", initrd_mem);
 		return PTR_ERR(initrd_mem);
-- 
2.47.3



