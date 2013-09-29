Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VQN6x-0001zR-Gk
 for barebox@lists.infradead.org; Sun, 29 Sep 2013 19:57:00 +0000
Received: from tellur.localdomain (p54831980.dip0.t-ipconnect.de
 [84.131.25.128]) by lynxeye.de (Postfix) with ESMTPA id D7F7726C2002
 for <barebox@lists.infradead.org>; Sun, 29 Sep 2013 21:56:05 +0200 (CEST)
From: Lucas Stach <dev@lynxeye.de>
Date: Sun, 29 Sep 2013 21:59:29 +0200
Message-Id: <1380484776-32266-2-git-send-email-dev@lynxeye.de>
In-Reply-To: <1380484776-32266-1-git-send-email-dev@lynxeye.de>
References: <1380484776-32266-1-git-send-email-dev@lynxeye.de>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 1/8] images: correctly linebreak built images output
To: barebox@lists.infradead.org

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 images/Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/images/Makefile b/images/Makefile
index c723b1a..ac5cf8c 100644
--- a/images/Makefile
+++ b/images/Makefile
@@ -120,7 +120,7 @@ targets += $(foreach m, $(image-y), $(FILE_$(m)))
 SECONDARY: $(addprefix $(obj)/,$(targets))
 
 images: $(addprefix $(obj)/, $(image-y)) FORCE
-	@echo "images built:\n" $(patsubst %,%\\n,$(image-y))
+	@echo -e "images built:\n" $(patsubst %,%\\n,$(image-y))
 
 clean-files := *.pbl *.pblb *.pblx *.map start_*.imximg *.img barebox.z start_*.kwbimg \
 	start_*.kwbuartimg *.socfpgaimg
-- 
1.8.3.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
