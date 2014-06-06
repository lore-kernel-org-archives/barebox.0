Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x229.google.com ([2a00:1450:4010:c04::229])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WszVR-0005ib-Re
 for barebox@lists.infradead.org; Fri, 06 Jun 2014 19:08:50 +0000
Received: by mail-lb0-f169.google.com with SMTP id s7so1773053lbd.14
 for <barebox@lists.infradead.org>; Fri, 06 Jun 2014 12:08:26 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Fri,  6 Jun 2014 23:08:10 +0400
Message-Id: <1402081690-23986-2-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1402081690-23986-1-git-send-email-antonynpavlov@gmail.com>
References: <1402081690-23986-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 2/2] MIPS: dts: add .gitignore for generated files
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/dts/.gitignore | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/mips/dts/.gitignore b/arch/mips/dts/.gitignore
new file mode 100644
index 0000000..077903c
--- /dev/null
+++ b/arch/mips/dts/.gitignore
@@ -0,0 +1 @@
+*dtb*
-- 
1.9.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
