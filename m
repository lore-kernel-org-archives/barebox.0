Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-x22b.google.com ([2a00:1450:4013:c00::22b])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WkKLB-0007tR-GI
 for barebox@lists.infradead.org; Tue, 13 May 2014 21:34:25 +0000
Received: by mail-ee0-f43.google.com with SMTP id d17so788394eek.16
 for <barebox@lists.infradead.org>; Tue, 13 May 2014 14:34:02 -0700 (PDT)
From: Beniamino Galvani <b.galvani@gmail.com>
Date: Tue, 13 May 2014 23:33:31 +0200
Message-Id: <1400016811-9725-1-git-send-email-b.galvani@gmail.com>
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
Subject: [PATCH] ARM: radxa-rock: set hostname after devicetree initialization
To: barebox@lists.infradead.org

hostname_init() must be called after the devicetree root node has been
initialized, otherwise the check on board compatible always returns
false.

Signed-off-by: Beniamino Galvani <b.galvani@gmail.com>
---
 arch/arm/boards/radxa-rock/board.c |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boards/radxa-rock/board.c b/arch/arm/boards/radxa-rock/board.c
index 691f243..3d9b5be 100644
--- a/arch/arm/boards/radxa-rock/board.c
+++ b/arch/arm/boards/radxa-rock/board.c
@@ -84,4 +84,4 @@ static int hostname_init(void)
 
 	return 0;
 }
-core_initcall(hostname_init);
+postcore_initcall(hostname_init);
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
