Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.visioncatalog.de ([217.6.246.34] helo=root.phytec.de)
 by casper.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RSpWc-0001hr-Fu
 for barebox@lists.infradead.org; Tue, 22 Nov 2011 12:32:38 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id ACDF7BF0D9
 for <barebox@lists.infradead.org>; Tue, 22 Nov 2011 13:37:26 +0100 (CET)
From: Jan Weitzel <j.weitzel@phytec.de>
Date: Tue, 22 Nov 2011 13:32:19 +0100
Message-Id: <1321965139-17745-1-git-send-email-j.weitzel@phytec.de>
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
Subject: [PATCH] readkey: force return from while true
To: barebox@lists.infradead.org

If read_key is feeded by STRG + KEY_LEFT you run into the while(1)
loop and corrupt memory through esc array.
Force return if index gets too high.

Signed-off-by: Jan Weitzel <j.weitzel@phytec.de>
---
 lib/readkey.c |    2 ++
 1 files changed, 2 insertions(+), 0 deletions(-)

diff --git a/lib/readkey.c b/lib/readkey.c
index a42d1cb..895db82 100644
--- a/lib/readkey.c
+++ b/lib/readkey.c
@@ -67,6 +67,8 @@ int read_key(void)
 				esc[i] = getc();
 				if (esc[i++] == '~')
 					break;
+				if (i == 5)
+					return -1;
 			}
 		}
 		esc[i] = 0;
-- 
1.7.0.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
