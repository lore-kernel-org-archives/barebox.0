Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gRD26-0000f1-SF
 for barebox@lists.infradead.org; Mon, 26 Nov 2018 09:18:24 +0000
From: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Mon, 26 Nov 2018 10:17:58 +0100
Message-Id: <20181126091807.19398-2-o.rempel@pengutronix.de>
In-Reply-To: <20181126091807.19398-1-o.rempel@pengutronix.de>
References: <20181126091807.19398-1-o.rempel@pengutronix.de>
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
Subject: [PATCH v1 01/10] images: piggy: use "a" instead of #alloc flag
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>

"#alloc" is not working with MIPS compiler. The "a" variant
seems to be more generic and works with ARM and MIPS.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 images/piggy.S | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/images/piggy.S b/images/piggy.S
index 84396ae4ec..c2274ebac7 100644
--- a/images/piggy.S
+++ b/images/piggy.S
@@ -1,4 +1,4 @@
-        .section .piggydata,#alloc
+        .section .piggydata,"a"
         .globl  input_data
 input_data:
         .incbin "images/barebox.z"
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
