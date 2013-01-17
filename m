Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp.eta-ori.net ([2001:41d0:8:140a::5] helo=orion.eta-ori.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Tvj2M-0003HU-8W
 for barebox@lists.infradead.org; Thu, 17 Jan 2013 06:33:19 +0000
Received: from ubuntu.phytec.de (mail.phycard.de [217.6.246.34])
 by orion.eta-ori.net (Postfix) with ESMTPSA id 79E01600C3
 for <barebox@lists.infradead.org>; Thu, 17 Jan 2013 07:33:12 +0100 (CET)
From: Daniel Mierswa <d.mierswa@phytec.de>
Date: Thu, 17 Jan 2013 07:32:59 +0100
Message-Id: <6bf1089855588c8d227009989b54c826ac8e245e.1358400153.git.d.mierswa@phytec.de>
In-Reply-To: <cover.1358400153.git.d.mierswa@phytec.de>
References: <cover.1358400153.git.d.mierswa@phytec.de>
In-Reply-To: <cover.1358400153.git.d.mierswa@phytec.de>
References: <cover.1358400153.git.d.mierswa@phytec.de>
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
Subject: [PATCH 4/4] video/imx: always initialize offscreenbuf member
To: barebox@lists.infradead.org

If offscreen was not passed to fd_open the resulting offscreenbuf
member was a dangling pointer and the free() call in fd_close
would result in undefined behaviour.

Signed-off-by: Daniel Mierswa <d.mierswa@phytec.de>
---
 commands/splash.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/commands/splash.c b/commands/splash.c
index 4cc463e..75c7074 100644
--- a/commands/splash.c
+++ b/commands/splash.c
@@ -59,6 +59,14 @@ static int do_splash(int argc, char *argv[])
 		return 1;
 	}
 
+	/*
+	 * sc.offscreenbuf is dangling here, if no offscreen buffer was
+	 * requested, so set it to NULL otherwise the free in fd_close
+	 * will cause undefined behaviour
+	 */
+	if (!offscreen)
+		sc.offscreenbuf = NULL;
+
 	if (sc.offscreenbuf) {
 		if (do_bg)
 			memset_pixel(&info, sc.offscreenbuf, bg_color,
-- 
1.8.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
