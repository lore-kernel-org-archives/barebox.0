Delivery-date: Wed, 03 Jan 2024 19:33:40 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rL63h-002Nl6-18
	for lore@lore.pengutronix.de;
	Wed, 03 Jan 2024 19:33:40 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rL63Y-0004VP-S3
	for lore@pengutronix.de; Wed, 03 Jan 2024 19:33:40 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=t5nroGyTkDH5/ISPGVOEG7DUTgA/6Ur7fTCAa1LzSPI=; b=4L9p+piNyo8D68K4YkoHBsWLPu
	MbtkiecMKa75tB04RpDwKxm7E7wZMEkzuQLMR4qU2IMkAjblou1IO2Cd8QWMflIjwdO9aZMHUOftt
	AGX+uUQVrzhBOzMX443las3M+yqEBMSXPqRf0f1MHSxsS/Y0MHUGNMGS7fhTuiWwNTHNMQui5csTN
	W64t0Zts8gjzR/oBxo67k0e6MJTWvqltCFq1Plx16pVmIsYPxKxgyp0ug4d29CAKJpUH6SxOIChxa
	syR5vBYoHrGhV8yFfTNoSed2PqKh7YcBM6K4flaKb8z2tswP5Ub1qZQ4brXdP/aNFr13d2BkXPbAd
	C691Zzmg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rL624-00BiIH-0A;
	Wed, 03 Jan 2024 18:32:00 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rL61A-00Bh7n-2I
	for barebox@lists.infradead.org;
	Wed, 03 Jan 2024 18:31:08 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL613-0001cv-6O; Wed, 03 Jan 2024 19:30:57 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL612-000Ax4-Os; Wed, 03 Jan 2024 19:30:56 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL5k3-001j4X-30;
	Wed, 03 Jan 2024 19:13:23 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  3 Jan 2024 19:12:26 +0100
Message-Id: <20240103181312.409668-67-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240103181312.409668-1-a.fatoum@pengutronix.de>
References: <20240103181312.409668-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240103_103104_774022_6B73BDF5 
X-CRM114-Status: GOOD (  11.92  )
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
Subject: [PATCH 066/112] efi: use efi_handle_t where appropriate
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

efi_handle_t is a typedef for a void pointer. We use either void *
directly or unsigned long at places, where a handle would be the more
descriptive type. Fix this.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/serial/efi-stdio.c |  2 +-
 include/efi.h              | 10 +++++-----
 2 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/serial/efi-stdio.c b/drivers/serial/efi-stdio.c
index b3b696d8fb3c..a0994168f0db 100644
--- a/drivers/serial/efi-stdio.c
+++ b/drivers/serial/efi-stdio.c
@@ -430,7 +430,7 @@ static int efi_console_probe(struct device *dev)
 	if (!priv->inputbuffer)
 		return -ENOMEM;
 
-	efiret = BS->open_protocol((void *)efi_sys_table->con_in_handle,
+	efiret = BS->open_protocol(efi_sys_table->con_in_handle,
 			     &inex_guid,
 			     (void **)&inex,
 			     efi_parent_image,
diff --git a/include/efi.h b/include/efi.h
index ec4c2a522df4..18583bf62594 100644
--- a/include/efi.h
+++ b/include/efi.h
@@ -601,11 +601,11 @@ struct efi_system_table {
 	struct efi_table_hdr hdr;
 	unsigned long fw_vendor;	/* physical addr of CHAR16 vendor string */
 	u32 fw_revision;
-	unsigned long con_in_handle;
+	efi_handle_t con_in_handle;
 	struct efi_simple_input_interface *con_in;
-	unsigned long con_out_handle;
+	efi_handle_t con_out_handle;
 	struct efi_simple_text_output_protocol *con_out;
-	unsigned long stderr_handle;
+	efi_handle_t stderr_handle;
 	unsigned long std_err;
 	struct efi_runtime_services *runtime;
 	struct efi_boot_services *boottime;
@@ -615,9 +615,9 @@ struct efi_system_table {
 
 struct efi_loaded_image {
 	u32 revision;
-	void *parent_handle;
+	efi_handle_t parent_handle;
 	struct efi_system_table *system_table;
-	void *device_handle;
+	efi_handle_t device_handle;
 	void *file_path;
 	void *reserved;
 	u32 load_options_size;
-- 
2.39.2



