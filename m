Delivery-date: Wed, 02 Mar 2022 21:11:03 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nPVJP-00Fnv7-6K
	for lore@lore.pengutronix.de; Wed, 02 Mar 2022 21:11:03 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nPVJO-0003NV-0J
	for lore@pengutronix.de; Wed, 02 Mar 2022 21:11:02 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=pM4vQFhhu51pR2I+LBGpjZ1B5QVzA++RDfhC1OigIJc=; b=ENp5TcxMKJTBVH
	nFsWap38b8DqI9ECTus4EaUAh2JrY5/kVn9lQf3UNYWymBBoCxUVGBri1YDvitPGMSIDQ8BRMRzOz
	mGiZhtXGCt3MbxkXuwt+YxffvcODnkWMcAHaTQG9yrsH/R7aom+sTKK3U0eFYVhkxAdv41Z2CVfs6
	6gr2A55Sx6JdoOgpNH1m/1dQeTvO1JgM6MIeg7wMbl53fm8OHhUR6XEbruSqYBMe3b+6WMMe0OhdZ
	lChBMz6o8QbjSpftUThZciB89H4j++EEvEvoTBcD30Pr51m2Ljgj1uRmtAPpjtqJ+7QvS1hSB2scf
	bdLFzk6YC+oU7UgfuEXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nPVIB-00449z-Ud; Wed, 02 Mar 2022 20:09:48 +0000
Received: from relay2-d.mail.gandi.net ([2001:4b98:dc4:8::222])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nPVI6-00448u-LN
 for barebox@lists.infradead.org; Wed, 02 Mar 2022 20:09:44 +0000
Received: (Authenticated sender: ahmad@a3f.at)
 by mail.gandi.net (Postfix) with ESMTPSA id 7312140006;
 Wed,  2 Mar 2022 20:09:39 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <ahmad@a3f.at>
Date: Wed,  2 Mar 2022 21:09:34 +0100
Message-Id: <20220302200934.657994-1-ahmad@a3f.at>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220302_120942_881766_11B3C579 
X-CRM114-Status: GOOD (  10.21  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] watchdog: wdat: fix mixed spaces/tabs in alignment
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Many struct members have a space followed by tabs for alignments. Drop
the space.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 drivers/watchdog/wdat_wdt.c | 36 ++++++++++++++++++------------------
 1 file changed, 18 insertions(+), 18 deletions(-)

diff --git a/drivers/watchdog/wdat_wdt.c b/drivers/watchdog/wdat_wdt.c
index 39e8cc4a3dab..f58aee128301 100644
--- a/drivers/watchdog/wdat_wdt.c
+++ b/drivers/watchdog/wdat_wdt.c
@@ -48,12 +48,12 @@ enum acpi_wdat_instructions {
 /* WDAT Instruction Entries (actions) */
 
 struct __packed acpi_wdat_entry {
-	u8 				action;
-	u8 				instruction;
-	u16 				reserved;
-	struct acpi_generic_address 	register_region;
-	u32 				value;		/* Value used with Read/Write register */
-	u32 				mask;		/* Bitmask required for this register instruction */
+	u8				action;
+	u8				instruction;
+	u16				reserved;
+	struct acpi_generic_address	register_region;
+	u32				value;		/* Value used with Read/Write register */
+	u32				mask;		/* Bitmask required for this register instruction */
 };
 
 /**
@@ -82,7 +82,7 @@ struct wdat_instruction {
 struct wdat_wdt {
 	struct watchdog		wdd;
 	unsigned int		period;
-	bool 			stopped_in_sleep;
+	bool			stopped_in_sleep;
 	bool			stopped;
 	struct list_head	*instructions[MAX_WDAT_ACTIONS];
 };
@@ -90,17 +90,17 @@ struct wdat_wdt {
 struct __packed acpi_table_wdat {
 	struct acpi_table_header header;	/* Common ACPI table header */
 	u32			 header_length;	/* Watchdog Header Length */
-	u16 			 pci_segment;	/* PCI Segment number */
-	u8 			 pci_bus;	/* PCI Bus number */
-	u8 			 pci_device;	/* PCI Device number */
-	u8 			 pci_function;	/* PCI Function number */
-	u8 			 reserved[3];
-	u32 			 timer_period;	/* Period of one timer count (msec) */
-	u32 			 max_count;	/* Maximum counter value supported */
-	u32 			 min_count;	/* Minimum counter value */
-	u8 			 flags;
-	u8 			 reserved2[3];
-	u32 			 nr_entries;	/* Number of watchdog entries that follow */
+	u16			 pci_segment;	/* PCI Segment number */
+	u8			 pci_bus;	/* PCI Bus number */
+	u8			 pci_device;	/* PCI Device number */
+	u8			 pci_function;	/* PCI Function number */
+	u8			 reserved[3];
+	u32			 timer_period;	/* Period of one timer count (msec) */
+	u32			 max_count;	/* Maximum counter value supported */
+	u32			 min_count;	/* Minimum counter value */
+	u8			 flags;
+	u8			 reserved2[3];
+	u32			 nr_entries;	/* Number of watchdog entries that follow */
 	struct acpi_wdat_entry   entries[];
 };
 
-- 
2.34.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

