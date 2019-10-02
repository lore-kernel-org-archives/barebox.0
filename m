Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFfs1-0004o2-1P
 for barebox@lists.infradead.org; Wed, 02 Oct 2019 14:44:50 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed,  2 Oct 2019 16:44:29 +0200
Message-Id: <20191002144430.14946-7-s.hauer@pengutronix.de>
In-Reply-To: <20191002144430.14946-1-s.hauer@pengutronix.de>
References: <20191002144430.14946-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 6/7] lds: remove more unnecessary alignments
To: Barebox List <barebox@lists.infradead.org>

The alignemnt in the DTB and clk_of_table shouldn't be needed. Remove
them.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/asm-generic/barebox.lds.h | 2 --
 1 file changed, 2 deletions(-)

diff --git a/include/asm-generic/barebox.lds.h b/include/asm-generic/barebox.lds.h
index acf838e85f..a3e367c9ed 100644
--- a/include/asm-generic/barebox.lds.h
+++ b/include/asm-generic/barebox.lds.h
@@ -73,14 +73,12 @@
 	__barebox_magicvar_end = .;
 
 #define BAREBOX_CLK_TABLE			\
-	. = ALIGN(8);				\
 	__clk_of_table_start = .;		\
 	KEEP(*(.__clk_of_table));		\
 	KEEP(*(.__clk_of_table_end));		\
 	__clk_of_table_end = .;
 
 #define BAREBOX_DTB				\
-	. = ALIGN(8);				\
 	__dtb_start = .;			\
 	KEEP(*(.dtb.rodata.*));			\
 	__dtb_end = .;
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
