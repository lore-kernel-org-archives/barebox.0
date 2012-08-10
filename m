Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SzvOX-0000MH-9N
 for barebox@lists.infradead.org; Fri, 10 Aug 2012 20:01:18 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 10 Aug 2012 22:01:03 +0200
Message-Id: <1344628865-32574-8-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1344628865-32574-1-git-send-email-s.hauer@pengutronix.de>
References: <1344628865-32574-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 7/9] ARM pbl: Fix zbarebox.S build
To: barebox@lists.infradead.org

zbarebox.S target did not work for pbl. Fix this.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/pbl/Makefile |    3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm/pbl/Makefile b/arch/arm/pbl/Makefile
index 143da8b..dc6ae7e 100644
--- a/arch/arm/pbl/Makefile
+++ b/arch/arm/pbl/Makefile
@@ -16,6 +16,9 @@ $(obj)/zbarebox.bin:	$(obj)/zbarebox FORCE
 	$(call cmd,check_file_size,$(CONFIG_BAREBOX_MAX_IMAGE_SIZE))
 	@echo '  Barebox: $@ is ready'
 
+quiet_cmd_disasm = DISASM  $@
+      cmd_disasm = $(OBJDUMP) -d $< > $@
+
 $(obj)/zbarebox.S: $(obj)/zbarebox FORCE
 	$(call if_changed,disasm)
 
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
