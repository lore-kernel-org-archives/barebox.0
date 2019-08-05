Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from magratgarlick.emantor.de ([78.46.208.201])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huZE7-0004Gs-Gj
 for barebox@lists.infradead.org; Mon, 05 Aug 2019 09:24:25 +0000
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Date: Mon,  5 Aug 2019 11:23:51 +0200
Message-Id: <f05034e8947c9573a4c6f2148b3d90a31c1db383.1564997015.git-series.r.czerwinski@pengutronix.de>
In-Reply-To: <cover.b9d503ab98014278972f6bd84931035a5ef27967.1564997015.git-series.r.czerwinski@pengutronix.de>
References: <cover.b9d503ab98014278972f6bd84931035a5ef27967.1564997015.git-series.r.czerwinski@pengutronix.de>
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
Subject: [PATCH v2 12/16] pbl: support panic with log output
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
