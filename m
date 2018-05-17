Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wr0-x241.google.com ([2a00:1450:400c:c0c::241])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fJJRc-0002j7-E3
 for barebox@lists.infradead.org; Thu, 17 May 2018 13:59:51 +0000
Received: by mail-wr0-x241.google.com with SMTP id p18-v6so5829025wrm.1
 for <barebox@lists.infradead.org>; Thu, 17 May 2018 06:59:38 -0700 (PDT)
From: Peter Mamonov <pmamonov@gmail.com>
Date: Thu, 17 May 2018 16:58:49 +0300
Message-Id: <20180517135858.16202-7-pmamonov@gmail.com>
In-Reply-To: <20180517135858.16202-1-pmamonov@gmail.com>
References: <20180517135858.16202-1-pmamonov@gmail.com>
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
Subject: [RFC PATCH 06/15] common/Kconfig: add PHYS_ADDR_T_64BIT option
To: barebox@lists.infradead.org
Cc: Peter Mamonov <pmamonov@gmail.com>

Signed-off-by: Peter Mamonov <pmamonov@gmail.com>
---
 common/Kconfig | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/common/Kconfig b/common/Kconfig
index b7000c4d7..a5b53b2e4 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -95,6 +95,9 @@ config FILE_LIST
 config ARCH_DMA_ADDR_T_64BIT
 	bool
 
+config PHYS_ADDR_T_64BIT
+	bool
+
 config BAREBOX_UPDATE_IMX_NAND_FCB
 	bool
 	depends on ARCH_IMX6 || ARCH_IMX28
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
