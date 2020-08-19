Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k8HfE-0002Hw-Ue
 for barebox@lists.infradead.org; Wed, 19 Aug 2020 06:33:37 +0000
Received: by mail-pj1-x1043.google.com with SMTP id ds1so317258pjb.1
 for <barebox@lists.infradead.org>; Tue, 18 Aug 2020 23:33:34 -0700 (PDT)
From: Du Huanpeng <u74147@gmail.com>
Date: Wed, 19 Aug 2020 14:33:19 +0800
Message-Id: <1597818799-11414-1-git-send-email-u74147@gmail.com>
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
Subject: [PATCH] Documentation: update for loongson1 board
To: barebox@lists.infradead.org
Cc: Du Huanpeng <u74147@gmail.com>

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
