Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from tango.tkos.co.il ([62.219.50.35])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Oftg1-0007ky-Eb
	for barebox@lists.infradead.org; Mon, 02 Aug 2010 11:59:30 +0000
From: Baruch Siach <baruch@tkos.co.il>
Date: Mon,  2 Aug 2010 14:58:51 +0300
Message-Id: <531234713e1c3de945df03afb0a1dc96165bea22.1280749932.git.baruch@tkos.co.il>
In-Reply-To: <cover.1280749932.git.baruch@tkos.co.il>
References: <cover.1280749932.git.baruch@tkos.co.il>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 1/3] arm: add support for the serial ATAG
To: barebox@lists.infradead.org

Signed-off-by: Baruch Siach <baruch@tkos.co.il>
---
 arch/arm/include/asm/armlinux.h |    4 ++++
 arch/arm/lib/armlinux.c         |   19 +++++++++++++++++++
 2 files changed, 23 insertions(+), 0 deletions(-)

diff --git a/arch/arm/include/asm/armlinux.h b/arch/arm/include/asm/armlinux.h
index f4104fb..a92d4c1 100644
--- a/arch/arm/include/asm/armlinux.h
+++ b/arch/arm/include/asm/armlinux.h
@@ -7,6 +7,7 @@ void armlinux_set_bootparams(void *params);
 void armlinux_set_architecture(int architecture);
 void armlinux_add_dram(struct device_d *dev);
 void armlinux_set_revision(unsigned int);
+void armlinux_set_serial(u64);
 #else
 static inline void armlinux_set_bootparams(void *params)
 {
@@ -24,6 +25,9 @@ static inline void armlinux_set_revision(unsigned int)
 {
 }
 
+void armlinux_set_serial(u64)
+{
+}
 #endif
 
 #endif /* __ARCH_ARMLINUX_H */
diff --git a/arch/arm/lib/armlinux.c b/arch/arm/lib/armlinux.c
index 17ae057..040fd34 100644
--- a/arch/arm/lib/armlinux.c
+++ b/arch/arm/lib/armlinux.c
@@ -46,6 +46,7 @@ static int armlinux_architecture = 0;
 static void *armlinux_bootparams = NULL;
 
 static unsigned int system_rev;
+static u64 system_serial;
 
 static void setup_start_tag(void)
 {
@@ -121,6 +122,19 @@ static void setup_revision_tag(void)
 	}
 }
 
+static void setup_serial_tag(void)
+{
+	if (system_serial) {
+		params->hdr.tag = ATAG_SERIAL;
+		params->hdr.size = tag_size(tag_serialnr);
+
+		params->u.serialnr.low  = system_serial & 0xffffffff;
+		params->u.serialnr.high = system_serial >> 32;
+
+		params = tag_next(params);
+	}
+}
+
 #if 0
 static void setup_initrd_tag(ulong initrd_start, ulong initrd_end)
 {
@@ -155,6 +169,7 @@ static void setup_tags(void)
 		setup_initrd_tag (initrd_start, initrd_end);
 #endif
 	setup_revision_tag();
+	setup_serial_tag();
 	setup_end_tag();
 
 	printf("commandline: %s\n"
@@ -186,6 +201,10 @@ void armlinux_set_revision(unsigned int rev)
 	system_rev = rev;
 }
 
+void armlinux_set_serial(u64 serial)
+{
+	system_serial = serial;
+}
 
 #ifdef CONFIG_CMD_BOOTM
 int do_bootm_linux(struct image_data *data)
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
