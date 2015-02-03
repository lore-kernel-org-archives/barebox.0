Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pa0-x22c.google.com ([2607:f8b0:400e:c03::22c])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YIgP5-0007oX-JL
 for barebox@lists.infradead.org; Tue, 03 Feb 2015 16:32:44 +0000
Received: by mail-pa0-f44.google.com with SMTP id rd3so98012900pab.3
 for <barebox@lists.infradead.org>; Tue, 03 Feb 2015 08:32:20 -0800 (PST)
From: Masahiro Yamada <yamada.m@jp.panasonic.com>
Date: Wed,  4 Feb 2015 01:31:57 +0900
Message-Id: <1422981117-6552-1-git-send-email-yamada.m@jp.panasonic.com>
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
Subject: [PATCH] nios2: ignore arch/nios2/cpu/barebox.lds by git
To: barebox@lists.infradead.org

Signed-off-by: Masahiro Yamada <yamada.m@jp.panasonic.com>
---
 arch/nios2/cpu/.gitignore | 1 +
 1 file changed, 1 insertion(+)
 create mode 100644 arch/nios2/cpu/.gitignore

diff --git a/arch/nios2/cpu/.gitignore b/arch/nios2/cpu/.gitignore
new file mode 100644
index 0000000..d116578
--- /dev/null
+++ b/arch/nios2/cpu/.gitignore
@@ -0,0 +1 @@
+barebox.lds
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
