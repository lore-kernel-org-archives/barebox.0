Delivery-date: Thu, 11 Dec 2025 21:37:21 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vTnPd-00AQIz-0Q
	for lore@lore.pengutronix.de;
	Thu, 11 Dec 2025 21:37:21 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vTnPa-0008Av-4G
	for lore@pengutronix.de; Thu, 11 Dec 2025 21:37:20 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=tjsp4iD2hCGswUVuvrvxlXPk05HoYuAkAuRQ4YKKaCA=; b=HwQ68VW/rWC1r0lZ9AP4q/ghvj
	8dsPu/8WZmVz9ajr4IDoec1sf6m71y1rha2ckQ1f8qkQEmurCaJl2iT4HDs9SdaCn7CQwZGuXcBKy
	zcqeUlpddvfK70h8z3TRhnuw4sf4bFgZ7lyXvyQ5P9WsKeF9yIqGUU/H9DSuvDBmuFjRG4wc8oZ32
	zvy/qXycTdvPrB1EX+I8je+xv+w/NMhVgdxXTJ8l6WsajsFIl4R+MlOb3EaRmZBiStkn1uRFLW971
	BL1FdkLMhVR0idqJMmcjEyNNRMTmDx0LhfC7JzwIgVPkkW+uCkt1y6id1qkYpsI1ebWBlI0vRrezb
	J432x6zw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTnPA-0000000HFOL-0TEh;
	Thu, 11 Dec 2025 20:36:52 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTnP9-0000000HFO4-039o
	for barebox@bombadil.infradead.org;
	Thu, 11 Dec 2025 20:36:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=tjsp4iD2hCGswUVuvrvxlXPk05HoYuAkAuRQ4YKKaCA=; b=mxjBorqtQFI+Ub5A4pUwxQ5H7j
	b+RqXspRLLyg4mAkABGtPServnu6HVARzEnxesfdMKI28Bn0pHM80mSP8WRFXix3vaF0/2Gh3oAbM
	bKrfDn1HJVjwolreTJgRzU5p2INlHfqiyhHDy48b/tYM5ftMrT2Q8GmrxZlCgInYj49q2DjYu7y+b
	VjqV2nMNZn7fI0AHwEpyg7ELtYVu1t5cxyXTUsDvI+MDhjn1LcXeTDDywi8RO7C8b1u5vydKpjNIz
	HNgk8qlriPTvmmA0E8EWYrttnZjM4ULi6vPbnufRQzx5aRuo3WH3UVIklhycIDddplMCnMl0L5UhH
	vSrKccKQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTmXa-0000000FZXR-42JU
	for barebox@lists.infradead.org;
	Thu, 11 Dec 2025 19:41:32 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vTnP5-0007pk-HS; Thu, 11 Dec 2025 21:36:47 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vTnP5-005BWW-15;
	Thu, 11 Dec 2025 21:36:47 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vTnJR-00000008e20-3B8x;
	Thu, 11 Dec 2025 21:30:57 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 11 Dec 2025 21:30:01 +0100
Message-ID: <20251211203056.2014710-11-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251211203056.2014710-1-a.fatoum@pengutronix.de>
References: <20251211203056.2014710-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251211_194131_225635_5A6CA574 
X-CRM114-Status: GOOD (  10.19  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 10/16] efi: devicepath: make fully usable for loader
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

While in a common location, the file still makes use of BS, which is
only available for the EFI payload case. Switch to
efi_get_boot_services() for reusability.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 efi/devicepath.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/efi/devicepath.c b/efi/devicepath.c
index 1d49f450ec8e..e4170d701e47 100644
--- a/efi/devicepath.c
+++ b/efi/devicepath.c
@@ -67,6 +67,7 @@ const struct efi_device_path end_instance_device_path = {
 const struct efi_device_path *
 device_path_from_handle(efi_handle_t Handle)
 {
+	struct efi_boot_services *bs = efi_get_boot_services();
 	const efi_guid_t *const protocols[] = {
 		&efi_loaded_image_device_path_guid,
 		&efi_device_path_protocol_guid,
@@ -78,7 +79,7 @@ device_path_from_handle(efi_handle_t Handle)
 	for (proto = protocols; *proto; proto++) {
 		const struct efi_device_path *device_path;
 
-		Status = BS->handle_protocol(Handle, *proto, (void *) &device_path);
+		Status = bs->handle_protocol(Handle, *proto, (void *) &device_path);
 		if (!EFI_ERROR(Status) && device_path)
 			return device_path;
 	}
-- 
2.47.3



