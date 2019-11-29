Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iahz9-0006h1-St
 for barebox@lists.infradead.org; Fri, 29 Nov 2019 15:15:14 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28]
 helo=dude02.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <l.stach@pengutronix.de>) id 1iahz8-0006u0-0i
 for barebox@lists.infradead.org; Fri, 29 Nov 2019 16:15:06 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Fri, 29 Nov 2019 16:14:31 +0100
Message-Id: <20191129151505.23946-6-l.stach@pengutronix.de>
In-Reply-To: <20191129151505.23946-1-l.stach@pengutronix.de>
References: <20191129151505.23946-1-l.stach@pengutronix.de>
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
Subject: [PATCH 05/39] lib: zstd: declare locally used functions as static
To: barebox@lists.infradead.org

Fixes "no previous prototype for...) warnings in the zstd code.

Fixes: 1a39d4dcbffc (lib: Add zstd decompression module)
Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 lib/zstd/decompress.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/lib/zstd/decompress.c b/lib/zstd/decompress.c
index 8203b815caf4..19bf71288111 100644
--- a/lib/zstd/decompress.c
+++ b/lib/zstd/decompress.c
@@ -123,7 +123,7 @@ size_t ZSTD_decompressBegin(ZSTD_DCtx *dctx)
 	return 0;
 }
 
-ZSTD_DCtx *ZSTD_createDCtx_advanced(ZSTD_customMem customMem)
+static ZSTD_DCtx *ZSTD_createDCtx_advanced(ZSTD_customMem customMem)
 {
 	ZSTD_DCtx *dctx;
 
@@ -391,7 +391,7 @@ typedef struct {
 
 /*! ZSTD_getcBlockSize() :
 *   Provides the size of compressed block from block header `src` */
-size_t ZSTD_getcBlockSize(const void *src, size_t srcSize, blockProperties_t *bpPtr)
+static size_t ZSTD_getcBlockSize(const void *src, size_t srcSize, blockProperties_t *bpPtr)
 {
 	if (srcSize < ZSTD_blockHeaderSize)
 		return ERROR(srcSize_wrong);
@@ -429,7 +429,7 @@ static size_t ZSTD_setRleBlock(void *dst, size_t dstCapacity, const void *src, s
 
 /*! ZSTD_decodeLiteralsBlock() :
 	@return : nb of bytes read from src (< srcSize ) */
-size_t ZSTD_decodeLiteralsBlock(ZSTD_DCtx *dctx, const void *src, size_t srcSize) /* note : srcSize < BLOCKSIZE */
+static size_t ZSTD_decodeLiteralsBlock(ZSTD_DCtx *dctx, const void *src, size_t srcSize) /* note : srcSize < BLOCKSIZE */
 {
 	if (srcSize < MIN_CBLOCK_SIZE)
 		return ERROR(corruption_detected);
@@ -791,7 +791,7 @@ static size_t ZSTD_buildSeqTable(FSE_DTable *DTableSpace, const FSE_DTable **DTa
 	}
 }
 
-size_t ZSTD_decodeSeqHeaders(ZSTD_DCtx *dctx, int *nbSeqPtr, const void *src, size_t srcSize)
+static size_t ZSTD_decodeSeqHeaders(ZSTD_DCtx *dctx, int *nbSeqPtr, const void *src, size_t srcSize)
 {
 	const BYTE *const istart = (const BYTE *const)src;
 	const BYTE *const iend = istart + srcSize;
@@ -1494,7 +1494,7 @@ size_t ZSTD_insertBlock(ZSTD_DCtx *dctx, const void *blockStart, size_t blockSiz
 	return blockSize;
 }
 
-size_t ZSTD_generateNxBytes(void *dst, size_t dstCapacity, BYTE byte, size_t length)
+static size_t ZSTD_generateNxBytes(void *dst, size_t dstCapacity, BYTE byte, size_t length)
 {
 	if (length > dstCapacity)
 		return ERROR(dstSize_tooSmall);
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
