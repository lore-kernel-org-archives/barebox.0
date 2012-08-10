Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SzvOP-0000Jp-P5
 for barebox@lists.infradead.org; Fri, 10 Aug 2012 20:01:10 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 10 Aug 2012 22:01:04 +0200
Message-Id: <1344628865-32574-9-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 8/9] ARM pbl: remove unnecessary FORCE
To: barebox@lists.infradead.org

With this FORCE the compressed image is rebuilt even if it is
unchanged, so remove it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/pbl/Makefile |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/pbl/Makefile b/arch/arm/pbl/Makefile
index dc6ae7e..b1cdd85 100644
--- a/arch/arm/pbl/Makefile
+++ b/arch/arm/pbl/Makefile
@@ -37,7 +37,7 @@ quiet_cmd_zbarebox__ ?= LD      $@
 $(obj)/zbarebox: $(zbarebox-lds) $(zbarebox-common) FORCE
 	$(call if_changed,zbarebox__)
 
-$(obj)/piggy.$(suffix_y): $(obj)/../../../barebox.bin FORCE
+$(obj)/piggy.$(suffix_y): $(obj)/../../../barebox.bin
 	$(call if_changed,$(suffix_y))
 
 $(obj)/$(piggy_o): $(obj)/piggy.$(suffix_y) FORCE
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
