Delivery-date: Wed, 03 Jan 2024 19:37:04 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rL66z-002OJt-02
	for lore@lore.pengutronix.de;
	Wed, 03 Jan 2024 19:37:04 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rL66s-0008Q3-5U
	for lore@pengutronix.de; Wed, 03 Jan 2024 19:37:04 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=VJEuyLtsigXN18J9+hkS4HdapzI50am157IU3pt3xYs=; b=u9P61cDz1vkohRVGuiX9DynehF
	cysZj8YtG/K+uvV/LNZj+0ZD/IMQCECIE314OmnAXrSSaMVqdq6XIO/QGoRNVBL5NfjG7Wn8QIHoU
	expsiNczlHHXihhexQtN4eFkUENs2BBkCPuJBHH79PLsbKKLNrXIycBsUMD0QU/Gg/r6FPG04bKNG
	iAXJp8rfz3KVUP1N2d/h1SclAchTdmh0Pt1t4mOlhEHNx7hJfVpTP89nEa5EdDJv9qwJ0x6Y618O6
	vjwnhv7fy0BuGl8fnDNoKqr0y5LnmuNdUj/izOPbfwEcFtsAkW1NMDpeQEPZKjHAUvzSQO0bkqs2n
	Ms794q0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rL65G-00Bm4m-0P;
	Wed, 03 Jan 2024 18:35:18 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rL61R-00BhVh-0c
	for barebox@bombadil.infradead.org;
	Wed, 03 Jan 2024 18:31:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=VJEuyLtsigXN18J9+hkS4HdapzI50am157IU3pt3xYs=; b=e7G+yS+uaZWRZW7JoThWiYqQDM
	KOvlOCqVAMaJ1FEy9S/exMsxC9gTs9OPJCNRkJy0mwlXNC2OKm2A9yUU4id/QlKZnNUdGX0EANLDH
	7HSLnNlipeZyn5fAqRauW6Axxkn2VIfonEts4jKwP3QHIVAMUZtNJgXTQfqwopHNUVVkiKv7UDoBO
	K65gl+vGmUgiThZSoutA4kNEO3gn6n0yxI2BQR7qLjSDW5oY8atG1+VjVvbBufRLA02dhpAGfRPVF
	VWmpycADDTBDpe/2ev3vHn2XgL/K3al11Vcg+onV41NiDi5L2fDO9LzguI7OwO2Eu4IUL97+M96le
	IAeR5vpQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by casper.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1rL61I-00DIlv-9P
	for barebox@lists.infradead.org; Wed, 03 Jan 2024 18:31:19 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL610-0001Ur-Mi; Wed, 03 Jan 2024 19:30:54 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL610-000AuT-9p; Wed, 03 Jan 2024 19:30:54 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL5k4-001j4X-15;
	Wed, 03 Jan 2024 19:13:24 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  3 Jan 2024 19:12:35 +0100
Message-Id: <20240103181312.409668-76-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240103181312.409668-1-a.fatoum@pengutronix.de>
References: <20240103181312.409668-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240103_183113_686471_ED3E7334 
X-CRM114-Status: UNSURE (   6.66  )
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
X-Spam-Status: No, score=-6.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 075/112] efi: add efi_driver_binding_protocol
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



