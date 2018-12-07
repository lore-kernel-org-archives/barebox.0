Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gVD7N-0004iI-RO
 for barebox@lists.infradead.org; Fri, 07 Dec 2018 10:12:23 +0000
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Fri,  7 Dec 2018 11:11:53 +0100
Message-Id: <20181207101156.2213-2-m.tretter@pengutronix.de>
In-Reply-To: <20181207101156.2213-1-m.tretter@pengutronix.de>
References: <20181128112053.6027-1-m.tretter@pengutronix.de>
 <20181207101156.2213-1-m.tretter@pengutronix.de>
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
Subject: [PATCH v3 1/4] ARM: lib64: .gitignore barebox.lds
To: barebox@lists.infradead.org
Cc: Michael Tretter <m.tretter@pengutronix.de>

Commit e1287b1a8b27 ("arm: rework lib directory to support arm64")
restructured the lib directory and added the lib64 directory. It moved
the existing .gitignore to the lib32 directory but didn't add a new
.gitignore for lib64.

Thus building Barebox for arm64 results in stray barebox.lds files.

Copy the .gitignore from lib32 to lib64.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
 arch/arm/lib64/.gitignore | 1 +
 1 file changed, 1 insertion(+)
 create mode 100644 arch/arm/lib64/.gitignore

diff --git a/arch/arm/lib64/.gitignore b/arch/arm/lib64/.gitignore
new file mode 100644
index 0000000000..d1165788c9
--- /dev/null
+++ b/arch/arm/lib64/.gitignore
@@ -0,0 +1 @@
+barebox.lds
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
