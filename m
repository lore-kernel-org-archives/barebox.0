Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from magratgarlick.emantor.de ([78.46.208.201])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hurkn-0007TK-5o
 for barebox@lists.infradead.org; Tue, 06 Aug 2019 05:11:23 +0000
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Date: Tue,  6 Aug 2019 07:11:02 +0200
Message-Id: <84381aa8f6c606b76c1ff03ec0833545582ceac8.1565068235.git-series.r.czerwinski@pengutronix.de>
In-Reply-To: <cover.20f706d0d5a7ead5c114378becb025aefb9c7b8a.1565068235.git-series.r.czerwinski@pengutronix.de>
References: <cover.20f706d0d5a7ead5c114378becb025aefb9c7b8a.1565068235.git-series.r.czerwinski@pengutronix.de>
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
Subject: [PATCH v3 12/16] pbl: support panic with log output
To: barebox@lists.infradead.org
Cc: Rouven Czerwinski <r.czerwinski@pengutronix.de>

If panic is called with a string in the PBL, print the panic string
before falling into the busy loop.

Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
---
 pbl/misc.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/pbl/misc.c b/pbl/misc.c
index 7e76120..201ae38 100644
--- a/pbl/misc.c
+++ b/pbl/misc.c
@@ -11,5 +11,10 @@ void __noreturn hang(void)
 
 void __noreturn panic(const char *fmt, ...)
 {
+	va_list args;
+
+	va_start(args, fmt);
+	printf(fmt, args);
+	va_end(args);
 	while(1);
 }
-- 
git-series 0.9.1

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
