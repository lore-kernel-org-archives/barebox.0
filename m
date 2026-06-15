Delivery-date: Mon, 15 Jun 2026 15:39:01 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wZ7Wn-0069dV-2M
	for lore@lore.pengutronix.de;
	Mon, 15 Jun 2026 15:39:01 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wZ7Wm-0004df-VJ
	for lore@pengutronix.de; Mon, 15 Jun 2026 15:39:01 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=rJHK0kTBWoLUzBO4fVWSQ2pjZ1prdv3sdh4VH9ChpWE=; b=4hKz+H7ExKskoi9CxkdRcYqT33
	ni6btxiqkmLw/1v9QT4/vIsfSicozStdnsEYw3PO25NZv8Y/A3L0uyGA+zDsdXtFWOrYpatqgT0EZ
	tDziX04zXGwDZtaapQgP9+dQMkeyhWhrGKclmx6q0nYScAUqsPlodVP6G+c0d3UazJm4QKmEQWzb/
	ZCHX5VPCxGxU9lGNZcRzdcqb/YcV3Zv5m7GnAYcBVP6hhYGsiLBBsRrnEh9Z8e4ltTtxv19zBw1+a
	Zg8Sg4VEOPIZhtAigTqOkcBxcCcs9zvMXTnFcOZe3JPs2uFgZIfTpczVFY/gey1FDBJB5GeXP4Dpk
	D83z8xDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZ7VY-0000000EJrq-0rEf;
	Mon, 15 Jun 2026 13:37:44 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZ7VW-0000000EJrG-0YWy
	for barebox@lists.infradead.org;
	Mon, 15 Jun 2026 13:37:43 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wZ7VT-0004Gt-Jn; Mon, 15 Jun 2026 15:37:39 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wZ7VT-002sHV-1o;
	Mon, 15 Jun 2026 15:37:39 +0200
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wZ7VT-00000004GSp-1vyx;
	Mon, 15 Jun 2026 15:37:39 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 15 Jun 2026 15:37:37 +0200
Message-ID: <20260615133738.1016589-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260615_063742_179394_6D79D53A 
X-CRM114-Status: GOOD (  13.90  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master] efi: loader: avoid NULL image file paths
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Booting an EFI application directly from a raw block device creates
a device path without a file path node. efi_dp_split_file_path()
propagated this as a NULL file path, which was then exposed through
the Loaded Image Protocol.

The EDK2 shell dereferences LoadedImage->FilePath while looking
for startup.nsh and crashed barebox after the countdown.

Return an allocated empty device path for device-only images instead,
and make LoadImage() handle split failures explicitly.

Assisted-by: Codex:gpt-5.5
Fixes: ba9c4217b8ea ("efi: loader: boot: implement LoadImage BootService")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 efi/loader/boot.c       | 16 ++++++++++------
 efi/loader/devicepath.c | 11 ++++++++++-
 2 files changed, 20 insertions(+), 7 deletions(-)

diff --git a/efi/loader/boot.c b/efi/loader/boot.c
index adcfd96b4648..b92e6bb33093 100644
--- a/efi/loader/boot.c
+++ b/efi/loader/boot.c
@@ -1983,7 +1983,7 @@ efi_status_t EFIAPI efiloader_load_image(bool boot_policy,
 	struct efi_loaded_image_obj **image_obj =
 		(struct efi_loaded_image_obj **)image_handle;
 	efi_status_t ret;
-	void *dest_buffer;
+	void *dest_buffer = NULL;
 
 	EFI_ENTRY("%d, %p, %pD, %p, %zu, %p", boot_policy, parent_image,
 		  file_path, source_buffer, source_size, image_handle);
@@ -1996,6 +1996,7 @@ efi_status_t EFIAPI efiloader_load_image(bool boot_policy,
 		goto error;
 	}
 
+	*image_handle = NULL;
 	if (!source_buffer) {
 		ret = efi_load_image_from_path(boot_policy, file_path,
 					       &dest_buffer, &source_size);
@@ -2005,10 +2006,13 @@ efi_status_t EFIAPI efiloader_load_image(bool boot_policy,
 		dest_buffer = source_buffer;
 	}
 	/* split file_path which contains both the device and file parts */
-	efi_dp_split_file_path(file_path, &dp, &fp);
-	ret = efi_setup_loaded_image(dp, fp, image_obj, &info);
-	if (ret == EFI_SUCCESS)
-		ret = efi_load_pe(*image_obj, dest_buffer, source_size, info);
+	ret = efi_dp_split_file_path(file_path, &dp, &fp);
+	if (ret == EFI_SUCCESS) {
+		ret = efi_setup_loaded_image(dp, fp, image_obj, &info);
+		if (ret == EFI_SUCCESS)
+			ret = efi_load_pe(*image_obj, dest_buffer, source_size, info);
+	}
+
 	if (!source_buffer)
 		/* Release buffer to which file was loaded */
 		efi_free_pages((uintptr_t)dest_buffer,
@@ -2016,7 +2020,7 @@ efi_status_t EFIAPI efiloader_load_image(bool boot_policy,
 	if (ret == EFI_SUCCESS || ret == EFI_SECURITY_VIOLATION) {
 		info->system_table = &systab;
 		info->parent_handle = parent_image;
-	} else {
+	} else if (*image_handle) {
 		/* The image is invalid. Release all associated resources. */
 		efi_delete_handle(*image_handle);
 		*image_handle = NULL;
diff --git a/efi/loader/devicepath.c b/efi/loader/devicepath.c
index a12ab24caaa1..b181bf6993be 100644
--- a/efi/loader/devicepath.c
+++ b/efi/loader/devicepath.c
@@ -444,7 +444,8 @@ struct efi_device_path *efi_dp_append_node(const struct efi_device_path *dp,
  *
  * @full_path:      device path including device and file path
  * @device_path:    path of the device
- * @file_path:      relative path of the file or NULL if there is none
+ * @file_path:      relative path of the file or an empty device path if there
+ *                  is none
  * Return:      status code
  */
 efi_status_t efi_dp_split_file_path(struct efi_device_path *full_path,
@@ -474,6 +475,14 @@ efi_status_t efi_dp_split_file_path(struct efi_device_path *full_path,
 	p->length = sizeof(*p);
 
 out:
+	if (!fp) {
+		fp = efi_dp_append_node(NULL, NULL);
+		if (!fp) {
+			free(dp);
+			return EFI_OUT_OF_RESOURCES;
+		}
+	}
+
 	*device_path = dp;
 	*file_path = fp;
 	return EFI_SUCCESS;
-- 
2.47.3



