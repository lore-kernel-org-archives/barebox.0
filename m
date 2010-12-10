Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp.telit.com ([88.37.127.140])
	by canuck.infradead.org with esmtp (Exim 4.72 #1 (Red Hat Linux))
	id 1PR0W1-0007zs-Ms
	for barebox@lists.infradead.org; Fri, 10 Dec 2010 10:47:54 +0000
From: Fabio Porcedda <Fabio.Porcedda@telit.com>
Date: Fri, 10 Dec 2010 11:47:47 +0100
Message-ID: <24A9345B397CD24AA76A4E82E237956545F839FBC2@XCHTS.tmt.telital.com>
Content-Language: en-US
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] common: fix 'dummy' is used uninitialized in this function
	warning
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

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
1.7.3.3

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
