Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1e2ai3-0004I7-IL
 for barebox@lists.infradead.org; Thu, 12 Oct 2017 10:27:25 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7]
 helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.84_2)
 (envelope-from <l.stach@pengutronix.de>) id 1e2ahe-0003Lx-N4
 for barebox@lists.infradead.org; Thu, 12 Oct 2017 12:26:58 +0200
From: Lucas Stach <l.stach@pengutronix.de>
Date: Thu, 12 Oct 2017 12:26:58 +0200
Message-Id: <20171012102658.17104-12-l.stach@pengutronix.de>
In-Reply-To: <20171012102658.17104-1-l.stach@pengutronix.de>
References: <20171012102658.17104-1-l.stach@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH v2 12/12] ARM: vexpress: add fixup handler for 'virtio,
 mmio' devices
To: barebox@lists.infradead.org

From: Michael Olbrich <m.olbrich@pengutronix.de>

Qemu adds 'virtio,mmio' nodes to the device tree. Before passing it to the
bootloader or the Linux kernel. This fixup handler copies these nodes to
the new device tree.

Signed-off-by: Michael Olbrich <m.olbrich@pengutronix.de>
Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/boards/vexpress/init.c | 29 +++++++++++++++++++++++++++++
 1 file changed, 29 insertions(+)

diff --git a/arch/arm/boards/vexpress/init.c b/arch/arm/boards/vexpress/init.c
index 1bbc8c347638..946385393f44 100644
--- a/arch/arm/boards/vexpress/init.c
+++ b/arch/arm/boards/vexpress/init.c
@@ -45,3 +45,32 @@ static int vexpress_core_init(void)
 	return 0;
 }
 postcore_initcall(vexpress_core_init);
+
+static int of_fixup_virtio_mmio(struct device_node *root, void *unused)
+{
+	struct device_node *barebox_root, *np, *parent;
+
+	barebox_root = of_get_root_node();
+	if (root == barebox_root)
+		return 0;
+
+	for_each_compatible_node_from(np, barebox_root, NULL, "virtio,mmio") {
+		if (of_get_parent(np) == barebox_root)
+			parent = root;
+		else
+			parent = of_find_node_by_path_from(root,
+							   of_get_parent(np)->full_name);
+		if (!parent)
+			return -EINVAL;
+
+		of_copy_node(parent, np);
+	}
+
+	return 0;
+}
+
+static int of_register_virtio_mmio_fixup(void)
+{
+	return of_register_fixup(of_fixup_virtio_mmio, NULL);
+}
+late_initcall(of_register_virtio_mmio_fixup);
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
