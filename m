Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wr0-x242.google.com ([2a00:1450:400c:c0c::242])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1efuXX-0000Au-0l
 for barebox@lists.infradead.org; Sun, 28 Jan 2018 21:31:04 +0000
Received: by mail-wr0-x242.google.com with SMTP id f11so5128367wre.4
 for <barebox@lists.infradead.org>; Sun, 28 Jan 2018 13:30:52 -0800 (PST)
From: Aleksander Morgado <aleksander@aleksander.es>
Date: Sun, 28 Jan 2018 22:30:48 +0100
Message-Id: <20180128213048.14450-1-aleksander@aleksander.es>
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
Subject: [PATCH] ratp: remove unused list pointer from ratp_bb_pkt
To: barebox@lists.infradead.org
Cc: Aleksander Morgado <aleksander@aleksander.es>

This struct type is used in the RATP FS implementation, but was never
used as a list element anywhere.

Signed-off-by: Aleksander Morgado <aleksander@aleksander.es>
---
 include/ratp_bb.h | 2 --
 1 file changed, 2 deletions(-)

diff --git a/include/ratp_bb.h b/include/ratp_bb.h
index 70fd58a67..f485f7d8a 100644
--- a/include/ratp_bb.h
+++ b/include/ratp_bb.h
@@ -2,8 +2,6 @@
 #define __RATP_BB_H
 
 struct ratp_bb_pkt {
-	struct list_head list;
-
 	unsigned int len;
 	uint8_t data[];
 };
-- 
2.15.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
