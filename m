Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from [2001:6f8:1178:4:290:27ff:fe1d:cc33]
	(helo=metis.ext.pengutronix.de)
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NLf4n-0005Cp-11
	for barebox@lists.infradead.org; Fri, 18 Dec 2009 15:49:09 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 18 Dec 2009 16:47:51 +0100
Message-Id: <1261151305-18627-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1261151305-18627-2-git-send-email-s.hauer@pengutronix.de>
References: <1261151305-18627-1-git-send-email-s.hauer@pengutronix.de>
	<1261151305-18627-2-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 02/36] ipe337: add missing include
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 board/ipe337/ipe337.c |    1 +
 1 files changed, 1 insertions(+), 0 deletions(-)

diff --git a/board/ipe337/ipe337.c b/board/ipe337/ipe337.c
index c9416fe..269e774 100644
--- a/board/ipe337/ipe337.c
+++ b/board/ipe337/ipe337.c
@@ -3,6 +3,7 @@
 #include <driver.h>
 #include <asm/cpu/cdefBF561.h>
 #include <partition.h>
+#include <fs.h>
 
 static struct device_d cfi_dev = {
 	.name     = "cfi_flash",
-- 
1.6.5.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
