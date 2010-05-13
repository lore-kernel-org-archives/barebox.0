Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pv0-f177.google.com ([74.125.83.177])
	by bombadil.infradead.org with esmtp (Exim 4.69 #1 (Red Hat Linux))
	id 1OCNvw-0003sb-0x
	for barebox@lists.infradead.org; Thu, 13 May 2010 02:13:56 +0000
Received: by pvc30 with SMTP id 30so470957pvc.36
	for <barebox@lists.infradead.org>; Wed, 12 May 2010 19:13:53 -0700 (PDT)
From: Marc Reilly <marc@cpdesign.com.au>
Date: Thu, 13 May 2010 12:46:57 +1000
Message-Id: <1273718822-16800-2-git-send-email-marc@cpdesign.com.au>
In-Reply-To: <1273718822-16800-1-git-send-email-marc@cpdesign.com.au>
References: <1273718822-16800-1-git-send-email-marc@cpdesign.com.au>
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
Subject: [PATCH 1/6] arm: Add revision tag to boot parameters
To: barebox@lists.infradead.org

Revision info required for some boards at boot time.
Only adds if the system_rev has been set to non-zero.
---
 arch/arm/include/asm/armlinux.h |    6 ++++++
 arch/arm/lib/armlinux.c         |   23 +++++++++++++++++++++++
 2 files changed, 29 insertions(+), 0 deletions(-)

diff --git a/arch/arm/include/asm/armlinux.h b/arch/arm/include/asm/armlinux.h
index cfe57f4..f4104fb 100644
--- a/arch/arm/include/asm/armlinux.h
+++ b/arch/arm/include/asm/armlinux.h
@@ -6,6 +6,7 @@
 void armlinux_set_bootparams(void *params);
 void armlinux_set_architecture(int architecture);
 void armlinux_add_dram(struct device_d *dev);
+void armlinux_set_revision(unsigned int);
 #else
 static inline void armlinux_set_bootparams(void *params)
 {
@@ -18,6 +19,11 @@ static inline void armlinux_set_architecture(int architecture)
 static inline void armlinux_add_dram(struct device_d *dev)
 {
 }
+
+static inline void armlinux_set_revision(unsigned int)
+{
+}
+
 #endif
 
 #endif /* __ARCH_ARMLINUX_H */
diff --git a/arch/arm/lib/armlinux.c b/arch/arm/lib/armlinux.c
index 019c030..1c39045 100644
--- a/arch/arm/lib/armlinux.c
+++ b/arch/arm/lib/armlinux.c
@@ -44,6 +44,8 @@ static struct tag *params;
 static int armlinux_architecture = 0;
 static void *armlinux_bootparams = NULL;
 
+static unsigned int system_rev;
+
 static void setup_start_tag(void)
 {
 	params = (struct tag *)armlinux_bootparams;
@@ -106,6 +108,18 @@ static void setup_commandline_tag(const char *commandline)
 	params = tag_next(params);
 }
 
+static void setup_revision_tag(void)
+{
+	if( system_rev) {
+		params->hdr.tag = ATAG_REVISION;
+		params->hdr.size = tag_size(tag_revision);
+		
+		params->u.revision.rev = system_rev;
+		
+		params = tag_next(params);
+	}
+}
+
 #if 0
 static void setup_initrd_tag(ulong initrd_start, ulong initrd_end)
 {
@@ -147,6 +161,12 @@ void armlinux_add_dram(struct device_d *dev)
 	list_add_tail(&mem->list, &memory_list);
 }
 
+void armlinux_set_revision(unsigned int rev)
+{
+	system_rev = rev;
+}
+
+
 #ifdef CONFIG_CMD_BOOTM
 int do_bootm_linux(struct image_data *data)
 {
@@ -184,6 +204,7 @@ int do_bootm_linux(struct image_data *data)
 	if (initrd_start && initrd_end)
 		setup_initrd_tag (initrd_start, initrd_end);
 #endif
+	setup_revision_tag();
 	setup_end_tag();
 
 	if (relocate_image(data->os, (void *)ntohl(os_header->ih_load)))
@@ -281,6 +302,7 @@ static int do_bootz(struct command *cmdtp, int argc, char *argv[])
 	if (initrd_start && initrd_end)
 		setup_initrd_tag (initrd_start, initrd_end);
 #endif
+	setup_revision_tag();
 	setup_end_tag();
 
 	shutdown_barebox();
@@ -323,6 +345,7 @@ static int do_bootu(struct command *cmdtp, int argc, char *argv[])
 	setup_start_tag();
 	setup_memory_tags();
 	setup_commandline_tag(commandline);
+	setup_revision_tag();
 	setup_end_tag();
 
 	shutdown_barebox();
-- 
1.6.4.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
