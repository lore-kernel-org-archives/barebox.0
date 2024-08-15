Delivery-date: Thu, 15 Aug 2024 13:45:46 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1seYvK-009rHp-1J
	for lore@lore.pengutronix.de;
	Thu, 15 Aug 2024 13:45:46 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1seYvJ-0002Oe-Ph
	for lore@pengutronix.de; Thu, 15 Aug 2024 13:45:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=4B9eHbmCpm/QwQD5c43kQaiJQqaxrwYoSycxO9lne7w=; b=0hnfLVHCtY3JrPm5Zmb67iL6OV
	B9anoLy6AJLhcUuRFAiOT/dr/6vRHlVER7/F/y89dWCBFFLWnIAFFr1iyAxb0/tRrZRcpg80pWB+E
	vb+7pEtHC75RE2rl//VHAaka/4H4o5QqGO2EJecLwAKvcNCMgFWVNPKp7LtRvj2eknHCxZnRcrtf/
	IyNFBZ8F8VlS+JyJzPAeH5tHk42Ab0ThTfpRlqK2ehnHn+p/R91/zumh7x/T0mvL3Wt5g8PlCsUCc
	Gngvp783sSl29WzW0mkaChvB7/fdsnfBBYpoOAwT2+Bok3HxijH9ici7HPluYxNAtRJ3ZocGUQdVN
	3WzYIB7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1seYug-00000009olG-00QD;
	Thu, 15 Aug 2024 11:45:06 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1seYuc-00000009ojw-1K8u
	for barebox@lists.infradead.org;
	Thu, 15 Aug 2024 11:45:04 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1seYuY-0002KW-SH
	for barebox@lists.infradead.org; Thu, 15 Aug 2024 13:44:58 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1seYuX-000aJT-KL
	for barebox@lists.infradead.org; Thu, 15 Aug 2024 13:44:57 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1seYuX-00BRKS-1j
	for barebox@lists.infradead.org;
	Thu, 15 Aug 2024 13:44:57 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Thu, 15 Aug 2024 13:44:55 +0200
Message-Id: <20240815114455.2723000-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240815_044502_535651_13D7E685 
X-CRM114-Status: GOOD (  15.55  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2] acpi: fix compilation for 32-bit
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Ahmad Fatoum <ahmad@a3f.at>

Build test on x86 fails due to pointer cast and because of forcing the
bigger alignment on the flexible array.

The problematic pointer cast is for the XSDT, which is 64-bit-only, so
let's fix the cast and return an error if we somehow see an XSDT on
32-bit.

For the flexible array, let's use the size of the pointer for the
alignment.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
v1 -> v2: 
  - fix CI x86_64 breakage, by keeping the packed/aligned specifiction
    as is, but changing it to 32-bit on 32-bit systems.
---
 drivers/bus/acpi.c | 6 ++++--
 include/acpi.h     | 2 +-
 2 files changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/bus/acpi.c b/drivers/bus/acpi.c
index 593617073345..61178db0c8db 100644
--- a/drivers/bus/acpi.c
+++ b/drivers/bus/acpi.c
@@ -174,10 +174,12 @@ static int acpi_register_devices(struct bus_type *bus)
 		sig = "RSDT";
 		root = (struct acpi_rsdt *)(unsigned long)rsdp->rsdt_addr;
 		entry_count = (root->sdt.len - sizeof(struct acpi_rsdt)) / sizeof(u32);
-	} else {
+	} else if (sizeof(void *) == 8) {
 		sig = "XSDT";
-		root = (struct acpi_rsdt *)((struct acpi2_rsdp *)rsdp)->xsdt_addr;
+		root = (struct acpi_rsdt *)(uintptr_t)((struct acpi2_rsdp *)rsdp)->xsdt_addr;
 		entry_count = (root->sdt.len - sizeof(struct acpi_rsdt)) / sizeof(u64);
+	} else {
+		return -EIO;
 	}
 
 	if (acpi_sigcmp(sig, root->sdt.signature)) {
diff --git a/include/acpi.h b/include/acpi.h
index 0756f94501cc..fc0da30610a6 100644
--- a/include/acpi.h
+++ b/include/acpi.h
@@ -115,7 +115,7 @@ struct __packed acpi_sdt { /* system description table header */
 
 struct __packed acpi_rsdt { /* system description table header */
 	struct acpi_sdt	sdt;
-	struct acpi_sdt	* __aligned(8) entries[];
+	struct acpi_sdt	*__aligned(sizeof(void *)) entries[];
 };
 
 struct acpi_driver {
-- 
2.39.2



