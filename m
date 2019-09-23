Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from magratgarlick.emantor.de ([78.46.208.201])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCJZv-0001vE-Fp
 for barebox@lists.infradead.org; Mon, 23 Sep 2019 08:20:17 +0000
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Date: Mon, 23 Sep 2019 10:19:02 +0200
Message-Id: <20190923081901.61830-1-r.czerwinski@pengutronix.de>
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
Subject: [PATCH v2] Doc: i.MX: Document image structure for i.MX
To: barebox@lists.infradead.org
Cc: Rouven Czerwinski <r.czerwinski@pengutronix.de>

Document the image and load structure for i.MX6 and i.MX8MQ.

Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
---
v2:
- mention that i>MX6 setup for most boards, but note that some boards may require new implementations
- change sd card to boot media

 Documentation/boards/imx.rst | 73 ++++++++++++++++++++++++++++++++++++
 1 file changed, 73 insertions(+)

diff --git a/Documentation/boards/imx.rst b/Documentation/boards/imx.rst
index 71cc6bb09a..8fe0a2828d 100644
--- a/Documentation/boards/imx.rst
+++ b/Documentation/boards/imx.rst
@@ -142,6 +142,79 @@ It must be included in the board's flash header:
 
 Analogous to HABv4 options and a template exist for HABv3.
 
+Secure Boot on i.MX6
+~~~~~~~~~~~~~~~~~~~~
+
+For most boards, the secure boot process on i.MX6 consist of the following image
+constellation::
+
+    0x0 +---------------------------------+
+        | Barebox Header                  |
+  0x400 +---------------------------------+       -
+        | i.MX IVT Header                 |       |
+        | Boot Data                       +--+    |
+        | CSF Pointer                     +--|-+  | Signed Area
+        +---------------------------------+  | |  |
+        | Device Configuration Data (DCD) |  | |  |
+ 0x1000 +---------------------------------+  | |  |
+        | Barebox Prebootloader (PBL)     |<-+ |  |
+        +---------------------------------+    |  |
+        | Piggydata (Main Barebox Binary) |    |  |
+        +---------------------------------+    |  -
+        | Command Sequence File (CSF)     |<---+
+        +---------------------------------+
+
+Here the Command Sequence File signs the complete Header, PBL and piggy data
+file. This ensures that the whole barebox binary is authenticated. This is
+possible since the DDR RAM is configured using the DCD and the whole DDR memory
+area can be used to load data onto the device for authentication.
+The boot ROM loads the CSF area and barebox into memory and uses the CSF to
+verify the complete barebox binary.
+
+Boards which do require a boot via SRAM, need changes akin to the implementation
+for i.MX8MQ described in the next chapter.
+
+Secure Boot on i.MX8MQ
+~~~~~~~~~~~~~~~~~~~~~~
+
+For i.MX8MQ the image has the following design::
+
+    0x0 +---------------------------------+
+        | Barebox Header                  |
+        +---------------------------------+
+        | i.MX IVT Header                 |
+        | HDMI Firmware (Signed by NXP)   |
+        +---------------------------------+        -
+        | i.MX IVT Header                 |        |
+        | Boot Data                       +--+     |
+        | CSF Pointer                     +--|-+   |
+        +---------------------------------+  | |   | Signed Area
+        | Device Configuration Data (DCD) |  | |   |
+        +---------------------------------+  | |   |
+        | Barebox Prebootloader (PBL)     |<-+ |   |
+        | Piggydata Hash (SHA256)         +----|-+ |
+        +---------------------------------+    | | -
+        | Command Sequence File (CSF)     |<---+ |
+        +---------------------------------+      | -
+        | Piggydata (Main Barebox Binary) |<-----+ | Hashed Area
+        +---------------------------------+        -
+
+In contrast to i.MX6, for the i.MX8MQ the piggydata can not be signed together
+with the PBL binary. The DDR memory is initialized during the start of the PBL,
+previous to this no access to the DDR memory is possible. Since the Tightly
+Coupled Memory used for early startup on i.MX8MQ has only 256Kib, the whole
+barebox can't be loaded and verified at once, since the complete barebox with
+firmware has a size of ~500Kib.
+
+The bootrom loads the HDMI firmware unconditionally, since it is signed by NXP.
+Afterwards the Prebootloader (PBL) is loaded into SRAM and the bootrom proceeds
+to verify the PBL according to the Command Sequence File (CSF). The verified
+PBL initializes the ARM Trusted Firmware (TF-A) and DDR RAM. It subsequently
+loads the piggydata from the boot media and calculates the sha256sum of the
+piggydata. This is compared to the sha256sum built into the PBL during compile
+time, the PBL will only continue to boot if the sha256sum matches the builtin
+sha256sum.
+
 Using GPT on i.MX
 ^^^^^^^^^^^^^^^^^
 
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
