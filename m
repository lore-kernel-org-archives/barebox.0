Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NUdrz-0007Gj-6b
	for barebox@lists.infradead.org; Tue, 12 Jan 2010 10:21:03 +0000
Received: from octopus.hi.pengutronix.de ([2001:6f8:1178:2:215:17ff:fe12:23b0])
	by metis.ext.pengutronix.de with esmtp (Exim 4.69)
	(envelope-from <jbe@pengutronix.de>) id 1NUdrq-0006Vl-5h
	for barebox@lists.infradead.org; Tue, 12 Jan 2010 11:20:54 +0100
Received: from jbe by octopus.hi.pengutronix.de with local (Exim 4.69)
	(envelope-from <jbe@pengutronix.de>) id 1NUdrq-0006y5-3f
	for barebox@lists.infradead.org; Tue, 12 Jan 2010 11:20:54 +0100
Message-Id: <20100112102053.993635547@pengutronix.de>
References: <20100112101534.868276907@pengutronix.de>
Date: Tue, 12 Jan 2010 11:15:36 +0100
From: Juergen Beisert <jbe@pengutronix.de>
Content-Disposition: inline; filename=consider_code_type.diff
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
Subject: [PATCHv2 02/14] Consider real and protected mode in the dump file
To: barebox@lists.infradead.org

On x86 'objdump' does not know which parts of the image are 16 bit code and
32 bit. As the default is 32 bit, it will output garbage from the 16 bit parts
(due to 16/32 bit ops are sharing the same opcodes).

Signed-off-by: Juergen Beisert <jbe@pengutronix.de>

---
 Makefile |   23 +++++++++++++++++++++++
 1 file changed, 23 insertions(+)

Index: barebox-2009.12.0/Makefile
===================================================================
--- barebox-2009.12.0.orig/Makefile
+++ barebox-2009.12.0/Makefile
@@ -643,7 +643,30 @@ endef
 
 barebox.bin: barebox
 	$(Q)$(OBJCOPY) -O binary barebox barebox.bin
+ifdef CONFIG_X86
+ifdef CONFIG_X86_HDBOOT
+	@echo "-------------------------------------------------" > barebox.S
+	@echo " * MBR content" >> barebox.S
+	$(Q)$(OBJDUMP) -j .bootsector -mi8086 -d barebox >> barebox.S
+	@echo "-------------------------------------------------" >> barebox.S
+	@echo " * Boot loader content" >> barebox.S
+	$(Q)$(OBJDUMP) -j .bootstrapping -mi8086 -d barebox >> barebox.S
+endif
+	@echo "-------------------------------------------------" >> barebox.S
+	@echo " * Regular Text content" >> barebox.S
+	$(Q)$(OBJDUMP) -j .text -d barebox >> barebox.S
+	@echo "-------------------------------------------------" >> barebox.S
+	@echo " * Regular Data content" >> barebox.S
+	$(Q)$(OBJDUMP) -j .data -d barebox >> barebox.S
+	@echo "-------------------------------------------------" >> barebox.S
+	@echo " * Commands content" >> barebox.S
+	$(Q)$(OBJDUMP) -j .barebox_cmd -d barebox >> barebox.S
+	@echo "-------------------------------------------------" >> barebox.S
+	@echo " * Init Calls content" >> barebox.S
+	$(Q)$(OBJDUMP) -j .barebox_initcalls -d barebox >> barebox.S
+else
 	$(Q)$(OBJDUMP) -d barebox > barebox.S
+endif
 
 # barebox image
 barebox: $(barebox-lds) $(barebox-head) $(barebox-common) $(kallsyms.o) FORCE

-- 

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
