Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iekIV-0000es-NQ
 for barebox@lists.infradead.org; Tue, 10 Dec 2019 18:31:50 +0000
From: Roland Hieber <rhi@pengutronix.de>
Date: Tue, 10 Dec 2019 19:31:40 +0100
Message-Id: <20191210183140.11736-1-rhi@pengutronix.de>
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
Subject: [PATCH] of: demote most debug output to loglevel 8 (vdebug)
To: Barebox Mailing List <barebox@lists.infradead.org>
Cc: Roland Hieber <rhi@pengutronix.de>

Loglevel 7 (debug) is often useful to get barebox running on new
hardware; however, the heavy output of "OF:" messages makes most
boards take several minutes to boot to a prompt, printing things which
are probably interesting when debugging OF code itself, but not very
helpful otherwise. Degrade most of the message to loglevel 8 (vdebug).

Signed-off-by: Roland Hieber <rhi@pengutronix.de>

---
For illustration, here is the output before this patch with level 7 for
a single OF node:

    of_platform_device_create: register device 44e00000.target-module@0.of, io=0x44e00000
    register_device: 44e00000.target-module@0.of
       create child: /ocp/interconnect@44c00000/segment@200000/target-module@3000
       create child: /ocp/interconnect@44c00000/segment@200000/target-module@5000
       create child: /ocp/interconnect@44c00000/segment@200000/target-module@7000
    OF: ** translation for device /ocp/interconnect@44c00000/segment@200000/target-module@7000 **
    OF: bus is default (na=1, ns=1) on /ocp/interconnect@44c00000/segment@200000
    OF: parent bus is default (na=1, ns=1) on /ocp/interconnect@44c00000
    OF: walking ranges...
    OF: default map, cp=0, s=2000, da=7000
    OF: default map, cp=2000, s=1000, da=7000
    OF: default map, cp=3000, s=1000, da=7000
    OF: default map, cp=4000, s=1000, da=7000
    OF: default map, cp=5000, s=1000, da=7000
    OF: default map, cp=6000, s=1000, da=7000
    OF: default map, cp=7000, s=1000, da=7000
    OF: with offset: 0
    OF: parent bus is default (na=1, ns=1) on /ocp
    OF: walking ranges...
    OF: default map, cp=0, s=100000, da=207000
    OF: default map, cp=100000, s=100000, da=207000
    OF: default map, cp=200000, s=100000, da=207000
    OF: with offset: 7000
    OF: parent bus is default (na=1, ns=1) on
    OF: empty ranges; 1:1 translation
    OF: with offset: 44e07000
    OF: reached root node
    OF: ** translation for device /ocp/interconnect@44c00000/segment@200000/target-module@7000 **
    OF: bus is default (na=1, ns=1) on /ocp/interconnect@44c00000/segment@200000
    OF: parent bus is default (na=1, ns=1) on /ocp/interconnect@44c00000
    OF: walking ranges...
    OF: default map, cp=0, s=2000, da=7010
    OF: default map, cp=2000, s=1000, da=7010
    OF: default map, cp=3000, s=1000, da=7010
    OF: default map, cp=4000, s=1000, da=7010
    OF: default map, cp=5000, s=1000, da=7010
    OF: default map, cp=6000, s=1000, da=7010
    OF: default map, cp=7000, s=1000, da=7010
    OF: with offset: 10
    OF: parent bus is default (na=1, ns=1) on /ocp
    OF: walking ranges...
    OF: default map, cp=0, s=100000, da=207010
    OF: default map, cp=100000, s=100000, da=207010
    OF: default map, cp=200000, s=100000, da=207010
    OF: with offset: 7010
    OF: parent bus is default (na=1, ns=1) on
    OF: empty ranges; 1:1 translation
    OF: with offset: 44e07010
    OF: reached root node
    OF: ** translation for device /ocp/interconnect@44c00000/segment@200000/target-module@7000 **
    OF: bus is default (na=1, ns=1) on /ocp/interconnect@44c00000/segment@200000
    OF: parent bus is default (na=1, ns=1) on /ocp/interconnect@44c00000
    OF: walking ranges...
    OF: default map, cp=0, s=2000, da=7114
    OF: default map, cp=2000, s=1000, da=7114
    OF: default map, cp=3000, s=1000, da=7114
    OF: default map, cp=4000, s=1000, da=7114
    OF: default map, cp=5000, s=1000, da=7114
    OF: default map, cp=6000, s=1000, da=7114
    OF: default map, cp=7000, s=1000, da=7114
    OF: with offset: 114
    OF: parent bus is default (na=1, ns=1) on /ocp
    OF: walking ranges...
    OF: default map, cp=0, s=100000, da=207114
    OF: default map, cp=100000, s=100000, da=207114
    OF: default map, cp=200000, s=100000, da=207114
    OF: with offset: 7114
    OF: parent bus is default (na=1, ns=1) on
    OF: empty ranges; 1:1 translation
    OF: with offset: 44e07114
    OF: reached root node
    OF: ** translation for device /ocp/interconnect@44c00000/segment@200000/target-module@7000 **
    OF: bus is default (na=1, ns=1) on /ocp/interconnect@44c00000/segment@200000
    OF: parent bus is default (na=1, ns=1) on /ocp/interconnect@44c00000
    OF: walking ranges...
    OF: default map, cp=0, s=2000, da=7000
    OF: default map, cp=2000, s=1000, da=7000
    OF: default map, cp=3000, s=1000, da=7000
    OF: default map, cp=4000, s=1000, da=7000
    OF: default map, cp=5000, s=1000, da=7000
    OF: default map, cp=6000, s=1000, da=7000
    OF: default map, cp=7000, s=1000, da=7000
    OF: with offset: 0
    OF: parent bus is default (na=1, ns=1) on /ocp
    OF: walking ranges...
    OF: default map, cp=0, s=100000, da=207000
    OF: default map, cp=100000, s=100000, da=207000
    OF: default map, cp=200000, s=100000, da=207000
    OF: with offset: 7000
    OF: parent bus is default (na=1, ns=1) on
    OF: empty ranges; 1:1 translation
    OF: with offset: 44e07000
    OF: reached root node
    OF: ** translation for device /ocp/interconnect@44c00000/segment@200000/target-module@7000 **
    OF: bus is default (na=1, ns=1) on /ocp/interconnect@44c00000/segment@200000
    OF: parent bus is default (na=1, ns=1) on /ocp/interconnect@44c00000
    OF: walking ranges...
    OF: default map, cp=0, s=2000, da=7010
    OF: default map, cp=2000, s=1000, da=7010
    OF: default map, cp=3000, s=1000, da=7010
    OF: default map, cp=4000, s=1000, da=7010
    OF: default map, cp=5000, s=1000, da=7010
    OF: default map, cp=6000, s=1000, da=7010
    OF: default map, cp=7000, s=1000, da=7010
    OF: with offset: 10
    OF: parent bus is default (na=1, ns=1) on /ocp
    OF: walking ranges...
    OF: default map, cp=0, s=100000, da=207010
    OF: default map, cp=100000, s=100000, da=207010
    OF: default map, cp=200000, s=100000, da=207010
    OF: with offset: 7010
    OF: parent bus is default (na=1, ns=1) on
    OF: empty ranges; 1:1 translation
    OF: with offset: 44e07010
    OF: reached root node
    OF: ** translation for device /ocp/interconnect@44c00000/segment@200000/target-module@7000 **
    OF: bus is default (na=1, ns=1) on /ocp/interconnect@44c00000/segment@200000
    OF: parent bus is default (na=1, ns=1) on /ocp/interconnect@44c00000
    OF: walking ranges...
    OF: default map, cp=0, s=2000, da=7114
    OF: default map, cp=2000, s=1000, da=7114
    OF: default map, cp=3000, s=1000, da=7114
    OF: default map, cp=4000, s=1000, da=7114
    OF: default map, cp=5000, s=1000, da=7114
    OF: default map, cp=6000, s=1000, da=7114
    OF: default map, cp=7000, s=1000, da=7114
    OF: with offset: 114
    OF: parent bus is default (na=1, ns=1) on /ocp
    OF: walking ranges...
    OF: default map, cp=0, s=100000, da=207114
    OF: default map, cp=100000, s=100000, da=207114
    OF: default map, cp=200000, s=100000, da=207114
    OF: with offset: 7114
    OF: parent bus is default (na=1, ns=1) on
    OF: empty ranges; 1:1 translation
    OF: with offset: 44e07114
    OF: reached root node
    OF: ** translation for device /ocp/interconnect@44c00000/segment@200000/target-module@7000 **
    OF: bus is default (na=1, ns=1) on /ocp/interconnect@44c00000/segment@200000
    OF: parent bus is default (na=1, ns=1) on /ocp/interconnect@44c00000
    OF: walking ranges...
    OF: default map, cp=0, s=2000, da=7000
    OF: default map, cp=2000, s=1000, da=7000
    OF: default map, cp=3000, s=1000, da=7000
    OF: default map, cp=4000, s=1000, da=7000
    OF: default map, cp=5000, s=1000, da=7000
    OF: default map, cp=6000, s=1000, da=7000
    OF: default map, cp=7000, s=1000, da=7000
    OF: with offset: 0
    OF: parent bus is default (na=1, ns=1) on /ocp
    OF: walking ranges...
    OF: default map, cp=0, s=100000, da=207000
    OF: default map, cp=100000, s=100000, da=207000
    OF: default map, cp=200000, s=100000, da=207000
    OF: with offset: 7000
    OF: parent bus is default (na=1, ns=1) on
    OF: empty ranges; 1:1 translation
    OF: with offset: 44e07000
    OF: reached root node

With this patch, this is now shortened to:

    of_platform_device_create: register device 44e00000.target-module@0.of, io=0x44e00000
    register_device: 44e00000.target-module@0.of
       create child: /ocp/interconnect@44c00000/segment@200000/target-module@3000
       create child: /ocp/interconnect@44c00000/segment@200000/target-module@5000
       create child: /ocp/interconnect@44c00000/segment@200000/target-module@7000

and with loglevel 8, it's default to the full version above.

---
 drivers/of/address.c | 24 ++++++++++++------------
 1 file changed, 12 insertions(+), 12 deletions(-)

diff --git a/drivers/of/address.c b/drivers/of/address.c
index 4e12522a0a75..007c5fd9d0f7 100644
--- a/drivers/of/address.c
+++ b/drivers/of/address.c
@@ -74,7 +74,7 @@ static u64 of_bus_default_map(__be32 *addr, const __be32 *range,
 	s  = of_read_number(range + na + pna, ns);
 	da = of_read_number(addr, na);
 
-	pr_debug("OF: default map, cp=%llx, s=%llx, da=%llx\n",
+	pr_vdebug("OF: default map, cp=%llx, s=%llx, da=%llx\n",
 		 (unsigned long long)cp, (unsigned long long)s,
 		 (unsigned long long)da);
 
@@ -164,7 +164,7 @@ static u64 of_bus_pci_map(__be32 *addr, const __be32 *range, int na, int ns,
 	s  = of_read_number(range + na + pna, ns);
 	da = of_read_number(addr + 1, na - 1);
 
-	pr_debug("OF: PCI map, cp=%llx, s=%llx, da=%llx\n",
+	pr_vdebug("OF: PCI map, cp=%llx, s=%llx, da=%llx\n",
 		 (unsigned long long)cp, (unsigned long long)s,
 		 (unsigned long long)da);
 
@@ -314,18 +314,18 @@ static int of_translate_one(struct device_node *parent, struct of_bus *bus,
 	ranges = of_get_property(parent, rprop, &rlen);
 #if !defined(CONFIG_PPC)
 	if (ranges == NULL) {
-		pr_debug("OF: no ranges; cannot translate\n");
+		pr_vdebug("OF: no ranges; cannot translate\n");
 		return 1;
 	}
 #endif /* !defined(CONFIG_PPC) */
 	if (ranges == NULL || rlen == 0) {
 		offset = of_read_number(addr, na);
 		memset(addr, 0, pna * 4);
-		pr_debug("OF: empty ranges; 1:1 translation\n");
+		pr_vdebug("OF: empty ranges; 1:1 translation\n");
 		goto finish;
 	}
 
-	pr_debug("OF: walking ranges...\n");
+	pr_vdebug("OF: walking ranges...\n");
 
 	/* Now walk through the ranges */
 	rlen /= 4;
@@ -336,14 +336,14 @@ static int of_translate_one(struct device_node *parent, struct of_bus *bus,
 			break;
 	}
 	if (offset == OF_BAD_ADDR) {
-		pr_debug("OF: not found !\n");
+		pr_vdebug("OF: not found !\n");
 		return 1;
 	}
 	memcpy(addr, ranges + na, 4 * pna);
 
  finish:
 	of_dump_addr("OF: parent translation for:", addr, pna);
-	pr_debug("OF: with offset: %llx\n", (unsigned long long)offset);
+	pr_vdebug("OF: with offset: %llx\n", (unsigned long long)offset);
 
 	/* Translate it into parent bus space */
 	return pbus->translate(addr, offset, pna);
@@ -368,7 +368,7 @@ static u64 __of_translate_address(struct device_node *dev,
 	int na, ns, pna, pns;
 	u64 result = OF_BAD_ADDR;
 
-	pr_debug("OF: ** translation for device %s **\n", dev->full_name);
+	pr_vdebug("OF: ** translation for device %s **\n", dev->full_name);
 
 	/* Get parent & match bus type */
 	parent = of_get_parent(dev);
@@ -379,13 +379,13 @@ static u64 __of_translate_address(struct device_node *dev,
 	/* Count address cells & copy address locally */
 	bus->count_cells(dev, &na, &ns);
 	if (!OF_CHECK_COUNTS(na, ns)) {
-		pr_debug("prom_parse: Bad cell count for %s\n",
+		pr_vdebug("prom_parse: Bad cell count for %s\n",
 			 dev->full_name);
 		return OF_BAD_ADDR;
 	}
 	memcpy(addr, in_addr, na * 4);
 
-	pr_debug("OF: bus is %s (na=%d, ns=%d) on %s\n",
+	pr_vdebug("OF: bus is %s (na=%d, ns=%d) on %s\n",
 	    bus->name, na, ns, parent->full_name);
 	of_dump_addr("OF: translating address:", addr, na);
 
@@ -397,7 +397,7 @@ static u64 __of_translate_address(struct device_node *dev,
 
 		/* If root, we have finished */
 		if (parent == NULL) {
-			pr_debug("OF: reached root node\n");
+			pr_vdebug("OF: reached root node\n");
 			result = of_read_number(addr, na);
 			break;
 		}
@@ -411,7 +411,7 @@ static u64 __of_translate_address(struct device_node *dev,
 			break;
 		}
 
-		pr_debug("OF: parent bus is %s (na=%d, ns=%d) on %s\n",
+		pr_vdebug("OF: parent bus is %s (na=%d, ns=%d) on %s\n",
 		    pbus->name, pna, pns, parent->full_name);
 
 		/* Apply bus translation */
-- 
2.24.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
