Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXJDW-0003Jf-Cw
 for barebox@lists.infradead.org; Sun, 02 Jun 2019 05:39:39 +0000
Received: by mail-lj1-x244.google.com with SMTP id s21so2576985lji.8
 for <barebox@lists.infradead.org>; Sat, 01 Jun 2019 22:39:37 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Sun,  2 Jun 2019 08:39:23 +0300
Message-Id: <20190602053923.9099-1-antonynpavlov@gmail.com>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] Documentation: add riscv mention
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 Documentation/user/barebox.rst | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/user/barebox.rst b/Documentation/user/barebox.rst
index 026ed1b9c0..1927fe4efc 100644
--- a/Documentation/user/barebox.rst
+++ b/Documentation/user/barebox.rst
@@ -58,6 +58,7 @@ variable. Currently, ``ARCH`` must be one of:
 * nios2
 * openrisc
 * ppc
+* riscv
 * sandbox
 * x86
 
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
