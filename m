Delivery-date: Tue, 27 Jan 2026 10:04:36 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vkf00-005qL2-1L
	for lore@lore.pengutronix.de;
	Tue, 27 Jan 2026 10:04:35 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vkezu-0004RM-Iz
	for lore@pengutronix.de; Tue, 27 Jan 2026 10:04:35 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=r+5ARB/TDmWUADYOcaujwYwDBXRSLg2ZvkfySktxX+A=; b=gKvKW+0vDqs3YXL087NBlZJUQZ
	9wFI8O6y9dzlCBJWqNbZPW06G9vd1MqClv/W36BO/FJOuoLPE0vgrzHFpAEB0uLtB/LtQpIFRw8Iv
	A0PnNjl+l78raDK0aKp2rR0NPEJhU9nZqXqi1zyutOHPsoyzArqJBLitdT0jMBvp3SeBrFLSAJmCO
	Cq3s1V0J/8BKES6ly07Cjpt3wBUCyNty33lFY99ttVQOUv7cRXpP2jQxlNve+URZTedmzXHjlBW5F
	oXjgAHtD+it/NVvzS9qrSo2o9aOQ4d4QohzmSe85pE+42eZQSDTzFZRiLKWzbBXQkjp4AVl7KjExs
	GBZZj9/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkezA-0000000DtqO-1R4V;
	Tue, 27 Jan 2026 09:03:44 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkez2-0000000DtmX-0qdI
	for barebox@lists.infradead.org;
	Tue, 27 Jan 2026 09:03:43 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vkez0-00045p-Lv; Tue, 27 Jan 2026 10:03:34 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vkez1-002iiO-0P;
	Tue, 27 Jan 2026 10:03:34 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vkeht-0000000FmwP-16wj;
	Tue, 27 Jan 2026 09:45:52 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 27 Jan 2026 09:39:23 +0100
Message-ID: <20260127084546.3751357-14-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260127084546.3751357-1-a.fatoum@pengutronix.de>
References: <20260127084546.3751357-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260127_010336_238863_1F9BB166 
X-CRM114-Status: GOOD (  10.94  )
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
Subject: [PATCH 13/15] efi: payload: bootm: add dry run support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

barebox bootm handlers are supposed to check the dry run flag.

While at it, also fix the code to free initrd in error paths.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 efi/payload/bootm.c | 11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/efi/payload/bootm.c b/efi/payload/bootm.c
index 8e7ba4561f3f..38bc8b23f215 100644
--- a/efi/payload/bootm.c
+++ b/efi/payload/bootm.c
@@ -252,15 +252,16 @@ static int do_bootm_efi_stub(struct image_data *data)
 		goto unload_oftree;
 
 	type = file_detect_type(loaded_image->image_base, PAGE_SIZE);
-	ret = efi_execute_image(handle, loaded_image, type);
-	if (ret)
+
+	if (data->dryrun)
 		goto unload_ramdisk;
 
-	return 0;
-
+	ret = efi_execute_image(handle, loaded_image, type);
 unload_ramdisk:
-	if (initrd)
+	if (initrd) {
 		efi_initrd_unregister();
+		free(initrd);
+	}
 unload_oftree:
 	efi_unload_fdt(fdt);
 unload_os:
-- 
2.47.3



