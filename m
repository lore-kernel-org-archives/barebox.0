Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x233.google.com ([2a00:1450:4010:c03::233])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WfPwd-00081b-EA
 for barebox@lists.infradead.org; Wed, 30 Apr 2014 08:32:48 +0000
Received: by mail-la0-f51.google.com with SMTP id gl10so962755lab.24
 for <barebox@lists.infradead.org>; Wed, 30 Apr 2014 01:32:25 -0700 (PDT)
From: chf.fritz@googlemail.com
Date: Wed, 30 Apr 2014 10:32:01 +0200
Message-Id: <5360b518.c62a980a.05b6.526c@mx.google.com>
In-Reply-To: <1398846723-10241-1-git-send-email-y>
References: <1398846723-10241-1-git-send-email-y>
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
Subject: [PATCH 1/3] tftp: add timeframe when remote server is retransmitting
To: barebox@lists.infradead.org

From: Christoph Fritz <chf@fritzc.com>

If there's packet loss and the remote server needs to retransmit,
there is falsely no timeframe left because TIMEOUT (server wait time)
and TFTP_TIMEOUT (abort timer) are the same.

This patch increases TFTP_TIMEOUT.

See RFC2349 for more info: http://tools.ietf.org/html/rfc2349

Signed-off-by: Christoph Fritz <chf.fritz@googlemail.com>
---
 fs/tftp.c |    8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/fs/tftp.c b/fs/tftp.c
index 9cad18f..b1a213e 100644
--- a/fs/tftp.c
+++ b/fs/tftp.c
@@ -33,14 +33,16 @@
 #include <kfifo.h>
 #include <sizes.h>
 
-#define TFTP_PORT	69	/* Well known TFTP port #		*/
-#define TIMEOUT		5	/* Seconds to timeout for a lost pkt	*/
+#define TFTP_PORT	69	/* Well known TFTP port number */
+
+/* Seconds to wait before remote server is allowed to resend a lost packet */
+#define TIMEOUT		5
 
 /* After this time without a response from the server we will resend a packet */
 #define TFTP_RESEND_TIMEOUT	SECOND
 
 /* After this time without progress we will bail out */
-#define TFTP_TIMEOUT		(TIMEOUT * SECOND)
+#define TFTP_TIMEOUT		((TIMEOUT * 3) * SECOND)
 
 /*
  *	TFTP operations.
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
