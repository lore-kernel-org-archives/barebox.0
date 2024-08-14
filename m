Delivery-date: Wed, 14 Aug 2024 11:25:05 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1seAFd-009UQi-2j
	for lore@lore.pengutronix.de;
	Wed, 14 Aug 2024 11:25:05 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1seAFc-00076P-Ok
	for lore@pengutronix.de; Wed, 14 Aug 2024 11:25:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=8Hxege6SB5xCGu6jULSFfa9tIzhRFeOKPb7wTR7Se5E=; b=3Mz0VsmNME0YV+VBXCJCOhmIGZ
	0EVUMxK4xhs7kZtrQU7R6KXUrbB7BmwTpL1rOKNKxflWHZU0LpSDAv+1uujyXwDvqGJV8enAvwEAa
	6vXMtt1oPTQ2IRmfsCgcyjCBFEqtH/oKDxYN2mQDzblDE5O2eU+nCRNwxTzZmO9o3o2U7uCCD/plo
	gpA4X+HPfLcQ37UNms1bKL1OE2fZZZTreZqfEIAVp5bfbKGIxLf/I6gOWrCnImpz+F8nIMKI1bOCZ
	onpdQJZRf9gl/TMWi7MFVLNtTvGNllylQmRWcPIxLyK2wDzETki1yda8jeWOCckn7cwU2eqlQu6Mv
	Ujq4YUug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1seAF8-00000006Msv-1sAM;
	Wed, 14 Aug 2024 09:24:34 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1seAF6-00000006Ms7-0mGe
	for barebox@bombadil.infradead.org;
	Wed, 14 Aug 2024 09:24:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=8Hxege6SB5xCGu6jULSFfa9tIzhRFeOKPb7wTR7Se5E=; b=hMrfdM6+2KjQDrbsBc7J2ou0I6
	88qPrgNL7BBRL2NIruz6rj5r/CL4oz4OSEqD4r+JDnnh4A7cePZKS0fELXUtBTJ/M6znRNEqnINpo
	vWgkJKHwjms2lvMyWkIZ4HvdWB+tVdpyoFtR1d2+GCI6pEwLbSxIMDc4X65POjS1GOc/wcgl0wPQZ
	Qh+EJIKQz8EZh7mlIfFhqRpFRmpgLGaLrTMiJuScQyXWeTCjPJaCzUP7OIXKxAtCZs7yfYiY6eOUH
	ex/KbfZeHl38TdklQaTENJWaqVtmtNH9zuk5HKo98NGYl7me42QJaXM4ZsbXLjtEEQGE1zaIy/h4f
	RbiiwQcQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1seAF1-000000080Le-0GtX
	for barebox@lists.infradead.org;
	Wed, 14 Aug 2024 09:24:30 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1seAF0-0006sc-0s; Wed, 14 Aug 2024 11:24:26 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1seAEz-000KMq-Ix; Wed, 14 Aug 2024 11:24:25 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1seAEz-000AUW-1b;
	Wed, 14 Aug 2024 11:24:25 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 14 Aug 2024 11:24:22 +0200
Message-Id: <20240814092424.39878-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240814092424.39878-1-a.fatoum@pengutronix.de>
References: <20240814092424.39878-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240814_102427_513419_D572DC82 
X-CRM114-Status: GOOD (  15.01  )
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
Subject: [PATCH 4/6] acpi: fix compilation for 32-bit
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Build test on x86 fails due to pointer cast and because of forcing the
bigger alignment on the flexible array.

The problematic pointer cast is for the XSDT, which is 64-bit-only, so
let's fix the cast and return an error if we somehow see an XSDT on
32-bit.

For the flexible array, the first struct member is already packed, so we
should arrive at the same result by just dropping the packed from the
second member, so they get normal alignment.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/bus/acpi.c | 6 ++++--
 include/acpi.h     | 4 ++--
 2 files changed, 6 insertions(+), 4 deletions(-)

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
index 0756f94501cc..837476424664 100644
--- a/include/acpi.h
+++ b/include/acpi.h
@@ -113,9 +113,9 @@ struct __packed acpi_sdt { /* system description table header */
 	u32		creator_revision;
 };
 
-struct __packed acpi_rsdt { /* system description table header */
+struct acpi_rsdt { /* system description table header */
 	struct acpi_sdt	sdt;
-	struct acpi_sdt	* __aligned(8) entries[];
+	struct acpi_sdt	*entries[];
 };
 
 struct acpi_driver {
-- 
2.39.2



