Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp.megiteam.pl ([31.186.83.105])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fQazC-0004Le-Ds
 for barebox@lists.infradead.org; Wed, 06 Jun 2018 16:08:37 +0000
From: Marcin Niestroj <m.niestroj@grinn-global.com>
Date: Wed,  6 Jun 2018 18:08:06 +0200
Message-Id: <20180606160809.16233-3-m.niestroj@grinn-global.com>
In-Reply-To: <20180606160809.16233-1-m.niestroj@grinn-global.com>
References: <20180606160809.16233-1-m.niestroj@grinn-global.com>
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
Subject: [RFC PATCH 2/5] scripts: imx: Support CST version >= 2.3.2
To: barebox@lists.infradead.org
Cc: Marcin Niestroj <m.niestroj@grinn-global.com>

New versions of CST (starting from 2.3.2 according to Release Notes)
require specifying '-i --input' option, instead of writing
configuration to standard input. I see few possibilities here:
1) Simply add '-i /dev/fd/0' as a fix to current implementation
   (this patch actually does that).
2) Reimplement code to save CSF content to file, instead of malloc'ed
   buffer.
3) Above methods will only support CST tool >= 2.3.2. To keep
   compatibility with older CST versions, we would need to check
   'cst -h' output to see if '-i' option is supported or not (note,
   that version returned by CST 2.3.3 is 'BLN_CST_MAIN_02.03.00').

Signed-off-by: Marcin Niestroj <m.niestroj@grinn-global.com>
---

 scripts/imx/imx-image.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/imx/imx-image.c b/scripts/imx/imx-image.c
index b241e8c4b..9688a8ce1 100644
--- a/scripts/imx/imx-image.c
+++ b/scripts/imx/imx-image.c
@@ -546,7 +546,7 @@ static int hab_sign(struct config_data *data)
 		}
 	}
 
-	ret = asprintf(&command, "%s -o %s", cst, csffile);
+	ret = asprintf(&command, "%s -i /dev/fd/0 -o %s", cst, csffile);
 	if (ret < 0)
 		return -ENOMEM;
 
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
