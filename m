Delivery-date: Thu, 18 Dec 2025 12:38:08 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWCKe-00CoK2-14
	for lore@lore.pengutronix.de;
	Thu, 18 Dec 2025 12:38:08 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWCKG-0000Vp-U1
	for lore@pengutronix.de; Thu, 18 Dec 2025 12:38:08 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=K8WvV2Pw1pOR4Dop5olaSGTpPGQH2CMRG3r8hykvXDQ=; b=BPC7UMOUe2/+XbH18yqZkWPUw/
	8lNVhbrioSKSI/3/s9OhO8QbT7FU06lJzlfT0sQT5bVFu05W8Bp/CxY7TigZLiMJouY9boV2r1i3p
	sHQjxSTNfiuza1rc8kRyTdNMm/qCVJbkEu1aDsG7PwMSVJeGNrL8sVbr6kSl6QFH85VGdt9c2YbQJ
	WWCsgH/12749gl/9Al7+TdOhJT0it3vHbZnAZBYZ1hkeujhdx2Q6ul4V9rM3f4JdlzS3xbTKAGJyi
	Isxayep7Lpce9s6GHcgobb+0qfawFTBYoQTNxhEzTXYA0VyDapiNsIAZcFxjpKHi7T2/zFSYg5TvI
	cvGbMGXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWCJR-00000008KHn-3mCs;
	Thu, 18 Dec 2025 11:36:53 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWCJN-00000008KBC-2KPK
	for barebox@lists.infradead.org;
	Thu, 18 Dec 2025 11:36:52 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWCJM-00088g-2m; Thu, 18 Dec 2025 12:36:48 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWCJL-006Gug-2p;
	Thu, 18 Dec 2025 12:36:47 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWBw4-0000000AVre-11R1;
	Thu, 18 Dec 2025 12:12:44 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 18 Dec 2025 11:37:45 +0100
Message-ID: <20251218111242.1527495-26-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251218111242.1527495-1-a.fatoum@pengutronix.de>
References: <20251218111242.1527495-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251218_033649_621201_7BDDA557 
X-CRM114-Status: GOOD (  13.52  )
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
Subject: [PATCH v1 25/54] efi: loader: protocol: implement efi_file_from_path
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

For use by the EFI LoadImage boot service, implement support of opening
a file within an EFI simple file system by its barebox-generated EFI
device path.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 efi/loader/protocols/file.c | 67 +++++++++++++++++++++++++++++++++++++
 include/efi/loader/file.h   |  3 ++
 2 files changed, 70 insertions(+)

diff --git a/efi/loader/protocols/file.c b/efi/loader/protocols/file.c
index 3858cd3e1682..03d2dc3a0d38 100644
--- a/efi/loader/protocols/file.c
+++ b/efi/loader/protocols/file.c
@@ -922,6 +922,73 @@ static const struct efi_file_handle efi_file_handle_protocol = {
 	.flush_ex = efi_file_flush_ex,
 };
 
+/**
+ * efi_file_from_path() - open file via device path
+ *
+ * @fp:		device path
+ * Return:	EFI_FILE_PROTOCOL for the file or NULL
+ */
+struct efi_file_handle *efi_file_from_path(struct efi_device_path *fp)
+{
+	struct efi_simple_file_system_protocol *v;
+	struct efi_file_handle *f;
+	efi_status_t efiret;
+
+	v = efi_fs_from_path(fp);
+	if (!v)
+		return NULL;
+
+	efiret = v->open_volume(v, &f);
+	if (efiret != EFI_SUCCESS)
+		return NULL;
+
+	/* Skip over device-path nodes before the file path. */
+	while (fp && !EFI_DP_TYPE(fp, MEDIA_DEVICE, FILE_PATH))
+		fp = efi_dp_next(fp);
+
+	/*
+	 * Step through the nodes of the directory path until the actual file
+	 * node is reached which is the final node in the device path.
+	 */
+	while (fp) {
+		struct efi_device_path_file_path *fdp =
+			container_of(fp, struct efi_device_path_file_path, header);
+		struct efi_file_handle *f2;
+		efi_char16_t *filename;
+		size_t filename_sz;
+
+		if (!EFI_DP_TYPE(fp, MEDIA_DEVICE, FILE_PATH)) {
+			pr_warn("bad file path!\n");
+			f->close(f);
+			return NULL;
+		}
+
+		/*
+		 * UEFI specification requires pointers that are passed to
+		 * protocol member functions to be aligned.  So memcpy it
+		 * unconditionally
+		 */
+		if (fdp->header.length <= offsetof(struct efi_device_path_file_path, path_name))
+			return NULL;
+		filename_sz = fdp->header.length -
+			offsetof(struct efi_device_path_file_path, path_name);
+		filename = memdup(fdp->path_name, filename_sz);
+		if (!filename)
+			return NULL;
+		efiret = f->open(f, &f2, filename, EFI_FILE_MODE_READ, 0);
+		free(filename);
+		if (efiret != EFI_SUCCESS)
+			return NULL;
+
+		fp = efi_dp_next(fp);
+
+		f->close(f);
+		f = f2;
+	}
+
+	return f;
+}
+
 static efi_status_t EFIAPI
 efi_open_volume(struct efi_simple_file_system_protocol *this,
 		struct efi_file_handle **root)
diff --git a/include/efi/loader/file.h b/include/efi/loader/file.h
index ce52cc5df8aa..a4f071f97817 100644
--- a/include/efi/loader/file.h
+++ b/include/efi/loader/file.h
@@ -12,6 +12,9 @@ struct efi_file_handle;
 struct efi_simple_file_system_protocol *
 efi_fs_from_path(struct efi_device_path *fp);
 
+/* open file from device-path: */
+struct efi_file_handle *efi_file_from_path(struct efi_device_path *fp);
+
 efi_status_t efi_file_size(struct efi_file_handle *fh, efi_uintn_t *size);
 
 /**
-- 
2.47.3



