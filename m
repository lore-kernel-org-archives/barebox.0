Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PCpij-0007XV-Im
	for barebox@lists.infradead.org; Mon, 01 Nov 2010 08:26:26 +0000
From: Robert Schwebel <r.schwebel@pengutronix.de>
Date: Mon,  1 Nov 2010 09:26:17 +0100
Message-Id: <1288599979-3905-4-git-send-email-r.schwebel@pengutronix.de>
In-Reply-To: <1288599979-3905-1-git-send-email-r.schwebel@pengutronix.de>
References: <1288599979-3905-1-git-send-email-r.schwebel@pengutronix.de>
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
Subject: [PATCH 3/5] digest: align menu
To: barebox@lists.infradead.org

Align with the other menu entries.

Signed-off-by: Robert Schwebel <r.schwebel@pengutronix.de>
---
 lib/Kconfig |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/lib/Kconfig b/lib/Kconfig
index 9eca161..ad2b3cf 100644
--- a/lib/Kconfig
+++ b/lib/Kconfig
@@ -11,7 +11,7 @@ config CRC16
 	bool
 
 menuconfig DIGEST
-	bool "Digest"
+	bool "Digest                        "
 
 if DIGEST
 
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
