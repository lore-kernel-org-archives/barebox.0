Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SmrrW-0006cD-0j
 for barebox@lists.infradead.org; Thu, 05 Jul 2012 19:37:16 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  5 Jul 2012 21:36:57 +0200
Message-Id: <1341517020-5581-27-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1341517020-5581-1-git-send-email-s.hauer@pengutronix.de>
References: <1341517020-5581-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 27/30] uimage: select uncompress and crc32 support
To: barebox@lists.infradead.org

uImage support needs both.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/Kconfig |    2 ++
 1 file changed, 2 insertions(+)

diff --git a/common/Kconfig b/common/Kconfig
index 9e4f6b3..c52406c 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -48,6 +48,8 @@ config BINFMT
 	select FILETYPE
 
 config UIMAGE
+	select UNCOMPRESS
+	select CRC32
 	bool
 
 config GLOBALVAR
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
