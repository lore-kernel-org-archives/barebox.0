Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ghSQ2-0003VU-RV
 for barebox@lists.infradead.org; Thu, 10 Jan 2019 04:58:28 +0000
Received: by mail-pf1-x444.google.com with SMTP id b85so4757658pfc.3
 for <barebox@lists.infradead.org>; Wed, 09 Jan 2019 20:58:14 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed,  9 Jan 2019 20:57:35 -0800
Message-Id: <20190110045739.19399-18-andrew.smirnov@gmail.com>
In-Reply-To: <20190110045739.19399-1-andrew.smirnov@gmail.com>
References: <20190110045739.19399-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
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
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 17/21] PCI: Drop "rom_address" from struct pci_dev
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

This field is not being used in Barebox. Drop it.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/pci/pci.c   | 7 -------
 include/linux/pci.h | 1 -
 2 files changed, 8 deletions(-)

diff --git a/drivers/pci/pci.c b/drivers/pci/pci.c
index c34b918453..12f438d3ff 100644
--- a/drivers/pci/pci.c
+++ b/drivers/pci/pci.c
@@ -404,13 +404,6 @@ static unsigned int pci_scan_bus(struct pci_bus *bus)
 			if (class == PCI_CLASS_BRIDGE_PCI)
 				goto bad;
 
-			/*
-			 * read base address registers, again pcibios_fixup() can
-			 * tweak these
-			 */
-			pci_read_config_dword(dev, PCI_ROM_ADDRESS, &l);
-			dev->rom_address = (l == 0xffffffff) ? 0 : l;
-
 			setup_device(dev, 6);
 			break;
 		case PCI_HEADER_TYPE_BRIDGE:
diff --git a/include/linux/pci.h b/include/linux/pci.h
index b609a1330b..2c7acbdda9 100644
--- a/include/linux/pci.h
+++ b/include/linux/pci.h
@@ -112,7 +112,6 @@ struct pci_dev {
 	 * pcibios_fixup() as necessary.
 	 */
 	unsigned long	base_address[6];
-	unsigned long	rom_address;
 };
 #define	to_pci_dev(dev) container_of(dev, struct pci_dev, dev)
 
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
