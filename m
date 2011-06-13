Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wy0-f177.google.com ([74.125.82.177])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QWDpK-0004hk-19
	for barebox@lists.infradead.org; Mon, 13 Jun 2011 20:33:38 +0000
Received: by wyb28 with SMTP id 28so4697054wyb.36
	for <barebox@lists.infradead.org>; Mon, 13 Jun 2011 13:33:34 -0700 (PDT)
From: franck.jullien@gmail.com
Date: Mon, 13 Jun 2011 22:33:28 +0200
Message-Id: <1307997208-18886-1-git-send-email-franck.jullien@gmail.com>
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
Subject: [PATCH] [Nios2]: Disable emitting mul instructions by gcc
To: barebox@lists.infradead.org

From: Franck Jullien <franck.jullien@gmail.com>

If we are using barebox on a NiosII/e variant, the
mul instruction is not supported and causes an exception.

Signed-off-by: Franck Jullien <franck.jullien@gmail.com>
---
 arch/nios2/Makefile |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/arch/nios2/Makefile b/arch/nios2/Makefile
index 6603da5..b94e074 100644
--- a/arch/nios2/Makefile
+++ b/arch/nios2/Makefile
@@ -1,4 +1,4 @@
-CPPFLAGS += -fno-strict-aliasing
+CPPFLAGS += -fno-strict-aliasing -mno-hw-mul
 
 board-$(CONFIG_GENERIC) := generic
 
-- 
1.7.0.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
