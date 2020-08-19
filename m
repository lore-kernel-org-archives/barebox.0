Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k8ISf-0001Hc-Fk
 for barebox@lists.infradead.org; Wed, 19 Aug 2020 07:24:42 +0000
Received: by mail-pf1-x443.google.com with SMTP id d22so11229025pfn.5
 for <barebox@lists.infradead.org>; Wed, 19 Aug 2020 00:24:40 -0700 (PDT)
From: Du Huanpeng <u74147@gmail.com>
Date: Wed, 19 Aug 2020 15:24:25 +0800
Message-Id: <1597821865-11500-1-git-send-email-u74147@gmail.com>
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
Subject: [PATCH v2] Documentation: update for loongson1 board
To: barebox@lists.infradead.org
Cc: Du Huanpeng <u74147@gmail.com>

after migrating to multi-image support the image path was changed.

Signed-off-by: Du Huanpeng <u74147@gmail.com>
---
 Documentation/boards/mips/loongson_ls1b.rst | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/boards/mips/loongson_ls1b.rst b/Documentation/boards/mips/loongson_ls1b.rst
index 8f475e6..ea7ed8d 100644
--- a/Documentation/boards/mips/loongson_ls1b.rst
+++ b/Documentation/boards/mips/loongson_ls1b.rst
@@ -30,7 +30,7 @@ Running barebox
 
   3. Wait ``Press <Enter> to execute loading image`` prompt and press the space key.
 
-  4. Build barebox and upload ``zbarebox.bin`` via Ymodem to the board:
+  4. Build barebox and upload ``images/barebox-loongson-ls1b.img`` via Ymodem to the board:
 
 .. code-block:: none
 
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
