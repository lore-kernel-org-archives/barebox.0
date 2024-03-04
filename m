Delivery-date: Mon, 04 Mar 2024 20:09:20 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rhDge-008dcU-1i
	for lore@lore.pengutronix.de;
	Mon, 04 Mar 2024 20:09:20 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rhDgd-0004Fj-0b
	for lore@pengutronix.de; Mon, 04 Mar 2024 20:09:20 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=PXZpxnBR3jpncBTetiNrjtOBL+sDxqdNQkfkuOJ1WBQ=; b=a24l++YFIXs2vUC1aZKMNT3Tw1
	RWb4oFELZjvqmuW/igNZcLKbSaOETgRIJM4kJTxV5s6B4q1wOY0/LzUX63SxB1GdqaUtVkM62b5ms
	P7BjPLyA93wYUP4E6bVULMscN5fgz4IytMT/v7gxwyxWh/vNeoo2c6CQ6ij9muAM0AlW2K3GcRUQb
	tzXDWys+g6J/TJErrJkCp0HTaCE5iyedrI0YvvkMn5mJGomA8bc4A1n01OYOQzgIfJpFYD6OB6CEP
	zpX3Pb1f/DX3L7kvSzXt3+NV+R/ruAmFy2SOHTGnvXnpToJoapByfG0ji/uYeo92FsE2ijzPKsNvj
	RQz7CDCw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDg4-0000000AMId-1hEb;
	Mon, 04 Mar 2024 19:08:44 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDaY-0000000AIXw-22ra
	for barebox@bombadil.infradead.org;
	Mon, 04 Mar 2024 19:03:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=PXZpxnBR3jpncBTetiNrjtOBL+sDxqdNQkfkuOJ1WBQ=; b=Ux3lFfGvH16/7GvOLsyVImOdBo
	FuEzMmWradRklne33g2lZRBQI8ECwXPCsFOk8b1Fj9iet9iMe4pH0dwwF1kmVjnjQWEX9psiwTsFP
	a2Whl8Vr+xyi367Iqbx8vOD2XAhzgYWfdRKYxBAdgNSpymcuPXBuMVifdAJC2ZZVrkQqPCUAnlfwO
	OhxBf0P1UpSPE34eWyLdqClNl5JIyMtvdYvfCEILeMoKAEElpLwWKB1KG5y5QEH/+eAVA7b5lfn+u
	JdW4z1KxxtG2gWDydHZWBCZ2S3oUoQYUpPAphCbWiVGvM3bvujr9IfvZt+7Ih+nkiqUrPqxK7LC5U
	nGam5hpA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by casper.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDaU-00000002BSm-3bLy
	for barebox@lists.infradead.org;
	Mon, 04 Mar 2024 19:03:01 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDaF-00065b-LZ; Mon, 04 Mar 2024 20:02:43 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDaF-004PIp-4j; Mon, 04 Mar 2024 20:02:43 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDYN-00Ed9V-3C;
	Mon, 04 Mar 2024 20:00:48 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  4 Mar 2024 20:00:35 +0100
Message-Id: <20240304190038.3486881-111-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240304190038.3486881-1-a.fatoum@pengutronix.de>
References: <20240304190038.3486881-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240304_190258_964389_7A8ECBF8 
X-CRM114-Status: GOOD (  13.51  )
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
Subject: [PATCH v2 110/113] commands: efi_handle_dump: prepare for supporting EFI loader
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



