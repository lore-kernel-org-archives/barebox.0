Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZqSSN-0008Ez-Dx
 for barebox@lists.infradead.org; Sun, 25 Oct 2015 21:04:01 +0000
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Sun, 25 Oct 2015 22:03:33 +0100
Message-Id: <1445807016-6637-7-git-send-email-mkl@pengutronix.de>
In-Reply-To: <1445807016-6637-1-git-send-email-mkl@pengutronix.de>
References: <1445807016-6637-1-git-send-email-mkl@pengutronix.de>
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
Subject: [PATCH v3 6/9] crypto: Kconfig: add submenu for crypto related config
 options
To: barebox@lists.infradead.org

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 crypto/Kconfig | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/crypto/Kconfig b/crypto/Kconfig
index ef807dec68de..27047889a658 100644
--- a/crypto/Kconfig
+++ b/crypto/Kconfig
@@ -1,3 +1,5 @@
+menu "Crypto support"
+
 config CRC32
 	bool
 
@@ -84,3 +86,5 @@ config CRYPTO_PBKDF2
 	select DIGEST
 	select DIGEST_SHA1_GENERIC
 	bool
+
+endmenu
-- 
2.6.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
