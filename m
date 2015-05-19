Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YumWR-0007XD-DO
 for barebox@lists.infradead.org; Tue, 19 May 2015 18:45:48 +0000
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Tue, 19 May 2015 20:45:22 +0200
Message-Id: <1432061122-10953-1-git-send-email-mkl@pengutronix.de>
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
Subject: [PATCH] arm/crypto: add generated sha256-core.S to gitignore
To: barebox@lists.infradead.org

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 arch/arm/crypto/.gitignore | 1 +
 1 file changed, 1 insertion(+)
 create mode 100644 arch/arm/crypto/.gitignore

diff --git a/arch/arm/crypto/.gitignore b/arch/arm/crypto/.gitignore
new file mode 100644
index 000000000000..b22a068f76f2
--- /dev/null
+++ b/arch/arm/crypto/.gitignore
@@ -0,0 +1 @@
+/sha256-core.S
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
