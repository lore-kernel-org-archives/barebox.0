Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SjDFB-0002Nz-Qn
 for barebox@lists.infradead.org; Mon, 25 Jun 2012 17:38:38 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 25 Jun 2012 19:38:20 +0200
Message-Id: <1340645910-15668-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1340645910-15668-1-git-send-email-s.hauer@pengutronix.de>
References: <1340645910-15668-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 02/12] tlsf: Use NULL instead of 0 for returning NULL pointers
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/tlsf.c |   12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/common/tlsf.c b/common/tlsf.c
index c810e8d..9515ac7 100644
--- a/common/tlsf.c
+++ b/common/tlsf.c
@@ -367,7 +367,7 @@ static block_header_t* search_suitable_block(pool_t* pool, int* fli, int* sli)
 		if (!fl_map)
 		{
 			/* No free blocks available, memory has been exhausted. */
-			return 0;
+			return NULL;
 		}
 
 		fl = tlsf_ffs(fl_map);
@@ -563,7 +563,7 @@ static block_header_t* block_trim_free_leading(pool_t* pool, block_header_t* blo
 static block_header_t* block_locate_free(pool_t* pool, size_t size)
 {
 	int fl = 0, sl = 0;
-	block_header_t* block = 0;
+	block_header_t* block = NULL;
 
 	if (size)
 	{
@@ -582,7 +582,7 @@ static block_header_t* block_locate_free(pool_t* pool, size_t size)
 
 static void* block_prepare_used(pool_t* pool, block_header_t* block, size_t size)
 {
-	void* p = 0;
+	void* p = NULL;
 	if (block)
 	{
 		block_trim_free(pool, block, size);
@@ -737,7 +737,7 @@ size_t tlsf_block_size(void* ptr)
 ** tlsf_create, equal to the size of a pool_t plus overhead of the initial
 ** free block and the sentinel block.
 */
-size_t tlsf_overhead()
+size_t tlsf_overhead(void)
 {
 	const size_t pool_overhead = sizeof(pool_t) + 2 * block_header_overhead;
 	return pool_overhead;
@@ -790,7 +790,7 @@ tlsf_pool tlsf_create(void* mem, size_t bytes)
 			(unsigned int)(pool_overhead + block_size_min),
 			(unsigned int)(pool_overhead + block_size_max));
 #endif
-		return 0;
+		return NULL;
 	}
 
 	/* Construct a valid pool object. */
@@ -915,7 +915,7 @@ void tlsf_free(tlsf_pool tlsf, void* ptr)
 void* tlsf_realloc(tlsf_pool tlsf, void* ptr, size_t size)
 {
 	pool_t* pool = tlsf_cast(pool_t*, tlsf);
-	void* p = 0;
+	void* p = NULL;
 
 	/* Zero-size requests are treated as free. */
 	if (ptr && size == 0)
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
