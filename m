Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 13.mo3.mail-out.ovh.net ([188.165.33.202]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RmpIg-0007Dc-Kk
 for barebox@lists.infradead.org; Mon, 16 Jan 2012 16:20:51 +0000
Received: from mail617.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 6D2EB1004386
 for <barebox@lists.infradead.org>; Mon, 16 Jan 2012 17:22:19 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Mon, 16 Jan 2012 17:19:52 +0100
Message-Id: <1326730793-2818-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 1/2 v2] add config to check if the size of barebox exceed the
 target size
To: barebox@lists.infradead.org

CONFIG_BAREBOX_MAX_IMAGE_SIZE will allow to detected silent oversize result

if 0x0 the size will not been checked

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
v2:

	change to CONFIG_BAREBOX_MAX_IMAGE_SIZE
	use default as 0xffffffff

Best Regards,
J.
 Makefile       |    7 +++++++
 common/Kconfig |    8 ++++++++
 2 files changed, 15 insertions(+), 0 deletions(-)

diff --git a/Makefile b/Makefile
index d8e685e..12fa192 100644
--- a/Makefile
+++ b/Makefile
@@ -659,6 +659,13 @@ OBJCOPYFLAGS_barebox.bin = -O binary
 
 barebox.bin: barebox FORCE
 	$(call if_changed,objcopy)
+	size=`stat -c%s $@`; \
+	max_size=`printf "%d" $(CONFIG_BAREBOX_MAX_IMAGE_SIZE)`; \
+	if [ $$size -gt $$max_size ] ; \
+	then \
+		echo "$@ size $$size > of the maximum size $$max_size"; \
+		exit 1 ; \
+	fi
 
 ifdef CONFIG_X86
 barebox.S: barebox
diff --git a/common/Kconfig b/common/Kconfig
index 382e591..1b47664 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -104,6 +104,14 @@ config TEXT_BASE
 	help
 	  The Address barebox gets linked at.
 
+config BAREBOX_MAX_IMAGE_SIZE
+	prompt "Maximum size of barebox"
+	hex
+	default 0xffffffff
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
