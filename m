Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h1nmf-0004xD-9y
 for barebox@lists.infradead.org; Thu, 07 Mar 2019 07:49:44 +0000
Received: by mail-pf1-x443.google.com with SMTP id d25so10802355pfn.8
 for <barebox@lists.infradead.org>; Wed, 06 Mar 2019 23:49:41 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed,  6 Mar 2019 23:49:15 -0800
Message-Id: <20190307074926.20539-7-andrew.smirnov@gmail.com>
In-Reply-To: <20190307074926.20539-1-andrew.smirnov@gmail.com>
References: <20190307074926.20539-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 06/17] ARM: i.MX: bbu: Fix lseek error check in
 imx_bbu_internal_v2_write_nand_dbbt()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Don't use 'int' to store lseek()'s return value to avoid problems with
large seek offsets. While at it, make sure to populate return error
code from 'errno'.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/mach-imx/imx-bbu-internal.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/arch/arm/mach-imx/imx-bbu-internal.c b/arch/arm/mach-imx/imx-bbu-internal.c
index 188369fe3..1104303ff 100644
--- a/arch/arm/mach-imx/imx-bbu-internal.c
+++ b/arch/arm/mach-imx/imx-bbu-internal.c
@@ -330,10 +330,12 @@ static int imx_bbu_internal_v2_write_nand_dbbt(struct imx_internal_bbu_handler *
 			goto out;
 
 		if (ret) {
-			ret = lseek(fd, offset + blocksize, SEEK_SET);
-			if (ret < 0)
-				goto out;
 			offset += blocksize;
+			if (lseek(fd, offset, SEEK_SET) != offset) {
+				ret = -errno;
+				goto out;
+			}
+
 			continue;
 		}
 
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
