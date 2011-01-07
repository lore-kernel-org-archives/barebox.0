Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PbDKM-0001I8-Cc
	for barebox@lists.infradead.org; Fri, 07 Jan 2011 14:30:03 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  7 Jan 2011 15:29:55 +0100
Message-Id: <1294410597-25824-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1294410597-25824-1-git-send-email-s.hauer@pengutronix.de>
References: <1294410597-25824-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/3] scb9328: remove useless bin/init file from env
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/scb9328/env/bin/init |    3 ---
 1 files changed, 0 insertions(+), 3 deletions(-)
 delete mode 100644 arch/arm/boards/scb9328/env/bin/init

diff --git a/arch/arm/boards/scb9328/env/bin/init b/arch/arm/boards/scb9328/env/bin/init
deleted file mode 100644
index 416669f..0000000
--- a/arch/arm/boards/scb9328/env/bin/init
+++ /dev/null
@@ -1,3 +0,0 @@
-
-echo running init
-
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
