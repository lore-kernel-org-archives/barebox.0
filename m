Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 8.mo2.mail-out.ovh.net ([188.165.52.147]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RhwaQ-0006R7-I7
 for barebox@lists.infradead.org; Tue, 03 Jan 2012 05:07:03 +0000
Received: from mail190.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 1CAB3DC335B
 for <barebox@lists.infradead.org>; Tue,  3 Jan 2012 06:07:56 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Tue,  3 Jan 2012 06:00:48 +0100
Message-Id: <1325566850-24432-4-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1325566850-24432-1-git-send-email-plagnioj@jcrosoft.com>
References: <1325566850-24432-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 4/6] arm: introduce barebox_bare_init_size to known the
 bare_init size
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/include/asm/sections.h |    6 ++++++
 arch/arm/lib/barebox.lds.S      |    3 +++
 2 files changed, 9 insertions(+), 0 deletions(-)

diff --git a/arch/arm/include/asm/sections.h b/arch/arm/include/asm/sections.h
index 2b8c516..5a11aad 100644
--- a/arch/arm/include/asm/sections.h
+++ b/arch/arm/include/asm/sections.h
@@ -1 +1,7 @@
 #include <asm-generic/sections.h>
+
+extern char __bare_init_start[], __bare_init_end[];
+
+extern void *_barebox_bare_init_size;
+
+#define barebox_bare_init_size	(unsigned int)&_barebox_bare_init_size
diff --git a/arch/arm/lib/barebox.lds.S b/arch/arm/lib/barebox.lds.S
index f05f345..defcb18 100644
--- a/arch/arm/lib/barebox.lds.S
+++ b/arch/arm/lib/barebox.lds.S
@@ -44,9 +44,12 @@ SECTIONS
 	  . = 0x1000;
 	  LONG(0x53555243) /* 'CRUS' */
 #endif
+		__bare_init_start = .;
 		*(.text_bare_init*)
+		__bare_init_end = .;
 		*(.text*)
 	}
+	_barebox_bare_init_size = __bare_init_end - _text;
 
 	. = ALIGN(4);
 	.rodata : { *(.rodata*) }
-- 
1.7.7


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
