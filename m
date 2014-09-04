Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from nasmtp01.atmel.com ([192.199.1.246]
 helo=DVREDG02.corp.atmel.com)
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XPM5e-0006FO-9T
 for barebox@lists.infradead.org; Thu, 04 Sep 2014 01:43:58 +0000
From: Bo Shen <voice.shen@atmel.com>
Date: Thu, 4 Sep 2014 09:43:29 +0800
Message-ID: <1409795009-25395-1-git-send-email-voice.shen@atmel.com>
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
Subject: [PATCH] Makefile: remove never reached code
To: wenyou.yang@atmel.com
Cc: barebox@lists.infradead.org

Signed-off-by: Bo Shen <voice.shen@atmel.com>
---
 Makefile | 8 --------
 1 file changed, 8 deletions(-)

diff --git a/Makefile b/Makefile
index 5cd0369..7a7ad38 100644
--- a/Makefile
+++ b/Makefile
@@ -180,14 +180,6 @@ endif
 BOOT_NAME=$(BOARDNAME)-$(PROJECT)$(CARD_SUFFIX)boot-$(TARGET_NAME)$(BLOB)-$(VERSION)$(REV)
 AT91BOOTSTRAP:=$(BINDIR)/$(BOOT_NAME).bin
 
-ifeq ($(IMAGE),)
-IMAGE=$(BOOT_NAME).bin
-endif
-
-ifeq ($(SYMLINK),)
-SYMLINK=at91bootstrap.bin
-endif
-
 COBJS-y:= $(TOPDIR)/main.o $(TOPDIR)/board/$(BOARDNAME)/$(BOARDNAME).o
 SOBJS-y:= $(TOPDIR)/crt0_gnu.o
 
-- 
2.1.0.24.g4109c28


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
