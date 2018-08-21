Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x429.google.com ([2607:f8b0:4864:20::429])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fs8Fd-0005cZ-Pj
 for barebox@lists.infradead.org; Tue, 21 Aug 2018 15:07:23 +0000
Received: by mail-pf1-x429.google.com with SMTP id d4-v6so8652929pfn.0
 for <barebox@lists.infradead.org>; Tue, 21 Aug 2018 08:07:10 -0700 (PDT)
From: Aleksander Morgado <aleksander@aleksander.es>
Date: Tue, 21 Aug 2018 17:07:00 +0200
Message-Id: <20180821150700.2926-1-aleksander@aleksander.es>
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
Subject: [PATCH] bbremote: add missing 'md' packet handler
To: barebox@lists.infradead.org, s.hauer@pengutronix.de
Cc: Aleksander Morgado <aleksander@aleksander.es>

Signed-off-by: Aleksander Morgado <aleksander@aleksander.es>
---
 scripts/remote/controller.py | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/scripts/remote/controller.py b/scripts/remote/controller.py
index 2ed834613..1a8390904 100644
--- a/scripts/remote/controller.py
+++ b/scripts/remote/controller.py
@@ -46,6 +46,9 @@ def unpack(data):
     elif p_type == BBType.fs_return:
         logging.debug("received: fs_return")
         return BBPacketFSReturn(raw=data)
+    elif p_type == BBType.md:
+        logging.debug("received: md")
+        return BBPacketMd(raw=data)
     elif p_type == BBType.md_return:
         logging.debug("received: md_return")
         return BBPacketMdReturn(raw=data)
-- 
2.18.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
