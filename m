Delivery-date: Wed, 03 Jan 2024 19:36:15 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rL66B-002O9q-2R
	for lore@lore.pengutronix.de;
	Wed, 03 Jan 2024 19:36:15 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rL662-0007Qy-Cw
	for lore@pengutronix.de; Wed, 03 Jan 2024 19:36:15 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=PXZpxnBR3jpncBTetiNrjtOBL+sDxqdNQkfkuOJ1WBQ=; b=bSaroswdac/OanzOxsR20Pi3dp
	WosisxEfd1ZM0k7db6pOVWtZ7kGMVO0RvQydxXVAG6Q0W3mJ73aG5Z8YFUYk2F8vFcn/KqdYPUSvR
	hvf7w5WoJvJcABWT8SVKIl6wfHmnb1B+EL3MvoVc6KPa/oBzjHBNcd9A0jyjYoFLOU+cSkVW2okXZ
	rwC+qgwlc8jUMIvoqv+ENB3jFvZrMAAGP6YJaV8tzGUkO9XOzuhEwyc3cYLK+3/z5gcI3ybbYIh2X
	T/IR0ftcCJIdUz2iK1x2L3+CChUNjw7EG3EbLawR8/MyZnWhEolQJZOt2utQ4iJIrOEbXkmWbUpUQ
	tClyyvSA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rL64M-00Bkz0-2W;
	Wed, 03 Jan 2024 18:34:22 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rL61L-00BhP2-1Z
	for barebox@bombadil.infradead.org;
	Wed, 03 Jan 2024 18:31:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=PXZpxnBR3jpncBTetiNrjtOBL+sDxqdNQkfkuOJ1WBQ=; b=HXGt/aPEqCLuekUI9TOKoF5AYv
	mwu//LGye/ccHZ2noOmKiKNZfEUpO5fV2s45cx67w9O7MbhTUzHeoGP3/kv6vaJqtJboqq+Qrvl2X
	jIUtIjsHkUomG2UQlyL8eOfiazElGv/RhpbvlKkIdTvYi7I+R5n7zt3X+aNiI2hXWwAZYmIiBdY8p
	ywLPuStHldMsRsAUAamu0TQ9lVBZrene4cmbaovBpyeI/Ms6KA6CRs45AL0JtOoX02NdmymrKzP7j
	UAUTP8UeljM0TWR4d9DFZiaKS4ehl0QmvSyRo5iPr78ULgOcfwdF6SNVmcDQEjTsFY4jFlqhIhP4f
	4RXM0iVg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by casper.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1rL61D-00DIm2-A0
	for barebox@lists.infradead.org; Wed, 03 Jan 2024 18:31:14 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL611-0001WE-4g; Wed, 03 Jan 2024 19:30:55 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL610-000Aux-Nx; Wed, 03 Jan 2024 19:30:54 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL5k5-001j4X-2n;
	Wed, 03 Jan 2024 19:13:25 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  3 Jan 2024 19:13:09 +0100
Message-Id: <20240103181312.409668-110-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240103181312.409668-1-a.fatoum@pengutronix.de>
References: <20240103181312.409668-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240103_183108_751863_A845465D 
X-CRM114-Status: GOOD (  13.10  )
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
X-Spam-Status: No, score=-6.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 109/112] commands: efi_handle_dump: prepare for supporting EFI loader
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

For debugging, it can be useful to dump handles from within the loader
without having to boot barebox as EFI payload first.

Prepare for this by removing implicit dependency on being an EFI
payload.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 commands/efi_handle_dump.c | 33 ++++++++++++++++++++-------------
 1 file changed, 20 insertions(+), 13 deletions(-)

diff --git a/commands/efi_handle_dump.c b/commands/efi_handle_dump.c
index 43cdb8ac503e..1f7b1caa13f9 100644
--- a/commands/efi_handle_dump.c
+++ b/commands/efi_handle_dump.c
@@ -8,16 +8,16 @@
 #include <common.h>
 #include <command.h>
 #include <efi.h>
-#include <efi/efi-device.h>
 #include <efi/efi-mode.h>
+#include <efi/efi-device.h>
 
-static void efi_devpath(efi_handle_t handle)
+static void efi_devpath(struct efi_boot_services *bs, efi_handle_t handle)
 {
 	efi_status_t efiret;
 	void *devpath;
 	char *dev_path_str;
 
-	efiret = BS->open_protocol(handle, &efi_device_path_protocol_guid,
+	efiret = bs->open_protocol(handle, &efi_device_path_protocol_guid,
 				   &devpath, NULL, NULL, EFI_OPEN_PROTOCOL_GET_PROTOCOL);
 	if (EFI_ERROR(efiret))
 		return;
@@ -29,7 +29,7 @@ static void efi_devpath(efi_handle_t handle)
 	}
 }
 
-static void efi_dump(efi_handle_t *handles, unsigned long handle_count)
+static void efi_dump(struct efi_boot_services *bs, efi_handle_t *handles, unsigned long handle_count)
 {
 	int i, j;
 	unsigned long num_guids;
@@ -41,12 +41,12 @@ static void efi_dump(efi_handle_t *handles, unsigned long handle_count)
 	for (i = 0; i < handle_count; i++) {
 		printf("handle-%p\n", handles[i]);
 
-		BS->protocols_per_handle(handles[i], &guids, &num_guids);
+		bs->protocols_per_handle(handles[i], &guids, &num_guids);
 		printf("  Protocols:\n");
 		for (j = 0; j < num_guids; j++)
 			printf("  %d: %pUl: %s\n", j, guids[j],
 					efi_guid_string(guids[j]));
-		efi_devpath(handles[i]);
+		efi_devpath(bs, handles[i]);
 	}
 	printf("\n");
 }
@@ -70,7 +70,7 @@ static unsigned char to_digit(unsigned char c)
 			dest |= to_digit(*src) << __i;			\
 	} while (0)
 
-static int do_efi_protocol_dump(int argc, char **argv)
+static int do_efi_protocol_dump(struct efi_boot_services *bs, int argc, char **argv)
 {
 	unsigned long handle_count = 0;
 	efi_handle_t *handles = NULL;
@@ -145,9 +145,9 @@ static int do_efi_protocol_dump(int argc, char **argv)
 	printf("Searching for:\n");
 	printf("  %pUl: %s\n", &guid, efi_guid_string(&guid));
 
-	ret = __efi_locate_handle(BS, BY_PROTOCOL, &guid, NULL, &handle_count, &handles);
+	ret = __efi_locate_handle(bs, BY_PROTOCOL, &guid, NULL, &handle_count, &handles);
 	if (!ret)
-		efi_dump(handles, handle_count);
+		efi_dump(bs, handles, handle_count);
 
 	return 0;
 }
@@ -156,14 +156,21 @@ static int do_efi_handle_dump(int argc, char *argv[])
 {
 	unsigned long handle_count = 0;
 	efi_handle_t *handles = NULL;
+	struct efi_boot_services *bs;
 	int ret;
 
-	if (argc > 1)
-		return do_efi_protocol_dump(--argc, ++argv);
+	bs = efi_get_boot_services();
+	if (!bs) {
+		printf("EFI not yet initialized\n");
+		return COMMAND_ERROR;
+	}
 
-	ret = __efi_locate_handle(BS, ALL_HANDLES, NULL, NULL, &handle_count, &handles);
+	if (argc > 1)
+		return do_efi_protocol_dump(bs, --argc, ++argv);
+
+	ret = __efi_locate_handle(bs, ALL_HANDLES, NULL, NULL, &handle_count, &handles);
 	if (!ret)
-		efi_dump(handles, handle_count);
+		efi_dump(bs, handles, handle_count);
 
 	return 0;
 }
-- 
2.39.2



