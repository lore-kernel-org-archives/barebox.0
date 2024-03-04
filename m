Delivery-date: Mon, 04 Mar 2024 20:10:20 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rhDhc-008dk9-2n
	for lore@lore.pengutronix.de;
	Mon, 04 Mar 2024 20:10:20 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rhDhb-0005JF-3L
	for lore@pengutronix.de; Mon, 04 Mar 2024 20:10:20 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=t5nroGyTkDH5/ISPGVOEG7DUTgA/6Ur7fTCAa1LzSPI=; b=ditHx1pWS8EOjOU/vM81ygL3Gs
	9Z8AzLkhZ3CRuJHMBbqB5usfK2buwIVYLitJr6zuSQTaaiLlkgIrEwXjNPHDqFNPlZJw0gVc9FNtV
	/6xJn3kSgKRSlPXWRTltnS2h2jXzHmocUs9VzUeDVWUp9xyk5j8u21/icUSam/AEv657t/FibJxVo
	v+QLNsgSqnF2q7m6gTCWdaB8nI87HvxXNdmPaOx8aw2a1jWCqfML25cyQ+rH3W/eOIcNrJwbl+l/6
	hBddgc+glThtczHcaEdx9ugoIB/yyJmbd+AHRBkzhHQdy/kjhHVNWuNBRJyPVafOicEJhbsOL/+BG
	o+4+oTow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDh2-0000000AN4s-3vml;
	Mon, 04 Mar 2024 19:09:44 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDad-0000000AId2-0WQi
	for barebox@bombadil.infradead.org;
	Mon, 04 Mar 2024 19:03:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=t5nroGyTkDH5/ISPGVOEG7DUTgA/6Ur7fTCAa1LzSPI=; b=SnXe2EVl1L4FxX6guLSVfWuEc5
	SA0UBfKyyHtefrOxLUO0SyOa53jtUIhZDdfUztChaKe5VbB3tBUPdTwnkTMYNhptffwxWjxETvcJp
	ILJr8qqBbZasFYfFmDbZK3QQdbj9cRPXY9sCOUDmCu5GE6iKD1BcwEMB0sOY7wV0pSfeK4egB4y2+
	jCoBN8NxwqYkIkbGJzNeJeX9fjD+q5gkri7Z9SQiIiomNJ//TE72St/0QnHJpQNmV3UMQTHvL58F5
	5nfEzRxCPjM3lxS+YLJ1QJL3ai5q6y6xbslu0tAs8sAStwps03CYlK3THrvX1osTbizkf/lBJ8ocm
	vzhFB18w==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDaW-000000051va-0mE5
	for barebox@lists.infradead.org;
	Mon, 04 Mar 2024 19:03:05 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDaG-00068W-Ga; Mon, 04 Mar 2024 20:02:44 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDaG-004PJm-1H; Mon, 04 Mar 2024 20:02:44 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDYM-00Ed9V-08;
	Mon, 04 Mar 2024 20:00:46 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  4 Mar 2024 19:59:51 +0100
Message-Id: <20240304190038.3486881-67-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240304190038.3486881-1-a.fatoum@pengutronix.de>
References: <20240304190038.3486881-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240304_190300_280945_58C0BFA7 
X-CRM114-Status: GOOD (  12.19  )
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
Subject: [PATCH v2 066/113] efi: use efi_handle_t where appropriate
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



