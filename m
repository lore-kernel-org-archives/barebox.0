Delivery-date: Mon, 04 Mar 2024 20:10:16 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rhDhY-008djX-15
	for lore@lore.pengutronix.de;
	Mon, 04 Mar 2024 20:10:16 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rhDhX-0005FF-HU
	for lore@pengutronix.de; Mon, 04 Mar 2024 20:10:16 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ZnYaKTpV25Yac2EVAgTFNnTXlcGjiUth0Tqk0BOAkSM=; b=1x8A5YhIfcyS5PVIt9bGDBRimN
	b4E8WHltCt85+qfGXW60yVfRhCw9PrmPagiaLGvTPGzdMAguiZJohCq05zMSakmGXA5eV9zWDTRMi
	kWRWShGLHrEL0pQnSCAES3H8CA8WRFrpMbqwLmjF/SuUS313PYlHmsw6QOTF6FwBvv4rfDFxUgKot
	se29V68j8TZDDma7cKz+W5/TyIX+VE3576tCxeymc/NEXNOj9NZitOYWGg6TXvdFpfMTZpujC+PNZ
	iOCF/wCTicMdDXR0jidL4fwnEdlxEPIfUZ8sqSrYlkF0v8n7CpJ0e1ezgW8f7oAwNyN44/e/i7VfD
	pEt28aaA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDgz-0000000AN14-1JEv;
	Mon, 04 Mar 2024 19:09:41 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDac-0000000AIcJ-2X5a
	for barebox@bombadil.infradead.org;
	Mon, 04 Mar 2024 19:03:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=ZnYaKTpV25Yac2EVAgTFNnTXlcGjiUth0Tqk0BOAkSM=; b=azDWDTGWe5uzXkBSRWH4AHXg00
	hQB32rSot7bqJA4wX0LsRdbLCjj00CrENUDEEebkDvWhllm9AmA28zPWlS/GX+Etvbuq3u1MeIGJG
	UusQTgCaOhLyGxsTfXZ9At36LZakSwItDqzvkitwQKynSQ7UswqAqb3QD/+gBXWMmK7UjZaaz8Du2
	g0ybfFhWdNWZgyICJQqVVFn+hToQ2M6f9nwqq+uuWIeh4FyEluwymJEd5qB9iMOeSgJjWuDAggJPA
	jR9vJ+a7UM/hl/eMltanriCBOjvlsV1rIXHCkz5CfD8/xXoxGkmnJ53+fbPlN02Z0Af5k74hjJm9T
	w3YAe77g==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDaV-000000051vg-1W3c
	for barebox@lists.infradead.org;
	Mon, 04 Mar 2024 19:03:05 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDaG-00069D-Kk; Mon, 04 Mar 2024 20:02:44 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDaG-004PJt-5P; Mon, 04 Mar 2024 20:02:44 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDYO-00Ed9V-07;
	Mon, 04 Mar 2024 20:00:48 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  4 Mar 2024 20:00:36 +0100
Message-Id: <20240304190038.3486881-112-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240304190038.3486881-1-a.fatoum@pengutronix.de>
References: <20240304190038.3486881-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240304_190259_958878_37C1491B 
X-CRM114-Status: GOOD (  10.28  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 111/113] commands: efi_handle_dump: print loaded image devpath
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Device Path and Loaded Image Device Path are different things.
Print both for maximum utility.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 commands/efi_handle_dump.c | 17 ++++++++++++-----
 1 file changed, 12 insertions(+), 5 deletions(-)

diff --git a/commands/efi_handle_dump.c b/commands/efi_handle_dump.c
index 1f7b1caa13f9..74d53c9a17c5 100644
--- a/commands/efi_handle_dump.c
+++ b/commands/efi_handle_dump.c
@@ -11,20 +11,23 @@
 #include <efi/efi-mode.h>
 #include <efi/efi-device.h>
 
-static void efi_devpath(struct efi_boot_services *bs, efi_handle_t handle)
+static void efi_devpath(struct efi_boot_services *bs,
+			efi_handle_t handle,
+			const efi_guid_t *guid,
+			const char *desc)
 {
 	efi_status_t efiret;
 	void *devpath;
 	char *dev_path_str;
 
-	efiret = bs->open_protocol(handle, &efi_device_path_protocol_guid,
-				   &devpath, NULL, NULL, EFI_OPEN_PROTOCOL_GET_PROTOCOL);
+	efiret = bs->open_protocol(handle, guid, &devpath, NULL, NULL,
+				   EFI_OPEN_PROTOCOL_GET_PROTOCOL);
 	if (EFI_ERROR(efiret))
 		return;
 
 	dev_path_str = device_path_to_str(devpath);
 	if (dev_path_str) {
-		printf("  Devpath: \n  %s\n", dev_path_str);
+		printf("  %s: \n  %s\n", desc, dev_path_str);
 		free(dev_path_str);
 	}
 }
@@ -46,7 +49,11 @@ static void efi_dump(struct efi_boot_services *bs, efi_handle_t *handles, unsign
 		for (j = 0; j < num_guids; j++)
 			printf("  %d: %pUl: %s\n", j, guids[j],
 					efi_guid_string(guids[j]));
-		efi_devpath(bs, handles[i]);
+
+		efi_devpath(bs, handles[i], &efi_device_path_protocol_guid,
+			    "Devpath");
+		efi_devpath(bs, handles[i], &efi_loaded_image_device_path_guid,
+			    "Image Devpath");
 	}
 	printf("\n");
 }
-- 
2.39.2



