Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SzvOP-0000Jo-P3
 for barebox@lists.infradead.org; Fri, 10 Aug 2012 20:01:10 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 10 Aug 2012 22:01:05 +0200
Message-Id: <1344628865-32574-10-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 9/9] ARM pbl: generate zbarebox.map in $(obj)
To: barebox@lists.infradead.org

All other linker generated files are there, too, so it seems logical
to put the map file there aswell.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/pbl/Makefile |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/pbl/Makefile b/arch/arm/pbl/Makefile
index b1cdd85..2cf7ad4 100644
--- a/arch/arm/pbl/Makefile
+++ b/arch/arm/pbl/Makefile
@@ -23,7 +23,7 @@ $(obj)/zbarebox.S: $(obj)/zbarebox FORCE
 	$(call if_changed,disasm)
 
 PBL_CPPFLAGS		+= -fdata-sections -ffunction-sections
-LDFLAGS_zbarebox	:= -Map zbarebox.map
+LDFLAGS_zbarebox	:= -Map $(obj)/zbarebox.map
 LDFLAGS_zbarebox	+= -static --gc-sections
 zbarebox-common := $(barebox-pbl-common) $(obj)/$(piggy_o)
 zbarebox-lds := $(obj)/zbarebox.lds
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
