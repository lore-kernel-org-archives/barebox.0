Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1eOPP8-0007CD-0Z
 for barebox@lists.infradead.org; Mon, 11 Dec 2017 14:50:08 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 11 Dec 2017 15:49:36 +0100
Message-Id: <20171211144936.10443-1-s.hauer@pengutronix.de>
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
Subject: [PATCH] Documentation: state: mention SD/eMMC devices
To: Barebox List <barebox@lists.infradead.org>

The state framework also has support for SD/eMMC devices, so mention
them in the documentation.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 Documentation/user/state.rst | 46 ++++++++++++++++++++++++++++++++++++++++++--
 1 file changed, 44 insertions(+), 2 deletions(-)

diff --git a/Documentation/user/state.rst b/Documentation/user/state.rst
index 7d6c5770d5..af55d0837d 100644
--- a/Documentation/user/state.rst
+++ b/Documentation/user/state.rst
@@ -39,8 +39,8 @@ Backends (e.g. Supported Memory Types)
 
 Some non-volatile memory is need for storing a *state* variable set:
 
-- all kinds of NOR flash memories
-- all kinds of NAND flash memories
+- Disk like devices: SD, (e)MMC, ATA
+- all kinds of NAND and NOR flash memories (mtd)
 - MRAM
 - EEPROM
 - all kind of SRAMs (backup battery assumed)
@@ -531,6 +531,48 @@ content, its backend-type and *state* variable layout.
 		};
 	};
 
+SD/eMMC and ATA
+###############
+
+The following devicetree node entry defines some kind of SD/eMMC memory and
+a partition at a specific offset inside it to be used as the backend for the
+*state* variable set. Note that currently there is no support for on-disk
+partition tables. Instead, a ofpart partition description must be used. You
+have to make sure that this partition does not conflict with any other partiion
+in the partition table.
+
+.. code-block:: text
+
+	backend_state_sd: part@100000 {
+		label = "state";
+		reg = <0x100000 0x20000>;
+	};
+
+With this 'backend' definition its possible to define the *state* variable set
+content, its backend-type and *state* variable layout.
+
+.. code-block:: text
+
+	aliases {
+		state = &state_sd;
+	};
+
+	state_sd: state_memory {
+		#address-cells = <1>;
+		#size-cells = <1>;
+		compatible = "barebox,state";
+		magic = <0xab67421f>;
+		backend-type = "raw";
+		backend = <&backend_state_sd>;
+		backend-stridesize = <0x40>;
+
+		variable {
+			reg = <0x0 0x1>;
+			type ="uint8";
+			default = <0x1>;
+		};
+	};
+
 SRAM
 ####
 
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
