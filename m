Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 7.mo3.mail-out.ovh.net ([46.105.57.200]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RmMh9-0007tC-77
 for barebox@lists.infradead.org; Sun, 15 Jan 2012 09:48:12 +0000
Received: from mail617.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 59D3D1004289
 for <barebox@lists.infradead.org>; Sun, 15 Jan 2012 10:40:33 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sun, 15 Jan 2012 10:38:15 +0100
Message-Id: <1326620296-8076-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 1/2] add CONFIG_BAREBOX_MAX_SIZE to check if the size of
 barebox exceed the target size
To: barebox@lists.infradead.org

this will allow to detected silent oversize result

if 0x0 the size will not been checked

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 Makefile       |    8 ++++++++
 common/Kconfig |    8 ++++++++
 2 files changed, 16 insertions(+), 0 deletions(-)

diff --git a/Makefile b/Makefile
index d8e685e..eeb5b5d 100644
--- a/Makefile
+++ b/Makefile
@@ -659,6 +659,14 @@ OBJCOPYFLAGS_barebox.bin = -O binary
 
 barebox.bin: barebox FORCE
 	$(call if_changed,objcopy)
+	size=`stat -c%s $@`; \
+	max_size=`printf "%d" $(CONFIG_BAREBOX_MAX_SIZE)`; \
+	if [ $$max_size -lt $$size -a \
+	     $$max_size -ne 0 ] ; \
+	then \
+		echo "$@ size $$size > of the maximum size $$max_size"; \
+		exit 1 ; \
+	fi
 
 ifdef CONFIG_X86
 barebox.S: barebox
diff --git a/common/Kconfig b/common/Kconfig
index 382e591..a034686 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -104,6 +104,14 @@ config TEXT_BASE
 	help
 	  The Address barebox gets linked at.
 
+config BAREBOX_MAX_SIZE
+	prompt "Maximum size of barebox"
+	hex
+	default 0x0
+	help
+	  Define the maximum size of barebox
+	  If 0x0 the size will not been check
+
 config HAVE_CONFIGURABLE_MEMORY_LAYOUT
 	bool
 
-- 
1.7.7


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
