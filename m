Delivery-date: Wed, 03 Jan 2024 20:46:57 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rL7Cc-002V0t-14
	for lore@lore.pengutronix.de;
	Wed, 03 Jan 2024 20:46:57 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rL7Ca-00045Q-OQ
	for lore@pengutronix.de; Wed, 03 Jan 2024 20:46:57 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=AM9nibBz+3c7BNJw6mL7ENHUMZaym7O8vD51IJ+49rU=; b=XhH1m/9UEnwQm7IVibL05YmWwo
	5U2v40GtRT9m+NM9otwDVDHZtR8fNhp3JzG9XTnt4Tc3t0UG7dQpHpdo4C8QdYgrCadiq9XCPqe8F
	FVcQZNKpKwcK/39V/PcPyz5zDVZAgjsg4Yiik0f0KwkCGO6+7AuJoenpVO1cmvWeKkz1/3IuqCbLA
	I6N/1rwdHK962lKiTZhn2nMyzBH4XUHyAv9gFbKU4mJUq8di1j68oum0UgQtKiSv6yMu6yGAlIivO
	2ZCLvEClJhjBT9UScUM9YGaR+zGn5ZgLHmdCrmmAdiVH/q2ec8CVCTtpc5diL6kVou7cnfP2yp3zJ
	u2BaZ/vw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rL7BR-00Bw5B-38;
	Wed, 03 Jan 2024 19:45:45 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rL60z-00Bh1A-1Y
	for barebox@lists.infradead.org;
	Wed, 03 Jan 2024 18:30:56 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL60y-0001NS-8C; Wed, 03 Jan 2024 19:30:52 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL60x-000As3-Rk; Wed, 03 Jan 2024 19:30:51 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL5k4-001j4X-0L;
	Wed, 03 Jan 2024 19:13:24 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  3 Jan 2024 19:12:30 +0100
Message-Id: <20240103181312.409668-71-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240103181312.409668-1-a.fatoum@pengutronix.de>
References: <20240103181312.409668-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240103_103053_550283_7A7966BD 
X-CRM114-Status: GOOD (  11.29  )
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
Subject: [PATCH 070/112] efi: rename efi_simple_input_interface to efi_simple_text_input_protocol
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



