Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j44y2-0005FQ-0m
 for barebox@lists.infradead.org; Tue, 18 Feb 2020 15:39:23 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 18 Feb 2020 16:39:11 +0100
Message-Id: <20200218153917.15937-2-s.hauer@pengutronix.de>
In-Reply-To: <20200218153917.15937-1-s.hauer@pengutronix.de>
References: <20200218153917.15937-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/8] nios2: remove bare_init
To: Barebox List <barebox@lists.infradead.org>

bare_init is only meaningful when we initially only have parts of
the barebox binary available. This is not the case on nios2, so remove
the unnecessary __bare_init attributes.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/nios2/cpu/barebox.lds.S | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/nios2/cpu/barebox.lds.S b/arch/nios2/cpu/barebox.lds.S
index 8d82aa59e7..426f072f74 100644
--- a/arch/nios2/cpu/barebox.lds.S
+++ b/arch/nios2/cpu/barebox.lds.S
@@ -40,9 +40,7 @@ SECTIONS
 		_stext = .;
 		__text = .;
 		_text = .;
-		__bare_init_start = .;
 		*(.text_entry)
-		__bare_init_end = .;
 		*(.text)
 	}
 	BAREBOX_BARE_INIT_SIZE
-- 
2.25.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
