Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.gmx.net ([212.227.17.20])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gPCJB-0002Oo-61
 for barebox@lists.infradead.org; Tue, 20 Nov 2018 20:07:46 +0000
From: Oleksij Rempel <linux@rempel-privat.de>
Date: Tue, 20 Nov 2018 21:07:14 +0100
Message-Id: <20181120200714.3692-10-linux@rempel-privat.de>
In-Reply-To: <20181120200714.3692-1-linux@rempel-privat.de>
References: <20181120200714.3692-1-linux@rempel-privat.de>
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
Subject: [PATCH v1 9/9] lib: lodepng: remove useless test
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <linux@rempel-privat.de>

Either the condition 'code_ll==(unsigned int)(-1)' is redundant or the
array 'LENGTHBASE[29]' is accessed at index 4294967038, which is out of
bounds.

On other hand this condition is tested within other scope:
"if(code_ll >= FIRST_LENGTH_CODE_INDEX && code_ll <= LAST_LENGTH_CODE_INDEX)"
with is already limited to (code_ll >= 257 && code_ll <= 285),
so it can't be -1 any way.

Signed-off-by: Oleksij Rempel <linux@rempel-privat.de>
---
 lib/gui/lodepng.c | 8 +-------
 1 file changed, 1 insertion(+), 7 deletions(-)

diff --git a/lib/gui/lodepng.c b/lib/gui/lodepng.c
index 9cc59d709..78a34db47 100644
--- a/lib/gui/lodepng.c
+++ b/lib/gui/lodepng.c
@@ -1140,13 +1140,7 @@ static unsigned inflateHuffmanBlock(ucvector* out, const unsigned char* in, size
       code_d = huffmanDecodeSymbol(in, bp, &tree_d, inbitlength);
       if(code_d > 29)
       {
-        if(code_ll == (unsigned)(-1)) /*huffmanDecodeSymbol returns (unsigned)(-1) in case of error*/
-        {
-          /*return error code 10 or 11 depending on the situation that happened in huffmanDecodeSymbol
-          (10=no endcode, 11=wrong jump outside of tree)*/
-          error = (*bp) > inlength * 8 ? 10 : 11;
-        }
-        else error = 18; /*error: invalid distance code (30-31 are never used)*/
+        error = 18; /*error: invalid distance code (30-31 are never used)*/
         break;
       }
       distance = DISTANCEBASE[code_d];
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
