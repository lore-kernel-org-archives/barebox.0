Delivery-date: Wed, 03 Jan 2024 19:32:53 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rL62v-002Naj-2r
	for lore@lore.pengutronix.de;
	Wed, 03 Jan 2024 19:32:53 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rL62q-0003ed-9K
	for lore@pengutronix.de; Wed, 03 Jan 2024 19:32:53 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ujxaFmpQHKCUq8VTL8MajD9uXDoL6j4y/0FxPXSmkcQ=; b=28/p81UgcNqhjg0edObiR0uG7K
	eyfgplu1pGEIpXI/wm46eH7IQRKjHIYgiHmNEZzN+cyPenP4GREHHDyhEBUtLZN1AOaRg1v82PMTo
	sH9mjqDOQ90YcNy0znpeuJHkJA0F1UtPB+v2hbMq/9wAxAkX8S3LTUJFiZMCIcwetWrmRg3hA9lWH
	GijdoTISBvQhbPP2nBugM3kBIJROmEUEMePeNMy9WHte/S/ksoHakKtKoSTMAYc/20hlvluVoJelc
	No1xVXN+Oa6dyOmABGSdz9LGT4/1ESgu6/pzS5OM3khS+QfBunoMIos0diw++UdcGNzwRsMDsokTX
	jP4+2QcA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rL61Z-00Bhew-1D;
	Wed, 03 Jan 2024 18:31:29 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rL619-00BhD4-2e
	for barebox@bombadil.infradead.org;
	Wed, 03 Jan 2024 18:31:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=ujxaFmpQHKCUq8VTL8MajD9uXDoL6j4y/0FxPXSmkcQ=; b=YtEalunRX+9MnFVkmquW1UCGsG
	EnK6kXLh2JxPnqgfb8AclR1lrgLg2UFzPnwQ9YIOHu6idnAi0JkBcxJ55855EszngSGhIKqFsIGgU
	Rg+nsozJ/zI5PJMIykN2fTQ8+OaGLyea6wCeawARqpvphzi8zvKfp/Ckd8FOzqm4HoSuwJLhv+W61
	nR2Mm4qZmfC/9YuxkvkYUSGGLs6DbfZd3y5Oqdh/lMuA/mEdLEwHn0NWOIPzfeL4J59emB4zx+/WY
	xKRBhmbnVC6vl60kB3ldnn4kiKZ0g7L3mo6Xs/1+6FXQKWy+tqhnqe2IDalQnWcS/qTGsgX5KpOnQ
	63Nb0NQA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rL610-005eC4-2u
	for barebox@lists.infradead.org;
	Wed, 03 Jan 2024 18:31:02 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL60z-0001SL-TN; Wed, 03 Jan 2024 19:30:53 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL60z-000Atf-GR; Wed, 03 Jan 2024 19:30:53 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL5k4-001j4X-04;
	Wed, 03 Jan 2024 19:13:24 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  3 Jan 2024 19:12:28 +0100
Message-Id: <20240103181312.409668-69-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240103181312.409668-1-a.fatoum@pengutronix.de>
References: <20240103181312.409668-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240103_183055_305069_B532C584 
X-CRM114-Status: GOOD (  12.04  )
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
Subject: [PATCH 068/112] efi: define efi_handle_t as opaque pointer
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Typedef'ing efi_handle_t as void * means that we don't catch instance
where we pass a double indirect pointer when a normal pointer is
expected.

With loader support, we will start to dereference it anyway, so have it
point at an opaque type instead.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/efi/efi-device.c | 12 ++++++------
 include/efi/types.h      |  4 +++-
 2 files changed, 9 insertions(+), 7 deletions(-)

diff --git a/drivers/efi/efi-device.c b/drivers/efi/efi-device.c
index a533bc43eb37..3a16deab5f6b 100644
--- a/drivers/efi/efi-device.c
+++ b/drivers/efi/efi-device.c
@@ -53,7 +53,7 @@ static int efi_locate_handle(enum efi_locate_search_type search_type,
 	return 0;
 }
 
-static struct efi_device *efi_find_device(efi_handle_t *handle)
+static struct efi_device *efi_find_device(efi_handle_t handle)
 {
 	struct device *dev;
 	struct efi_device *efidev;
@@ -80,10 +80,10 @@ static void efi_devinfo(struct device *dev)
 					efi_guid_string(&efidev->guids[i]));
 }
 
-static efi_handle_t *efi_find_parent(efi_handle_t *handle)
+static efi_handle_t efi_find_parent(efi_handle_t handle)
 {
 	unsigned long handle_count = 0;
-        efi_handle_t *handles = NULL, *parent;
+	efi_handle_t *handles = NULL, parent;
 	unsigned long num_guids;
 	efi_guid_t **guids;
 	int ret, i, j, k;
@@ -134,7 +134,7 @@ static efi_handle_t *efi_find_parent(efi_handle_t *handle)
 	return parent;
 }
 
-static struct efi_device *efi_add_device(efi_handle_t *handle, efi_guid_t **guids,
+static struct efi_device *efi_add_device(efi_handle_t handle, efi_guid_t **guids,
 		int num_guids)
 {
 	struct efi_device *efidev;
@@ -238,7 +238,7 @@ static int efi_register_device(struct efi_device *efidev)
 void efi_register_devices(void)
 {
 	unsigned long handle_count = 0;
-        efi_handle_t *handles = NULL;
+	efi_handle_t *handles = NULL;
 	unsigned long num_guids;
 	efi_guid_t **guids;
 	int ret, i;
@@ -402,7 +402,7 @@ static void efi_set_bootsource(void)
 	enum bootsource src = BOOTSOURCE_UNKNOWN;
 	int instance = BOOTSOURCE_INSTANCE_UNKNOWN;
 
-	efi_handle_t *efi_parent;
+	efi_handle_t efi_parent;
 
 	if (!efi_loaded_image->parent_handle)
 		goto out;
diff --git a/include/efi/types.h b/include/efi/types.h
index 6e134387692f..3309820416be 100644
--- a/include/efi/types.h
+++ b/include/efi/types.h
@@ -9,7 +9,9 @@
 typedef unsigned long efi_status_t;
 typedef u16 efi_char16_t;		/* UNICODE character */
 typedef u64 efi_physical_addr_t;
-typedef void *efi_handle_t;
+
+struct efi_object;
+typedef struct efi_object *efi_handle_t;
 
 /*
  * The UEFI spec and EDK2 reference implementation both define EFI_GUID as
-- 
2.39.2



