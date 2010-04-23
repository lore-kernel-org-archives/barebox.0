Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1O5Env-0000QW-TL
	for barebox@lists.infradead.org; Fri, 23 Apr 2010 09:04:10 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 23 Apr 2010 11:03:53 +0200
Message-Id: <1272013443-29196-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1272013443-29196-1-git-send-email-s.hauer@pengutronix.de>
References: <1272013443-29196-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 04/14] Increase MAX_FILES to 128
To: barebox@lists.infradead.org

I already hit the limit while doing DFU on a custom board. Increase the
value to a safe limit.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/stdio.h |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/include/stdio.h b/include/stdio.h
index cd1a913..d591b6a 100644
--- a/include/stdio.h
+++ b/include/stdio.h
@@ -49,7 +49,7 @@ int	vsnprintf(char *buf, size_t size, const char *fmt, va_list args);
 #define stdin		0
 #define stdout		1
 #define stderr		2
-#define MAX_FILES	16
+#define MAX_FILES	128
 
 void	fprintf(int file, const char *fmt, ...);
 int	fputs(int file, const char *s);
-- 
1.7.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
