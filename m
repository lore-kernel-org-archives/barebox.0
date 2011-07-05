Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wy0-f177.google.com ([74.125.82.177])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QeDzl-0003fl-V1
	for barebox@lists.infradead.org; Tue, 05 Jul 2011 22:21:30 +0000
Received: by wyf23 with SMTP id 23so5440016wyf.36
	for <barebox@lists.infradead.org>; Tue, 05 Jul 2011 15:21:25 -0700 (PDT)
From: franck.jullien@gmail.com
Date: Wed,  6 Jul 2011 00:14:50 +0200
Message-Id: <1309904090-9100-3-git-send-email-franck.jullien@gmail.com>
In-Reply-To: <1309904090-9100-1-git-send-email-franck.jullien@gmail.com>
References: <1309904090-9100-1-git-send-email-franck.jullien@gmail.com>
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
Subject: [PATCH] Nios2: Compile bootm only if needed
To: barebox@lists.infradead.org

From: Franck Jullien <franck.jullien@gmail.com>

Fix an error when bootm support is not choosen during
the configuration.

Signed-off-by: Franck Jullien <franck.jullien@gmail.com>
---
 arch/nios2/lib/Makefile |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/arch/nios2/lib/Makefile b/arch/nios2/lib/Makefile
index fc9d4d7..3affc45 100644
--- a/arch/nios2/lib/Makefile
+++ b/arch/nios2/lib/Makefile
@@ -2,6 +2,6 @@ obj-y                      += board.o
 obj-y                      += libgcc.o
 obj-y                      += clock.o
 obj-y                      += cache.o
-obj-y                      += bootm.o
+obj-$(CONFIG_CMD_BOOTM)    += bootm.o
 obj-$(CONFIG_EARLY_PRINTF) += early_printf.o
 
-- 
1.7.0.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
