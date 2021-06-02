Delivery-date: Wed, 02 Jun 2021 16:39:52 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1loS2C-00041h-9D
	for lore@lore.pengutronix.de; Wed, 02 Jun 2021 16:39:52 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1loS26-0008GD-1l
	for lore@pengutronix.de; Wed, 02 Jun 2021 16:39:52 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wWdxDlUimRzLxVj6J3T+57XUQqXFtZOd3XG3vK9JHss=; b=b4/BveLUkXP5Bm
	P+Ocykozmo2r8/mIR7SxWX5ZwwNHA8G2pUd8Z2htWJgc2n/R7Xm/l1OgoY3DhtdCgGPLG6OxxX+ch
	lUVC53LcD8lNno/vfEuo0V3eaEvTxh9lfqy1+JtzcWyVgzOL3zvcbX6Ml2dldTklgmqNEtYPbxcbT
	jp+COAWlxKvH7Upe4ENvLnKsIfbkJvOGbtNws5xb6uHWZI3nKb3AUgqmWEP8niBG59ZWTfe94aFLL
	ggkVOyaX4hJeMkt5d7xxwiCO3ix3Na4Mp8TdWyIX7LqWOqAhESiiK5BEHyyfEnNhLYWBzqh9U76Rj
	VdRBQhAiSVE6yPEYJYNw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1loS0P-004cQh-Jh; Wed, 02 Jun 2021 14:38:01 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1loRxY-004ayD-V3
 for barebox@lists.infradead.org; Wed, 02 Jun 2021 14:35:11 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1loRxW-0006tP-Gx; Wed, 02 Jun 2021 16:35:02 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1loRxV-0006hT-ME; Wed, 02 Jun 2021 16:35:01 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  2 Jun 2021 16:34:44 +0200
Message-Id: <20210602143453.23097-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210602143453.23097-1-a.fatoum@pengutronix.de>
References: <20210602143453.23097-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210602_073505_229049_0BF0A67C 
X-CRM114-Status: GOOD (  11.83  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v3 04/13] MIPS: qemu-malta: generate swapped image as part of
 multi-image build
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Having to manually swap the words in the MIPS Malta image for QEMU
little endian emulation is annoying.

Have the multi-image build for Malta generate a second .swapped
image that can be readily used if needed.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Documentation/boards/mips/qemu-malta.rst | 16 ++++------------
 images/.gitignore                        |  1 +
 images/Makefile                          |  2 +-
 images/Makefile.malta                    | 10 +++++++++-
 4 files changed, 15 insertions(+), 14 deletions(-)

diff --git a/Documentation/boards/mips/qemu-malta.rst b/Documentation/boards/mips/qemu-malta.rst
index e188ae8c642a..fd37d5edb229 100644
--- a/Documentation/boards/mips/qemu-malta.rst
+++ b/Documentation/boards/mips/qemu-malta.rst
@@ -10,31 +10,23 @@ QEMU run string:
 
   qemu-system-mips -nodefaults -M malta -m 256 \
       -device VGA -serial stdio -monitor null \
-      -bios barebox-flash-image
+      -bios ./images/barebox-qemu-malta.img
 
 
 Little-endian mode
 ------------------
 
-Running little-endian Malta is a bit tricky.
 In little-endian mode the 32bit words in the boot flash image are swapped,
 a neat trick which allows bi-endian firmware.
 
-You have to swap words of ``zbarebox.bin`` image, e.g.:
-
-.. code-block:: sh
-
-  echo arch/mips/pbl/zbarebox.bin \
-      | cpio --create \
-      | cpio --extract --swap --unconditional
-
-QEMU run string:
+The barebox build generates a second ``./images/barebox-qemu-malta.img.swapped``
+image that can be used in this case, e.g.:
 
 .. code-block:: sh
 
   qemu-system-mipsel -nodefaults -M malta -m 256 \
       -device VGA -serial stdio -monitor null \
-      -bios barebox-flash-image
+      -bios ./images/barebox-qemu-malta.img.swapped
 
 
 Using GXemul
diff --git a/images/.gitignore b/images/.gitignore
index eafdb44b5bdd..3a9a77dad16e 100644
--- a/images/.gitignore
+++ b/images/.gitignore
@@ -32,3 +32,4 @@ barebox.sum
 *.mvebu1img
 *.stm32
 *.nmon
+*.swapped
diff --git a/images/Makefile b/images/Makefile
index c185982c17ed..cc330d957597 100644
--- a/images/Makefile
+++ b/images/Makefile
@@ -218,5 +218,5 @@ $(flash-list): $(image-y-path)
 clean-files := *.pbl *.pblb *.map start_*.imximg *.img barebox.z start_*.kwbimg \
 	start_*.kwbuartimg *.socfpgaimg *.mlo *.t20img *.t20img.cfg *.t30img \
 	*.t30img.cfg *.t124img *.t124img.cfg *.mlospi *.mlo *.mxsbs *.mxssd \
-	start_*.simximg start_*.usimximg *.zynqimg *.image
+	start_*.simximg start_*.usimximg *.zynqimg *.image *.swapped
 clean-files += pbl.lds
diff --git a/images/Makefile.malta b/images/Makefile.malta
index 5739ec464092..96d7b86b1187 100644
--- a/images/Makefile.malta
+++ b/images/Makefile.malta
@@ -1,3 +1,11 @@
+quiet_cmd_bswap32_image = BSWAP4  $@
+      cmd_bswap32_image = cp $< $@ && \
+			  truncate -s %4 $@ && \
+			  objcopy -I binary --reverse-byte=4 $@
+
+$(obj)/%.img.swapped: $(obj)/%.img FORCE
+	$(call if_changed,bswap32_image)
+
 pblb-$(CONFIG_BOARD_QEMU_MALTA) += start_qemu_malta
 FILE_barebox-qemu-malta.img = start_qemu_malta.pblb
-image-$(CONFIG_BOARD_QEMU_MALTA) += barebox-qemu-malta.img
+image-$(CONFIG_BOARD_QEMU_MALTA) += barebox-qemu-malta.img barebox-qemu-malta.img.swapped
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

