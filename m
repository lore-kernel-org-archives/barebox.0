Delivery-date: Mon, 10 Oct 2022 08:10:08 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ohlzN-0033Wp-Pq
	for lore@lore.pengutronix.de; Mon, 10 Oct 2022 08:10:08 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ohlzL-0008Pm-PR
	for lore@pengutronix.de; Mon, 10 Oct 2022 08:10:08 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=TazJfzKZFEFn5n3F6J26DI6qb9EBnT9b63qzePAYlDU=; b=iyiTjOR37wT/5cYzZ0loLCMCOv
	MDQxausjRCcA/zL0tiAs2G65VAO5VdQpFtZKDpSOEb27WcmKWhMySBBpe0QZUEyA2qNbu6j88JpiI
	JS9D4kpoJ7HWKK0JvyBBcj+iZDqrp0w73WXpv8s+F81tnb4/mn6uHl5Si0J1X0/608jeL4UrpWXFi
	mMJjs82L8fMF3mYUqZLfZ3acYpGoqMM76FfcjXuR+LkFC6ziS6pUUUe3mu6Q4Bc0CJATOfyqKkhdo
	xhY9KZGhc/nnbK1JiW3OVcFg3Eppr62Ul85pQvbBHRFmo3o8eqq/Ucl8c8sYZQ7+DS0uxCGK0Suhj
	1Mbsb4Gg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ohlyB-00H9dT-3N; Mon, 10 Oct 2022 06:08:55 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ohly3-00H9aJ-AT
	for barebox@lists.infradead.org; Mon, 10 Oct 2022 06:08:49 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1ohly2-0008Ch-3Q; Mon, 10 Oct 2022 08:08:46 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1ohly1-000d9A-DC; Mon, 10 Oct 2022 08:08:45 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1ohly0-008k2a-8Y; Mon, 10 Oct 2022 08:08:44 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 10 Oct 2022 08:08:39 +0200
Message-Id: <20221010060842.2083550-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20221010060842.2083550-1-a.fatoum@pengutronix.de>
References: <20221010060842.2083550-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221009_230847_393253_566ECF58 
X-CRM114-Status: GOOD (  11.33  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/5] efi: capitalize enumeration constants
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Linux coding style is using all caps for constants. Follow this for
enum efi_locate_search_type as well. No functional change.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/efi/efi-device.c | 10 +++++-----
 include/efi.h            |  6 +++---
 2 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/efi/efi-device.c b/drivers/efi/efi-device.c
index af5406afa682..6b903723524e 100644
--- a/drivers/efi/efi-device.c
+++ b/drivers/efi/efi-device.c
@@ -91,7 +91,7 @@ static efi_handle_t *efi_find_parent(efi_handle_t *handle)
 	struct efi_open_protocol_information_entry *entry_buffer;
 	unsigned long entry_count;
 
-	ret = efi_locate_handle(by_protocol, &efi_device_path_protocol_guid,
+	ret = efi_locate_handle(BY_PROTOCOL, &efi_device_path_protocol_guid,
 			NULL, &handle_count, &handles);
 	if (ret)
 		return NULL;
@@ -245,7 +245,7 @@ void efi_register_devices(void)
 	struct efi_device **efidevs;
 	int registered;
 
-	ret = efi_locate_handle(by_protocol, &efi_device_path_protocol_guid,
+	ret = efi_locate_handle(BY_PROTOCOL, &efi_device_path_protocol_guid,
 			NULL, &handle_count, &handles);
 	if (ret)
 		return;
@@ -290,7 +290,7 @@ int efi_connect_all(void)
 	efi_handle_t *handle_buffer;
 	int i;
 
-	efiret = BS->locate_handle_buffer(all_handles, NULL, NULL, &handle_count,
+	efiret = BS->locate_handle_buffer(ALL_HANDLES, NULL, NULL, &handle_count,
 			&handle_buffer);
 	if (EFI_ERROR(efiret))
 		return -efi_errno(efiret);
@@ -637,7 +637,7 @@ static int do_efi_protocol_dump(int argc, char **argv)
 	printf("Searching for:\n");
 	printf("  %pUl: %s\n", &guid, efi_guid_string(&guid));
 
-	ret = efi_locate_handle(by_protocol, &guid, NULL, &handle_count, &handles);
+	ret = efi_locate_handle(BY_PROTOCOL, &guid, NULL, &handle_count, &handles);
 	if (!ret)
 		efi_dump(handles, handle_count);
 
@@ -653,7 +653,7 @@ static int do_efi_handle_dump(int argc, char *argv[])
 	if (argc > 1)
 		return do_efi_protocol_dump(--argc, ++argv);
 
-	ret = efi_locate_handle(all_handles, NULL, NULL, &handle_count, &handles);
+	ret = efi_locate_handle(ALL_HANDLES, NULL, NULL, &handle_count, &handles);
 	if (!ret)
 		efi_dump(handles, handle_count);
 
diff --git a/include/efi.h b/include/efi.h
index 691e3d5493fc..864158259c53 100644
--- a/include/efi.h
+++ b/include/efi.h
@@ -175,9 +175,9 @@ typedef struct {
 } efi_time_cap_t;
 
 enum efi_locate_search_type {
-	all_handles,
-	by_register_notify,
-	by_protocol
+	ALL_HANDLES,
+	BY_REGISTER_NOTIFY,
+	BY_PROTOCOL
 };
 
 struct efi_open_protocol_information_entry {
-- 
2.30.2



