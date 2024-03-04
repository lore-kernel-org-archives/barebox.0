Delivery-date: Mon, 04 Mar 2024 20:08:45 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rhDg5-008dY4-2S
	for lore@lore.pengutronix.de;
	Mon, 04 Mar 2024 20:08:45 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rhDg3-0003aR-UC
	for lore@pengutronix.de; Mon, 04 Mar 2024 20:08:45 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=VJEuyLtsigXN18J9+hkS4HdapzI50am157IU3pt3xYs=; b=ExvH34xefZ9RCJW2hsPwfHmyWz
	nd8IqkHaItEEPTxXkv3rXzc5NkrhfBVtvHP9DHQVwKNicQRwAidMgjVkypkfg9iZ6cOPPaKuFHmJL
	9eMzlL6WoAgh/3Lqfb6ElRdaDxbRiNxo3qmBL6aQXIsXTCaYKffZb2hkhECN22AqltPcsy08Uu2Zh
	hNRYPNJmI3cvogT8fw12Q7VVSbDiEz2Lidrxi9ygVSh+Bq7I8kbi+ymhzQAdl0Lyxv89vlQyw6dwU
	TdcgfMIKJGtLuzKO0Htm9GsoCb7T2l+R9CMVX0hLTjrivEdoqgZc/WgcTlqSY8zHf3wbCv7ZcuytK
	PoMYx+bQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDfS-0000000ALtL-2xj5;
	Mon, 04 Mar 2024 19:08:06 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDaX-0000000AIXS-2bEk
	for barebox@bombadil.infradead.org;
	Mon, 04 Mar 2024 19:03:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=VJEuyLtsigXN18J9+hkS4HdapzI50am157IU3pt3xYs=; b=AO5JqNI8b5kfW5P2P7rSMJSH84
	t6MYej0vu+7dEN6b+C4lI3Xc6O97cmBFmkAdrN6FHFP6uuPFX1nPsBjciI98uL77UWkEtKPjEi7kL
	tBzcTzHvKDfGYeUsOJM0z5SkEmHfDS1oHYMHdOqYHEN3aGAVWg8QglvJEsidpQVH3kYN9C3jzyNic
	3sVLF0FeTsAig/7BY0dwvPwsNhapkGVfZ2Jikn1OJmkE79xkUpUDdAstsDoFzpgZg6Qp73VxzTi4K
	/b0kG2SXx9jNodghHNgGMo73EglWYzWvuiF5RtxPBeOkIpng/xlJWZpPtEacdGwx853O90R9lKB9S
	lLq91ETg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDaQ-000000051vZ-2CBs
	for barebox@lists.infradead.org;
	Mon, 04 Mar 2024 19:03:00 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDaH-0006Dc-Ry; Mon, 04 Mar 2024 20:02:45 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDaH-004PL5-BP; Mon, 04 Mar 2024 20:02:45 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDYM-00Ed9V-1P;
	Mon, 04 Mar 2024 20:00:46 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  4 Mar 2024 20:00:00 +0100
Message-Id: <20240304190038.3486881-76-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240304190038.3486881-1-a.fatoum@pengutronix.de>
References: <20240304190038.3486881-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240304_190254_643606_96ECBE9F 
X-CRM114-Status: UNSURE (   7.84  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 075/113] efi: add efi_driver_binding_protocol
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We didn't need this for the EFI payload use case, but will need this for
the EFI loader use case.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/efi.h | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/include/efi.h b/include/efi.h
index 08cb07c8b946..a6dbc14ff3d9 100644
--- a/include/efi.h
+++ b/include/efi.h
@@ -576,6 +576,25 @@ extern struct efi_runtime_services *RT;
 #define EFI_DRIVER_BINDING_PROTOCOL_GUID \
     EFI_GUID(0x18a031ab, 0xb443, 0x4d1a, 0xa5, 0xc0, 0x0c, 0x09, 0x26, 0x1e, 0x9f, 0x71)
 
+struct efi_driver_binding_protocol {
+	efi_status_t (EFIAPI * supported)(
+			struct efi_driver_binding_protocol *this,
+			efi_handle_t controller_handle,
+			struct efi_device_path *remaining_device_path);
+	efi_status_t (EFIAPI * start)(
+			struct efi_driver_binding_protocol *this,
+			efi_handle_t controller_handle,
+			struct efi_device_path *remaining_device_path);
+	efi_status_t (EFIAPI * stop)(
+			struct efi_driver_binding_protocol *this,
+			efi_handle_t controller_handle,
+			size_t number_of_children,
+			efi_handle_t *child_handle_buffer);
+	u32 version;
+	efi_handle_t image_handle;
+	efi_handle_t driver_binding_handle;
+};
+
 extern efi_guid_t efi_file_info_id;
 extern efi_guid_t efi_simple_file_system_protocol_guid;
 extern efi_guid_t efi_file_system_info_guid;
-- 
2.39.2



