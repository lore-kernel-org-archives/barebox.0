Delivery-date: Mon, 04 Mar 2024 20:08:25 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rhDfl-008dWN-30
	for lore@lore.pengutronix.de;
	Mon, 04 Mar 2024 20:08:25 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rhDfl-0003LH-75
	for lore@pengutronix.de; Mon, 04 Mar 2024 20:08:25 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=AM9nibBz+3c7BNJw6mL7ENHUMZaym7O8vD51IJ+49rU=; b=GgT1lSt0vuaqN6P1JcI4YW2J/q
	tEgWoywV1PaB8daGldiF14u2BpMa3unfbDRq4jBZoGIlSdJX0QyxS2wE4pQppncdbOWeBJQwGJhei
	1yR612+YkLQc6t1SwAmjX//hKyk+jsyHl7MBGWdvU67Rs89k1ACgFDYYVj+L/kwPyOUxBiazS5meE
	IQ/IRK/UG0Kxr2C4ZaumqZACb1Aj+Xv4RbJ8UjiHBIb+Iwwjg3BgVaPcwIm2NXPt2Lu5NA4eK5f8L
	TTNhowOlt/y4Mi2J0YtDtHtOwMdek9RwgAilsDK19FhNpqEEoJXSFbBaHiFk7LidEntrW+hwWKzWv
	fKxe1GHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDfF-0000000ALkV-1AkE;
	Mon, 04 Mar 2024 19:07:53 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDaW-0000000AIX8-0qzw
	for barebox@bombadil.infradead.org;
	Mon, 04 Mar 2024 19:03:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=AM9nibBz+3c7BNJw6mL7ENHUMZaym7O8vD51IJ+49rU=; b=BTPzCoG42zlevO6pSuKDG36xee
	6CjRnS4VKnRdyMhG5UB4oy55WUg8kmbSl3LCTw0u1J8z8n+qGTQMFe41hYpxFfvDk4GDI34gMa5ks
	wO2mQTWAiFDwBooRZtgPraECMXpf1az+33sLSFvXAka6QZj/zKARWbTqN8BHdhtnvHC+s8hEuL2r8
	/LzgVKPGQPEkwhhaSObML4kypT2SvrVqeH+3d6x/JRKK+9R4YwZM4BlTiCUCqcDQ6uAnnXRAU/L5F
	P3dudfYxzNtp2wcPL48OCH5XsbCl8KWSlznO6pyvvfoUkBeNeAafSN88S++895aF4RAWhINtSNjKn
	NWX+ZkVg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDaP-000000051vg-0Xoh
	for barebox@lists.infradead.org;
	Mon, 04 Mar 2024 19:02:58 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDaI-0006EQ-5i; Mon, 04 Mar 2024 20:02:46 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDaH-004PLR-Lj; Mon, 04 Mar 2024 20:02:45 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDYM-00Ed9V-0h;
	Mon, 04 Mar 2024 20:00:46 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  4 Mar 2024 19:59:55 +0100
Message-Id: <20240304190038.3486881-71-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240304190038.3486881-1-a.fatoum@pengutronix.de>
References: <20240304190038.3486881-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240304_190253_366185_084E6EBD 
X-CRM114-Status: GOOD (  11.68  )
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
Subject: [PATCH v2 070/113] efi: rename efi_simple_input_interface to efi_simple_text_input_protocol
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This aligns the name with what's in the specification.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/serial/efi-stdio.c |  2 +-
 include/efi.h              | 10 +++++-----
 2 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/serial/efi-stdio.c b/drivers/serial/efi-stdio.c
index a0994168f0db..c8c84270093e 100644
--- a/drivers/serial/efi-stdio.c
+++ b/drivers/serial/efi-stdio.c
@@ -20,7 +20,7 @@
 
 struct efi_console_priv {
 	struct efi_simple_text_output_protocol *out;
-	struct efi_simple_input_interface *in;
+	struct efi_simple_text_input_protocol *in;
 	struct efi_simple_text_input_ex_protocol *inex;
 	struct console_device cdev;
 	u16 efi_console_buffer[CONFIG_CBSIZE + 1];
diff --git a/include/efi.h b/include/efi.h
index f0c968ec5e8a..1749001adb48 100644
--- a/include/efi.h
+++ b/include/efi.h
@@ -602,7 +602,7 @@ struct efi_system_table {
 	unsigned long fw_vendor;	/* physical addr of CHAR16 vendor string */
 	u32 fw_revision;
 	efi_handle_t con_in_handle;
-	struct efi_simple_input_interface *con_in;
+	struct efi_simple_text_input_protocol *con_in;
 	efi_handle_t con_out_handle;
 	struct efi_simple_text_output_protocol *con_out;
 	efi_handle_t stderr_handle;
@@ -711,12 +711,12 @@ struct efi_simple_text_output_protocol {
 
 struct efi_input_key;
 
-struct efi_simple_input_interface {
-	efi_status_t(EFIAPI *reset)(struct efi_simple_input_interface *this,
+struct efi_simple_text_input_protocol {
+	efi_status_t(EFIAPI *reset)(struct efi_simple_text_input_protocol *this,
 			bool ExtendedVerification);
-	efi_status_t(EFIAPI *read_key_stroke)(struct efi_simple_input_interface *this,
+	efi_status_t(EFIAPI *read_key_stroke)(struct efi_simple_text_input_protocol *this,
 			struct efi_input_key *key);
-	void *wait_for_key;
+	struct efi_event *wait_for_key;
 };
 
 struct efi_device_path *device_path_from_handle(efi_handle_t Handle);
-- 
2.39.2



