Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f3Ggn-00021V-Qu
 for barebox@lists.infradead.org; Tue, 03 Apr 2018 07:49:14 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  3 Apr 2018 09:48:39 +0200
Message-Id: <20180403074851.5411-8-s.hauer@pengutronix.de>
In-Reply-To: <20180403074851.5411-1-s.hauer@pengutronix.de>
References: <20180403074851.5411-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 07/19] fs: Cleanup whitespace damage
To: Barebox List <barebox@lists.infradead.org>

fs.c has some whitespaces where there should be tabs. Fix it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/fs.c | 26 +++++++++++++-------------
 1 file changed, 13 insertions(+), 13 deletions(-)

diff --git a/fs/fs.c b/fs/fs.c
index ca4fe70e15..92f336b821 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -99,13 +99,13 @@ char *normalise_path(const char *pathname)
 
 	slashes[0] = in = out = path;
 
-        while (*in) {
-                if(*in == '/') {
+	while (*in) {
+		if(*in == '/') {
 			slashes[sl++] = out;
-                        *out++ = *in++;
-                        while(*in == '/')
-                                in++;
-                } else {
+			*out++ = *in++;
+			while(*in == '/')
+				in++;
+		} else {
 			if (*in == '.' && (*(in + 1) == '/' || !*(in + 1))) {
 				sl--;
 				if (sl < 0)
@@ -123,16 +123,16 @@ char *normalise_path(const char *pathname)
 				continue;
 			}
                         *out++ = *in++;
-                }
-        }
+		}
+	}
 
 	*out-- = 0;
 
-        /*
-         * Remove trailing slash
-         */
-        if (*out == '/')
-                *out = 0;
+	/*
+	 * Remove trailing slash
+	 */
+	if (*out == '/')
+		*out = 0;
 
 	if (!*path) {
 		*path = '/';
-- 
2.16.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
