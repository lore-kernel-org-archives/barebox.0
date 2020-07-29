Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k0ou4-0001Nq-UP
 for barebox@lists.infradead.org; Wed, 29 Jul 2020 16:26:05 +0000
Received: by mail-ed1-x544.google.com with SMTP id c15so8204252edj.3
 for <barebox@lists.infradead.org>; Wed, 29 Jul 2020 09:26:02 -0700 (PDT)
From: yegorslists@googlemail.com
Date: Wed, 29 Jul 2020 18:25:55 +0200
Message-Id: <20200729162555.12689-1-yegorslists@googlemail.com>
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
Subject: [PATCH] Documentation/sandbox: fix code block
To: barebox@lists.infradead.org

From: Yegor Yefremov <yegorslists@googlemail.com>

Remove unneeded colon.

Signed-off-by: Yegor Yefremov <yegorslists@googlemail.com>
---
 Documentation/boards/sandbox.rst | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/boards/sandbox.rst b/Documentation/boards/sandbox.rst
index 8b00093fb..8b24b6a64 100644
--- a/Documentation/boards/sandbox.rst
+++ b/Documentation/boards/sandbox.rst
@@ -17,7 +17,7 @@ The barebox sandbox can be built with the host compiler:
 Running the sandbox
 -------------------
 
-Once you compile barebox for the sandbox, you can run it with::
+Once you compile barebox for the sandbox, you can run it with:
 
 .. code-block:: console
 
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
