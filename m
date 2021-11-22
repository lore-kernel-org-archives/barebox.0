Delivery-date: Mon, 22 Nov 2021 09:53:28 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mp54q-0003cb-NX
	for lore@lore.pengutronix.de; Mon, 22 Nov 2021 09:53:28 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mp54p-0001mG-8M
	for lore@pengutronix.de; Mon, 22 Nov 2021 09:53:28 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7m9+GRXguTB67IT/rVX7WwCFEgy5mVQCr8/8JuV7tbw=; b=nLkrG77MkLoJCw
	Yf+W+ZcPe8jpPTyYN/oPPLMnHNDbEfRKiSPkGk+mcgLpsBc6Afah6uPDr0gzA1p4WHBuihgFq3pPc
	wygEaeCaIn9LC2y3Y7SsYUX15h0nSl7uqnpvnzrZ2Tm7lZWouxk9AKut5A7lqc2/43STHvmMnONUk
	AN1GlXVfNjaP0vLIx3Hnt0rFAF2s/MvvmSRAhm6bs8V6WOfI4MDW0ukl9WYWOI6wd5VCd06RBse/9
	vNAcOb8NfiIfcr3nwMwiFhGF4QLwfHTTgpvmrDLVX7t3jQdvDNlG/+Q1JnvqjIGeUmzPVIlOdP9J6
	irG4aMJSH2o22afdxshw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mp53V-00FNgy-OX; Mon, 22 Nov 2021 08:52:05 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mp4zK-00FL5Q-Qd
 for barebox@lists.infradead.org; Mon, 22 Nov 2021 08:47:49 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1mp4zB-0007ws-ES; Mon, 22 Nov 2021 09:47:37 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1mp4zA-00Atft-0c; Mon, 22 Nov 2021 09:47:36 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 22 Nov 2021 09:47:31 +0100
Message-Id: <20211122084732.2597109-30-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211122084732.2597109-1-a.fatoum@pengutronix.de>
References: <20211122084732.2597109-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211122_004747_051470_7BADB33F 
X-CRM114-Status: GOOD (  11.27  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 29/30] bus: acpi: register bus even if without ACPI EFI table
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The ACPI bus must be registered if there are ACPI drivers compiled in.
Thus the ACPI bus registration must be decoupled from the existence of
the ACPI table.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/bus/acpi.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/bus/acpi.c b/drivers/bus/acpi.c
index efba3f4c1671..54c60856570d 100644
--- a/drivers/bus/acpi.c
+++ b/drivers/bus/acpi.c
@@ -223,6 +223,7 @@ static void acpi_bus_remove(struct device_d *dev)
 }
 
 struct bus_type acpi_bus = {
+	.name = "acpi",
 	.match = acpi_bus_match,
 	.probe = acpi_bus_probe,
 	.remove = acpi_bus_remove,
@@ -240,17 +241,17 @@ static int efi_acpi_probe(void)
 			acpi_bus.name = "acpi2";
 			table = ect;
 		} else if (!table && !efi_guidcmp(ect->guid, EFI_ACPI_TABLE_GUID)) {
-			acpi_bus.name = "acpi";
+			acpi_bus.name = "acpi1";
 			table = ect;
 		}
 	}
 
+	bus_register(&acpi_bus);
+
 	if (!table)
 		return 0;
 
-	bus_register(&acpi_bus);
 	acpi_bus.dev->priv = table;
-
 	return acpi_register_devices(&acpi_bus);
 }
 postcore_initcall(efi_acpi_probe);
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

