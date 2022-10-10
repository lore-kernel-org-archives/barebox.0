Delivery-date: Mon, 10 Oct 2022 08:10:08 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ohlzN-0033WR-0K
	for lore@lore.pengutronix.de; Mon, 10 Oct 2022 08:10:08 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ohlzK-0008PQ-Qg
	for lore@pengutronix.de; Mon, 10 Oct 2022 08:10:07 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=KZQjKCu2mbiP1gWJwpk4Ms6h2DZno7IVuw9PZMuxRx0=; b=v7TQcV3Xnp/rNTI+k3sldmbLrw
	lxL274KHuk1jQk9xBi//hZtG+8m0g8lglOs+/LPlL0qdb+aGzQfejg9XQF9VOD6Ena6mXWjmjWqjs
	F6G8uJlmoXEZkyx/MCtk0nN41XKXXGMen/SysQSmrKkVzZNk6w0T9bQXh/K9Nr3S6TKOjZWQ3Mk5s
	ZHJMDGq2ntkrBGwygW0wCayYIl/V7WjZU91rKnx/+XeXf7gzwbWts4pJKl0dshR05ziuN93rftbMo
	9UGIuj8rsM+gDvlruj3GXN9yCnp5b+87ubgcwJy3MNknFbnyLIptG0HbXs6uRYKU4gg4UaZHmQUPv
	8wkUASyQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ohly7-00H9bh-04; Mon, 10 Oct 2022 06:08:51 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ohly2-00H9aH-W0
	for barebox@lists.infradead.org; Mon, 10 Oct 2022 06:08:48 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1ohly1-0008Cf-NG; Mon, 10 Oct 2022 08:08:45 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1ohly0-000d94-Vo; Mon, 10 Oct 2022 08:08:44 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1ohly0-008k2g-9A; Mon, 10 Oct 2022 08:08:44 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 10 Oct 2022 08:08:41 +0200
Message-Id: <20221010060842.2083550-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20221010060842.2083550-1-a.fatoum@pengutronix.de>
References: <20221010060842.2083550-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221009_230847_064488_879CF363 
X-CRM114-Status: GOOD (  14.15  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 4/5] efi: implement and use for_each_efi_config_table
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Iterating over the system table is something we do at two places,
already and the third will soon follow. Use the occasion to factor the
loop head into a macro.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/bus/acpi.c       | 6 ++----
 drivers/efi/efi-device.c | 9 ++++-----
 include/efi.h            | 5 +++++
 3 files changed, 11 insertions(+), 9 deletions(-)

diff --git a/drivers/bus/acpi.c b/drivers/bus/acpi.c
index 63d3f618b4fb..1d6069b6d82a 100644
--- a/drivers/bus/acpi.c
+++ b/drivers/bus/acpi.c
@@ -231,11 +231,9 @@ struct bus_type acpi_bus = {
 
 static int efi_acpi_probe(void)
 {
-	efi_config_table_t *table = NULL;
-	int i;
+	efi_config_table_t *ect, *table = NULL;
 
-	for (i = 0; i < efi_sys_table->nr_tables; i++) {
-		efi_config_table_t *ect = &efi_sys_table->tables[i];
+	for_each_efi_config_table(ect) {
 		/* take ACPI < 2 table only if no ACPI 2.0 is available */
 		if (!efi_guidcmp(ect->guid, EFI_ACPI_20_TABLE_GUID)) {
 			acpi_bus.name = "acpi2";
diff --git a/drivers/efi/efi-device.c b/drivers/efi/efi-device.c
index 6b903723524e..defde7018696 100644
--- a/drivers/efi/efi-device.c
+++ b/drivers/efi/efi-device.c
@@ -347,13 +347,12 @@ struct bus_type efi_bus = {
 
 static void efi_businfo(struct device_d *dev)
 {
-	int i;
+	efi_config_table_t *t;
+	int i = 0;
 
 	printf("Tables:\n");
-	for (i = 0; i < efi_sys_table->nr_tables; i++) {
-		efi_config_table_t *t = &efi_sys_table->tables[i];
-
-		printf("  %d: %pUl: %s\n", i, &t->guid,
+	for_each_efi_config_table(t) {
+		printf("  %d: %pUl: %s\n", i++, &t->guid,
 					efi_guid_string(&t->guid));
 	}
 }
diff --git a/include/efi.h b/include/efi.h
index 149c4e74c6cb..36e08af67bf3 100644
--- a/include/efi.h
+++ b/include/efi.h
@@ -547,6 +547,11 @@ typedef struct {
 	unsigned long table;
 } efi_config_table_t;
 
+#define for_each_efi_config_table(t) \
+	for (t = efi_sys_table->tables; \
+	     t - efi_sys_table->tables < efi_sys_table->nr_tables; \
+	     t++)
+
 #define EFI_SYSTEM_TABLE_SIGNATURE ((u64)0x5453595320494249ULL)
 
 #define EFI_2_30_SYSTEM_TABLE_REVISION  ((2 << 16) | (30))
-- 
2.30.2



