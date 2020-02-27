Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7MUW-0004LQ-Pd
 for barebox@lists.infradead.org; Thu, 27 Feb 2020 16:58:30 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 27 Feb 2020 17:58:25 +0100
Message-Id: <20200227165825.1624-3-a.fatoum@pengutronix.de>
In-Reply-To: <20200227165825.1624-1-a.fatoum@pengutronix.de>
References: <20200227165825.1624-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 2/2] Revert "block: Adjust cache sizes"
To: barebox@lists.infradead.org
Cc: Hubert Feurstein <h.feurstein@gmail.com>, Ahmad Fatoum <a.fatoum@pengutronix.de>

On 12/13/19 2:12 PM, Sascha Hauer wrote:
> On Tue, Dec 10, 2019 at 03:44:52PM +0100, Hubert Feurstein wrote:
>> With v2015.06.0 the indicated progress of the copy command is very
>> smooth. Calling "cp -v /dev/zero /dev/mmc3.root" takes about 80
>> seconds for 256MB. But with v2019.12.0 the progress is very bumpy and
>> the copy takes about 280 seconds.
>>
>> I've tracked this down to this commit which destroys the performance:
>> "block: Adjust cache sizes" (b6fef20c1215c6ef0004f6af4a9c4b77af51dc43)
>
> We could just revert this patch. I can't find any workload that gets
> faster with b6fef20c1215. It's rather the other way round.

Do this by reverting commit b6fef20c1215c6ef0004f6af4a9c4b77af51dc43.

Reported-by: Hubert Feurstein <h.feurstein@gmail.com>
Suggested-by: Sascha Hauer <s.hauer@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/block.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/common/block.c b/common/block.c
index 8b43c3c83ae3..02be80d7ccf3 100644
--- a/common/block.c
+++ b/common/block.c
@@ -36,7 +36,7 @@ struct chunk {
 	struct list_head list;
 };
 
-#define BUFSIZE (PAGE_SIZE * 4)
+#define BUFSIZE (PAGE_SIZE * 16)
 
 static int writebuffer_io_len(struct block_device *blk, struct chunk *chunk)
 {
@@ -391,7 +391,7 @@ int blockdevice_register(struct block_device *blk)
 	dev_dbg(blk->dev, "rdbufsize: %d blockbits: %d blkmask: 0x%08x\n",
 		blk->rdbufsize, blk->blockbits, blk->blkmask);
 
-	for (i = 0; i < 32; i++) {
+	for (i = 0; i < 8; i++) {
 		struct chunk *chunk = xzalloc(sizeof(*chunk));
 		chunk->data = dma_alloc(BUFSIZE);
 		chunk->num = i;
-- 
2.25.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
