Delivery-date: Wed, 03 Jan 2024 20:46:58 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rL7Cc-002V19-1a
	for lore@lore.pengutronix.de;
	Wed, 03 Jan 2024 20:46:58 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rL7Cb-00045h-2p
	for lore@pengutronix.de; Wed, 03 Jan 2024 20:46:57 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7t/1a0QCjyNnw2oQ6j3rJrs6Ij5GzAZ1TyftHGheeWg=; b=pDX+z4jXlNCnj7wnNye5gL77rQ
	L3R6TlTgK9kYu7g44O+EKy9KHGHVE0L9dnLV1f619bsx+mbbm36vtw61hEhBJTx0vDXqFSbtqSjXp
	88KWaFbjTvJwT58vf/wXPakymnp9DG4VVUEo+IwjW7AGHFxQEX5qQBRcMH9B2qaYYM0JKlx4nLlJk
	3OyUpNrhhwcOCbdU7tjPqirldw2qXpK19b591/RODmy02PaMK/ORhl+4oXSVfIDdrM/vC0z+lI8nG
	/9rZ5sSZiHxNAY4FL3N6ZV8/1dhVsuc1cFIJK4Qj1h5DmTVKAoSaPTzWiwnMzEZjg5OAxL4B0zYjI
	SqVUAm0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rL7BY-00Bw8a-2b;
	Wed, 03 Jan 2024 19:45:52 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rL610-00Bh1L-0a
	for barebox@lists.infradead.org;
	Wed, 03 Jan 2024 18:31:00 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL60y-0001Pf-Vo; Wed, 03 Jan 2024 19:30:53 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL60y-000Ask-JQ; Wed, 03 Jan 2024 19:30:52 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL5k4-001j4X-0D;
	Wed, 03 Jan 2024 19:13:24 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  3 Jan 2024 19:12:29 +0100
Message-Id: <20240103181312.409668-70-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240103181312.409668-1-a.fatoum@pengutronix.de>
References: <20240103181312.409668-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240103_103054_216632_23152DB0 
X-CRM114-Status: UNSURE (   9.02  )
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
Subject: [PATCH 069/112] efi: constify guid_t in API
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Improve const safety by marking parameters that are pointers to const as
such.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/efi.h | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/include/efi.h b/include/efi.h
index 2e34c6be068a..f0c968ec5e8a 100644
--- a/include/efi.h
+++ b/include/efi.h
@@ -241,12 +241,12 @@ struct efi_boot_services {
 #define EFI_OPEN_PROTOCOL_BY_CHILD_CONTROLLER 0x00000008
 #define EFI_OPEN_PROTOCOL_BY_DRIVER           0x00000010
 #define EFI_OPEN_PROTOCOL_EXCLUSIVE           0x00000020
-	efi_status_t (EFIAPI *open_protocol)(efi_handle_t handle, efi_guid_t *protocol,
+	efi_status_t (EFIAPI *open_protocol)(efi_handle_t handle, const efi_guid_t *protocol,
 			void ** interface, efi_handle_t agent_handle,
 			efi_handle_t controller_handle, u32 attributes);
-	efi_status_t (EFIAPI *close_protocol)(efi_handle_t handle, efi_guid_t *protocol,
+	efi_status_t (EFIAPI *close_protocol)(efi_handle_t handle, const efi_guid_t *protocol,
 					      efi_handle_t agent, efi_handle_t controller);
-	efi_status_t(EFIAPI *open_protocol_information)(efi_handle_t handle, efi_guid_t *Protocol,
+	efi_status_t(EFIAPI *open_protocol_information)(efi_handle_t handle, const efi_guid_t *Protocol,
 			struct efi_open_protocol_information_entry **entry_buffer,
 			unsigned long *entry_count);
 	efi_status_t (EFIAPI *protocols_per_handle)(efi_handle_t handle,
@@ -254,7 +254,7 @@ struct efi_boot_services {
 			unsigned long *protocols_buffer_count);
 	efi_status_t (EFIAPI *locate_handle_buffer) (
 			enum efi_locate_search_type search_type,
-			efi_guid_t *protocol, void *search_key,
+			const efi_guid_t *protocol, void *search_key,
 			unsigned long *no_handles, efi_handle_t **buffer);
 	void *locate_protocol;
 	void *install_multiple_protocol_interfaces;
-- 
2.39.2



