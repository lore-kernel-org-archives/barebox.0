Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bw0-f43.google.com ([209.85.214.43])
	by canuck.infradead.org with esmtp (Exim 4.72 #1 (Red Hat Linux))
	id 1PUgVr-000259-Uq
	for barebox@lists.infradead.org; Mon, 20 Dec 2010 14:14:58 +0000
Received: by bwz14 with SMTP id 14so3178851bwz.30
	for <barebox@lists.infradead.org>; Mon, 20 Dec 2010 06:14:53 -0800 (PST)
From: Fabio Porcedda <fabio.porcedda@telit.com>
Date: Mon, 20 Dec 2010 15:14:37 +0100
Message-Id: <1292854477-2842-1-git-send-email-fabio.porcedda@telit.com>
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
Subject: [PATCH v2] xyzModem.c: fix 'dummy' is used uninitialized in this
	function warning
To: barebox@lists.infradead.org

fix this gcc 4.4 warning:

xyzModem.c: In function 'xyzModem_stream_open':
xyzModem.c:564: warning: 'dummy' is used uninitialized in this function

Copied from U-Boot

Signed-off-by: Fabio Porcedda <fabio.porcedda@telit.com>
---
 commands/xyzModem.c |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/commands/xyzModem.c b/commands/xyzModem.c
index 1dd255d..71d7d68 100644
--- a/commands/xyzModem.c
+++ b/commands/xyzModem.c
@@ -492,7 +492,7 @@ int xyzModem_stream_open(connection_info_t *info, int *err)
 			       xyzModem_CHAR_TIMEOUT);
 #else
 /* TODO: CHECK ! */
-	int dummy;
+	int dummy = 0;
 	xyz.__chan = &dummy;
 #endif
 	xyz.len = 0;
-- 
1.7.3.4

Changes for v2:
   - fixed commit log message

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
