Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1ctqbS-0008Fe-Ck
 for barebox@lists.infradead.org; Fri, 31 Mar 2017 07:04:15 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 31 Mar 2017 09:03:05 +0200
Message-Id: <20170331070346.26878-2-s.hauer@pengutronix.de>
In-Reply-To: <20170331070346.26878-1-s.hauer@pengutronix.de>
References: <20170331070346.26878-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 01/42] state: Make pointing to the backend using a phandle the
 only supported method
To: Barebox List <barebox@lists.infradead.org>

All other methods are broken for some time already: When starting the
kernel the state code rewrites the state node in the device tree and
replaced the "backend" property with a phandle - even when the target
can't be described as a phandle. Since using phandles is the nicest way
to point to the storage device anyway remove the other methods.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 .../devicetree/bindings/barebox/barebox,state.rst  | 27 ++++++++++++++++------
 common/state/state.c                               | 21 ++++++++---------
 2 files changed, 29 insertions(+), 19 deletions(-)

diff --git a/Documentation/devicetree/bindings/barebox/barebox,state.rst b/Documentation/devicetree/bindings/barebox/barebox,state.rst
index 438cc434a2..e9daa65f1a 100644
--- a/Documentation/devicetree/bindings/barebox/barebox,state.rst
+++ b/Documentation/devicetree/bindings/barebox/barebox,state.rst
@@ -29,7 +29,8 @@ Required properties:
 
 * ``compatible``: should be ``barebox,state``;
 * ``magic``: A 32bit number used as a magic to identify the state
-* ``backend``: describes where the data for this state is stored
+* ``backend``: contains a phandle to the device/partition which holds the
+  actual state data.
 * ``backend-type``: should be ``raw`` or ``dtb``.
 
 Optional properties:
@@ -77,19 +78,31 @@ Example::
   	magic = <0x27031977>;
   	compatible = "barebox,state";
   	backend-type = "raw";
-  	backend = &eeprom, "partname:state";
+  	backend = &state_part;
 
   	foo {
-		reg = <0x00 0x4>;
-		type = "uint32";
+  		reg = <0x00 0x4>;
+  		type = "uint32";
   		default = <0x0>;
   	};
 
   	bar {
-		reg = <0x10 0x4>;
-		type = "enum32";
+  		reg = <0x10 0x4>;
+  		type = "enum32";
   		names = "baz", "qux";
-		default = <1>;
+  		default = <1>;
+  	};
+  };
+
+  &nand_flash {
+  	partitions {
+  		compatible = "fixed-partitions";
+  		#address-cells = <1>;
+  		#size-cells = <1>;
+  		state_part: state@10000 {
+  			label = "state";
+  			reg = <0x10000 0x10000>;
+  		};
   	};
   };
 
diff --git a/common/state/state.c b/common/state/state.c
index 02bb1bb24a..6e6b3a6f08 100644
--- a/common/state/state.c
+++ b/common/state/state.c
@@ -452,19 +452,16 @@ struct state *state_new_from_node(struct device_node *node, char *path,
 	}
 
 	if (!path) {
-		/* guess if of_path is a path, not a phandle */
-		if (of_path[0] == '/' && len > 1) {
-			ret = of_find_path(node, "backend", &path, 0);
-		} else {
-			struct device_node *partition_node;
-
-			partition_node = of_parse_phandle(node, "backend", 0);
-			if (!partition_node)
-				goto out_release_state;
-
-			of_path = partition_node->full_name;
-			ret = of_find_path_by_node(partition_node, &path, 0);
+		struct device_node *partition_node;
+
+		partition_node = of_parse_phandle(node, "backend", 0);
+		if (!partition_node) {
+			dev_err(&state->dev, "Cannot resolve \"backend\" phandle\n");
+			goto out_release_state;
 		}
+
+		of_path = partition_node->full_name;
+		ret = of_find_path_by_node(partition_node, &path, 0);
 		if (ret) {
 			if (ret != -EPROBE_DEFER)
 				dev_err(&state->dev, "state failed to parse path to backend: %s\n",
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
