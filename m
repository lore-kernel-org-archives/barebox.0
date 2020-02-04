Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mailout05.rmx.de ([94.199.90.90])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyxu9-0008IY-Dx
 for barebox@lists.infradead.org; Tue, 04 Feb 2020 13:06:15 +0000
Received: from kdin02.retarus.com (kdin02.dmz1.retloc [172.19.17.49])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mailout05.rmx.de (Postfix) with ESMTPS id 48BlLd70l5z9xsR
 for <barebox@lists.infradead.org>; Tue,  4 Feb 2020 14:06:01 +0100 (CET)
Received: from ppmail.arri.de (unknown [217.111.95.7])
 (using TLSv1 with cipher AES128-SHA (128/128 bits))
 (No client certificate requested)
 by kdin02.retarus.com (Postfix) with ESMTPS id 48BlLd1K63z2TTM1
 for <barebox@lists.infradead.org>; Tue,  4 Feb 2020 14:06:01 +0100 (CET)
From: Christian Eggers <ceggers@arri.de>
Date: Tue, 4 Feb 2020 14:06:00 +0100
Message-ID: <21090636.oFDgJnQYPg@n95hx1g2>
In-Reply-To: <07ba5178-786b-d4c2-16c7-68102ca41462@pengutronix.de>
References: <12186927.ML1T7lbObL@n95hx1g2>
 <abe9cf07-d7b7-31fa-f881-14f179aa36ea@pengutronix.de>
 <07ba5178-786b-d4c2-16c7-68102ca41462@pengutronix.de>
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
Subject: Re: state framework, fixed-partitions, eeprom and linux
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

Dear Ahmad,

Am Montag, 3. Februar 2020, 18:47:29 CET schrieb Ahmad Fatoum:
> Fortunately, I was mistaken. The upstream bindings says that only objects
> matching "^.*@[0-9a-f]+$" should be considered for nvmem cells. a partitions
> node doesn't match this. So I'd instead suggest this:
> 
>     nvmem: core: don't consider subnodes not matching binding
> 
>     The nvmem cell binding applies to objects which match "^.*@[0-9a-f]+$",
>     but so far the driver has matched all objects and failed if they didn't
>     have the expected properties.
> 
>     The driver's behavior in this regard precludes future extension of
>     EEPROMs by child nodes other than nvmem and clashes with the barebox
>     bootloader binding that extends the fixed-partitions MTD binding to
>     EEPROMs.
> 
>     Solve this issue by checking whether the node name contains a @.
>     This still matches against node names like partitions@0,0, but this is
>     much less likely to cause future collisions.
> 
>     Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> 

I have a different approach, taken from the Linux MTD sources. Here the DT partitions are added as NVMEM cells. Is there any conceptual difference between "MTD partitions" and "NVMEM cells"? 

Are you able to bring one/both patches into Linux?

Regards
Christian

From 927f3aa9c4a64802f25ef2f292caa1dc951ce667 Mon Sep 17 00:00:00 2001
From: Christian Eggers <ceggers@arri.de>
Date: Tue, 4 Feb 2020 13:52:36 +0100
Subject: [PATCH] nvmem: core: Move OF cells to a dedicated dt node

In 5cfdedb7b9 ("mtd: ofpart: move ofpart partitions to a dedicated dt
node"), mtd introduced the separate "partitions" node as container for
the partitions of a MTD device.

This commit applies a similar behavior to NVMEM partitions/cells.

Signed-off-by: Christian Eggers <ceggers@arri.de>
---
 drivers/nvmem/core.c | 13 +++++++++++--
 1 file changed, 11 insertions(+), 2 deletions(-)

diff --git a/drivers/nvmem/core.c b/drivers/nvmem/core.c
index 057d1ff87d5d..3e93b82b96bd 100644
--- a/drivers/nvmem/core.c
+++ b/drivers/nvmem/core.c
@@ -287,7 +287,7 @@ nvmem_find_cell_by_name(struct nvmem_device *nvmem, const char *cell_id)
 
 static int nvmem_add_cells_from_of(struct nvmem_device *nvmem)
 {
-	struct device_node *parent, *child;
+	struct device_node *parent, *child, *ofpart_node;
 	struct device *dev = &nvmem->dev;
 	struct nvmem_cell *cell;
 	const __be32 *addr;
@@ -295,7 +295,16 @@ static int nvmem_add_cells_from_of(struct nvmem_device *nvmem)
 
 	parent = dev->of_node;
 
-	for_each_child_of_node(parent, child) {
+	ofpart_node = of_get_child_by_name(parent, "partitions");
+	if (!ofpart_node) {
+		/* Try to parse direct subnodes */
+		ofpart_node = parent;
+	} else if (!of_device_is_compatible(ofpart_node, "fixed-partitions")) {
+		/* The 'partitions' subnode might be used by another parser */
+		return 0;
+	}
+
+	for_each_child_of_node(ofpart_node, child) {
 		addr = of_get_property(child, "reg", &len);
 		if (!addr || (len < 2 * sizeof(u32))) {
 			dev_err(dev, "nvmem: invalid reg on %pOF\n", child);
-- 
Christian Eggers
Embedded software developer

Arnold & Richter Cine Technik GmbH & Co. Betriebs KG
Sitz: Muenchen - Registergericht: Amtsgericht Muenchen - Handelsregisternummer: HRA 57918
Persoenlich haftender Gesellschafter: Arnold & Richter Cine Technik GmbH
Sitz: Muenchen - Registergericht: Amtsgericht Muenchen - Handelsregisternummer: HRB 54477
Geschaeftsfuehrer: Dr. Michael Neuhaeuser; Stephan Schenk; Walter Trauninger; Markus Zeiler







_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
