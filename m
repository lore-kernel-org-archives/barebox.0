Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x243.google.com ([2a00:1450:4010:c07::243])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1eZFOG-0004Vu-I6
 for barebox@lists.infradead.org; Wed, 10 Jan 2018 12:21:58 +0000
Received: by mail-lf0-x243.google.com with SMTP id f3so19633222lfe.4
 for <barebox@lists.infradead.org>; Wed, 10 Jan 2018 04:21:45 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Wed, 10 Jan 2018 15:21:36 +0300
Message-Id: <20180110122136.8037-1-antonynpavlov@gmail.com>
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
Subject: [PATCH] Kconfig: drop unused HAS_POWEROFF
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
Cc: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/efi/Kconfig | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/efi/Kconfig b/drivers/efi/Kconfig
index d6beeb07ce..cca1a2e1d6 100644
--- a/drivers/efi/Kconfig
+++ b/drivers/efi/Kconfig
@@ -1,5 +1,4 @@
 config EFI_BOOTUP
 	bool
-	select HAS_POWEROFF
 	select BLOCK
 	select PARTITION_DISK
-- 
2.15.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
