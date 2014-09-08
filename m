Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x229.google.com ([2a00:1450:4010:c04::229])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XQspi-0004mS-Vz
 for barebox@lists.infradead.org; Mon, 08 Sep 2014 06:53:51 +0000
Received: by mail-lb0-f169.google.com with SMTP id p9so5463655lbv.14
 for <barebox@lists.infradead.org>; Sun, 07 Sep 2014 23:53:27 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Mon,  8 Sep 2014 10:53:03 +0400
Message-Id: <1410159189-17328-2-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1410159189-17328-1-git-send-email-antonynpavlov@gmail.com>
References: <1410159189-17328-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH v2 1/7] openrisc: generic board: reserve 512K for barebox
To: barebox@lists.infradead.org

Here is a linker's error message for some configurations:

  or1k-elf-ld: barebox section `.eh_frame' will not fit in region `ram'
  or1k-elf-ld: region `ram' overflowed by 16868 bytes

This patch increases space reserved for barebox from 256K to 512K
so the error's probability is dramatically decreased.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
Cc: Franck Jullien <franck.jullien@gmail.com>
---
 arch/openrisc/boards/generic/config.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/openrisc/boards/generic/config.h b/arch/openrisc/boards/generic/config.h
index 6ebab42..10c33a1 100644
--- a/arch/openrisc/boards/generic/config.h
+++ b/arch/openrisc/boards/generic/config.h
@@ -13,8 +13,8 @@
 
 #define OPENRISC_SOPC_ETHOC_BASE	0x92000000
 
-/* We reserve 256K for barebox */
-#define BAREBOX_RESERVED_SIZE		0x40000
+/* We reserve 512K for barebox */
+#define BAREBOX_RESERVED_SIZE		0x80000
 
 /* Barebox will be at top of main memory */
 #define OPENRISC_SOPC_TEXT_BASE		(OPENRISC_SOPC_MEMORY_BASE + OPENRISC_SOPC_MEMORY_SIZE - BAREBOX_RESERVED_SIZE)
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
