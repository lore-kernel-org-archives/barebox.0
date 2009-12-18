Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from [2001:6f8:1178:4:290:27ff:fe1d:cc33]
	(helo=metis.ext.pengutronix.de)
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NLf4r-0005D0-NC
	for barebox@lists.infradead.org; Fri, 18 Dec 2009 15:49:14 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 18 Dec 2009 16:48:00 +0100
Message-Id: <1261151305-18627-12-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1261151305-18627-11-git-send-email-s.hauer@pengutronix.de>
References: <1261151305-18627-1-git-send-email-s.hauer@pengutronix.de>
	<1261151305-18627-2-git-send-email-s.hauer@pengutronix.de>
	<1261151305-18627-3-git-send-email-s.hauer@pengutronix.de>
	<1261151305-18627-4-git-send-email-s.hauer@pengutronix.de>
	<1261151305-18627-5-git-send-email-s.hauer@pengutronix.de>
	<1261151305-18627-6-git-send-email-s.hauer@pengutronix.de>
	<1261151305-18627-7-git-send-email-s.hauer@pengutronix.de>
	<1261151305-18627-8-git-send-email-s.hauer@pengutronix.de>
	<1261151305-18627-9-git-send-email-s.hauer@pengutronix.de>
	<1261151305-18627-10-git-send-email-s.hauer@pengutronix.de>
	<1261151305-18627-11-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 11/36] vsprintf: Only define PAGE_SIZE if not already defined
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 lib/vsprintf.c |    2 ++
 1 files changed, 2 insertions(+), 0 deletions(-)

diff --git a/lib/vsprintf.c b/lib/vsprintf.c
index b04694f..6008305 100644
--- a/lib/vsprintf.c
+++ b/lib/vsprintf.c
@@ -206,7 +206,9 @@ static char *number(char *buf, char *end, unsigned long long num, int base, int
 	return buf;
 }
 
+#ifndef PAGE_SIZE
 #define PAGE_SIZE 4096
+#endif
 
 static char *string(char *buf, char *end, char *s, int field_width, int precision, int flags)
 {
-- 
1.6.5.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
