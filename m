Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fZqeP-0004Rh-O3
 for barebox@lists.infradead.org; Mon, 02 Jul 2018 04:41:25 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  2 Jul 2018 06:41:05 +0200
Message-Id: <20180702044108.11466-2-s.hauer@pengutronix.de>
In-Reply-To: <20180702044108.11466-1-s.hauer@pengutronix.de>
References: <20180702044108.11466-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/4] bbu: reserve upper 16 bits for handler specific flags
To: Barebox List <barebox@lists.infradead.org>

Let the handler store 16 bit of handler specific flags in
the generic handler struct. The setup functions of some
bbu handlers let the user specify a flags field. With this
change they can now pass generic and handler specific flags
in a single variable without having to use a second parameter.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/bbu.h | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/include/bbu.h b/include/bbu.h
index def568e498..d1ab9f5638 100644
--- a/include/bbu.h
+++ b/include/bbu.h
@@ -25,6 +25,10 @@ struct bbu_handler {
 	struct list_head list;
 #define BBU_HANDLER_FLAG_DEFAULT	(1 << 0)
 #define BBU_HANDLER_CAN_REFRESH		(1 << 1)
+	/*
+	 * The lower 16bit are generic flags, the upper 16bit are reserved
+	 * for handler specific flags.
+	 */
 	unsigned long flags;
 
 	/* default device file, can be overwritten on the command line */
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
