Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1givZ6-0007ye-C8
 for barebox@lists.infradead.org; Mon, 14 Jan 2019 06:17:49 +0000
Received: by mail-pf1-x442.google.com with SMTP id c123so9863263pfb.0
 for <barebox@lists.infradead.org>; Sun, 13 Jan 2019 22:17:39 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sun, 13 Jan 2019 22:17:05 -0800
Message-Id: <20190114061709.13948-13-andrew.smirnov@gmail.com>
In-Reply-To: <20190114061709.13948-1-andrew.smirnov@gmail.com>
References: <20190114061709.13948-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v3 12/16] PCI: Drop "rom_address" from struct pci_dev
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>, Sam Ravnborg <sam@ravnborg.org>

This field is not being used in Barebox. Drop it.

Reviewed-by: Sam Ravnborg <sam@ravnborg.org>
Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/pci/pci.c   | 7 -------
 include/linux/pci.h | 1 -
 2 files changed, 8 deletions(-)

diff --git a/drivers/pci/pci.c b/drivers/pci/pci.c
index a52475e6ab..8d4d4224e6 100644
--- a/drivers/pci/pci.c
+++ b/drivers/pci/pci.c
@@ -407,13 +407,6 @@ static unsigned int pci_scan_bus(struct pci_bus *bus)
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
