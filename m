Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8MLe-0002b0-9b
 for barebox@lists.infradead.org; Thu, 12 Sep 2019 10:29:12 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 12 Sep 2019 12:29:03 +0200
Message-Id: <20190912102905.21307-5-a.fatoum@pengutronix.de>
In-Reply-To: <20190912102905.21307-1-a.fatoum@pengutronix.de>
References: <20190912102905.21307-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 5/7] scripts: pblimage: explicitly set architecture to ARM
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

architecture is statically initialized to zero, which happens to be
ARCH_ARM as it's the first enum element.
Make this a bit clearer by explicitly assigning ARM_ARM to architecture.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 scripts/pblimage.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/pblimage.c b/scripts/pblimage.c
index 73c0169ac1c1..235af8aa11b1 100644
--- a/scripts/pblimage.c
+++ b/scripts/pblimage.c
@@ -61,7 +61,7 @@ enum arch {
 	ARCH_POWERPC,
 };
 
-enum arch architecture;
+enum arch architecture = ARCH_ARM;
 static char *rcwfile;
 static char *pbifile;
 static char *outfile;
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
