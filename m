Delivery-date: Fri, 16 Sep 2022 14:54:36 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oZArc-006g9A-1v
	for lore@lore.pengutronix.de; Fri, 16 Sep 2022 14:54:36 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oZArZ-0003Ja-KH
	for lore@pengutronix.de; Fri, 16 Sep 2022 14:54:35 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rJFvmsUaxIiC6uyR13K1Q3PAE/WYlj3/gyQT6CGOupg=; b=kO9YPfNMfz4yrh
	kNkvRlUHoQSC22RXr4g0uycBw7a+sxmSUwYwUdvwbNtLTEr5n92/SPtM+Gra/Rz/wc2cvHUV9nV/y
	DCO2HJaCw30WF65qwOoRoJ1wPPyA4nXdXk54D21b/CXG3kEBtdTzXuTqYd/Vlp4kqPQdXGTH8loWC
	c1moNWDFbkIUDzYbBWnzLl0GAlzbMkweNisdpLKGeDeYH2Aeao3Zqe4nZz4pUowQuF/47CnpgZEBS
	Qe3T7E314Jf3mz54kTA0OqLXLMkiCYLD/A9K5DRaypm2UhaNTACl85GnXTbCmfjvbqaZPaPjqmZQ4
	PfE6u3RRR6Mm/s9OhorA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oZAq2-00DMxU-6j; Fri, 16 Sep 2022 12:52:58 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oZApg-00DMnx-C4
	for barebox@lists.infradead.org; Fri, 16 Sep 2022 12:52:40 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oZApf-0002zE-2H; Fri, 16 Sep 2022 14:52:35 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1oZApf-0015TV-NE; Fri, 16 Sep 2022 14:52:34 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1oZApd-00G1v6-6J; Fri, 16 Sep 2022 14:52:33 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri, 16 Sep 2022 14:52:31 +0200
Message-Id: <20220916125232.3775559-3-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220916125232.3775559-1-s.hauer@pengutronix.de>
References: <20220916125232.3775559-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220916_055236_657873_BBACC0FC 
X-CRM114-Status: GOOD (  32.89  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Cc: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/3] tftp: implement UDP reorder cache using lists
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The UDP reorder cache can be much easier implemented using lists.
As a bonus the cache grows and shrinks on demand and no fixed size
has to be configured at compile time.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/Kconfig |  22 -----
 fs/tftp.c  | 242 ++++++++---------------------------------------------
 2 files changed, 36 insertions(+), 228 deletions(-)

diff --git a/fs/Kconfig b/fs/Kconfig
index cf884e0646..0c49342859 100644
--- a/fs/Kconfig
+++ b/fs/Kconfig
@@ -57,28 +57,6 @@ config FS_TFTP_MAX_WINDOW_SIZE
 	  Requires tftp "windowsize" (RFC 7440) support on server side
 	  to have an effect.
 
-config FS_TFTP_REORDER_CACHE_SIZE
-	int
-	prompt "number of out-of-order tftp packets to be cached"
-	depends on FS_TFTP
-	default 16 if FS_TFTP_MAX_WINDOW_SIZE > 16
-	default  0 if FS_TFTP_MAX_WINDOW_SIZE = 1
-        ## TODO: it should be 'FS_TFTP_MAX_WINDOW_SIZE - 1' but this
-        ## is not supported by Kconfig
-	default FS_TFTP_MAX_WINDOW_SIZE
-	range 0 FS_TFTP_MAX_WINDOW_SIZE
-	help
-	  UDP allows reordering of datagrams; with this option,
-	  unexpected tftp packets will be cached and later
-	  reassembled.  This increases stability of the tftp download
-	  with the cost of memory (around 1440 bytes per cache
-	  element) and barebox binary size (around 700 bytes).
-
-	  A value of 0 disables caching.
-
-	  Requires tftp "windowsize" (RFC 7440) support on server side
-	  to have an effect.
-
 config FS_OMAP4_USBBOOT
 	bool
 	prompt "Filesystem over usb boot"
diff --git a/fs/tftp.c b/fs/tftp.c
index f089e2f693..0094825217 100644
--- a/fs/tftp.c
+++ b/fs/tftp.c
@@ -78,9 +78,6 @@
 /* allocate this number of blocks more than needed in the fifo */
 #define TFTP_EXTRA_BLOCKS	2
 
-/* size of cache which deals with udp reordering */
-#define TFTP_WINDOW_CACHE_NUM	CONFIG_FS_TFTP_REORDER_CACHE_SIZE
-
 /* marker for an emtpy 'tftp_cache' */
 #define TFTP_CACHE_NO_ID	(-1)
 
@@ -101,24 +98,12 @@ struct tftp_block {
 	uint16_t id;
 	uint16_t len;
 
-	struct list_head head;
+	struct list_head list;
 	uint8_t data[];
 };
 
 struct tftp_cache {
-	/* The id located at @pos or TFTP_CACHE_NO_ID when cache is empty.  It
-	   is possible that the corresponding bit in @used is NOT set. */
-	unsigned int		id;
-	unsigned int		pos;
-
-	/* bitmask */
-	unsigned long		used[BITS_TO_LONGS(TFTP_WINDOW_CACHE_NUM)];
-
-	/* size of the cache; is limited by TFTP_WINDOW_CACHE_NUM and the
-	   actual window size */
-	unsigned int		size;
-	unsigned int		block_len;
-	struct tftp_block	*blocks[TFTP_WINDOW_CACHE_NUM];
+	struct list_head	blocks;
 };
 
 struct file_priv {
@@ -145,18 +130,6 @@ struct tftp_priv {
 	IPaddr_t server;
 };
 
-static inline bool is_block_before(uint16_t a, uint16_t b)
-{
-	return (int16_t)(b - a) > 0;
-}
-
-static inline uint16_t get_block_delta(uint16_t a, uint16_t b)
-{
-	debug_assert(!is_block_before(b, a));
-
-	return b - a;
-}
-
 static bool in_window(uint16_t block, uint16_t start, uint16_t end)
 {
 	/* handle the three cases:
@@ -169,191 +142,37 @@ static bool in_window(uint16_t block, uint16_t start, uint16_t end)
 		(end   <= start && start <= block));
 }
 
-static inline size_t tftp_window_cache_size(struct tftp_cache const *cache)
-{
-	/* allows to optimize away the cache code when TFTP_WINDOW_CACHE_SIZE
-	   is 0 */
-	return TFTP_WINDOW_CACHE_NUM == 0 ? 0 : cache->size;
-}
-
-static void tftp_window_cache_init(struct tftp_cache *cache,
-				   uint16_t block_len, uint16_t window_size)
-{
-	debug_assert(window_size > 0);
-
-	*cache = (struct tftp_cache) {
-		.id		= TFTP_CACHE_NO_ID,
-		.block_len	= block_len,
-		.size		= min_t(uint16_t, window_size - 1,
-					ARRAY_SIZE(cache->blocks)),
-	};
-}
-
 static void tftp_window_cache_free(struct tftp_cache *cache)
 {
-	size_t	cache_size = tftp_window_cache_size(cache);
-	size_t	i;
+	struct tftp_block *block, *tmp;
 
-	for (i = 0; i < cache_size; ++i) {
-		free(cache->blocks[i]);
-		cache->blocks[i] = NULL;
-	}
-}
-
-static void tftp_window_cache_reset(struct tftp_cache *cache)
-{
-	cache->id = TFTP_CACHE_NO_ID;
-	memset(cache->used, 0, sizeof cache->used);
-}
-
-static int tftp_window_cache_get_pos(struct tftp_cache const *cache, uint16_t id)
-{
-	size_t		cache_size = tftp_window_cache_size(cache);
-	unsigned int	pos;
-
-	if (cache_size == 0)
-		return -1;
-
-	if (cache->id == TFTP_CACHE_NO_ID)
-		return -1;
-
-	if (!in_window(id, cache->id, cache->id + cache_size - 1))
-		return -1;
-
-	pos  = cache->pos + get_block_delta(cache->id, id);
-	pos %= cache_size;
-
-	return pos;
-}
-
-/* returns whether the first cached element has the given @id */
-static bool tftp_window_cache_starts_with(struct tftp_cache const *cache,
-					  uint16_t id)
-{
-	return (TFTP_WINDOW_CACHE_NUM > 0 &&
-		cache->id != TFTP_CACHE_NO_ID &&
-		cache->id == id &&
-		test_bit(cache->pos, cache->used));
-}
-
-static bool tftp_window_cache_is_empty(struct tftp_cache const *cache)
-{
-	/* use this indirection to avoid warnings about a '0 < 0' comparison
-	   in the loop condition when TFTP_WINDOW_CACHE_NUM is zero */
-	size_t	cache_size = ARRAY_SIZE(cache->used);
-	size_t	i;
-
-	for (i = 0; i < cache_size; ++i) {
-		if (cache->used[i] != 0)
-			return false;
-	}
-
-	return true;
+	list_for_each_entry_safe(block, tmp, &cache->blocks, list)
+		free(block);
 }
 
 static int tftp_window_cache_insert(struct tftp_cache *cache, uint16_t id,
 				    void const *data, size_t len)
 {
-	size_t const		cache_size = tftp_window_cache_size(cache);
-	int			pos;
-	struct tftp_block	*block;
-
-	if (cache_size == 0)
-		return -ENOSPC;
-
-	if (cache->id == TFTP_CACHE_NO_ID) {
-		/* initialize cache when it does not contain elements yet */
-		cache->id = id;
-		cache->pos = 0;
-
-		/* sanity check; cache is expected to be empty */
-		debug_assert(tftp_window_cache_is_empty(cache));
-	}
-
-	pos = tftp_window_cache_get_pos(cache, id);
-	if (pos < 0)
-		return -ENOSPC;
-
-	debug_assert(pos < cache_size);
-
-	if (test_bit(pos, cache->used))
-		/* block already cached */
-		return 0;
+	struct tftp_block *block, *new;
 
-	block = cache->blocks[pos];
-	if (!block) {
-		/* allocate space for the block; after being released, this
-		   memory can be reused for other blocks during the same tftp
-		   transfer */
-		block = malloc(sizeof *block + cache->block_len);
-		if (!block)
-			return -ENOMEM;
+	list_for_each_entry(block, &cache->blocks, list) {
+		if (block->id == id)
+			return 0;
+		if (block->id < id)
+			continue;
 
-		cache->blocks[pos] = block;
+		break;
 	}
 
-	__set_bit(pos, cache->used);
-	memcpy(block->data, data, len);
-	block->id = id;
-	block->len = len;
+	new = xzalloc(sizeof(*new) + len);
+	memcpy(new->data, data, len);
+	new->id = id;
+	new->len = len;
+	list_add_tail(&new->list, &block->list);
 
 	return 0;
 }
 
-/* Marks the element at 'pos' as unused and updates internal cache information.
-   Returns true iff element at pos was valid. */
-static bool tftp_window_cache_remove(struct tftp_cache *cache, unsigned int pos)
-{
-	size_t const	cache_size = tftp_window_cache_size(cache);
-	bool		res;
-
-	if (cache_size == 0)
-		return 0;
-
-	res = __test_and_clear_bit(pos, cache->used);
-
-	if (tftp_window_cache_is_empty(cache)) {
-		/* cache has been cleared; reset pointers */
-		cache->id = TFTP_CACHE_NO_ID;
-	} else if (pos != cache->pos) {
-		/* noop; elements has been removed from the middle of cache */
-	} else {
-		/* first element of cache has been removed; proceed to the
-		   next one */
-		cache->id  += 1;
-		cache->pos += 1;
-		cache->pos %= cache_size;
-	}
-
-	return res;
-}
-
-/* Releases the first element from the cache and returns its content.
- *
- * Function can return NULL when the element is not cached
- */
-static struct tftp_block *tftp_window_cache_pop(struct tftp_cache *cache)
-{
-	unsigned int	pos = cache->pos;
-
-	debug_assert(cache->id != TFTP_CACHE_NO_ID);
-
-	if (!tftp_window_cache_remove(cache, pos))
-		return NULL;
-
-	return cache->blocks[pos];
-}
-
-static bool tftp_window_cache_remove_id(struct tftp_cache *cache, uint16_t id)
-{
-	int		pos = tftp_window_cache_get_pos(cache, id);
-
-	if (pos < 0)
-		return false;
-
-	return tftp_window_cache_remove(cache, pos);
-}
-
 static int tftp_truncate(struct device_d *dev, FILE *f, loff_t size)
 {
 	return 0;
@@ -444,7 +263,6 @@ static int tftp_send(struct file_priv *priv)
 		priv->ack_block += priv->windowsize;
 		pkt = (unsigned char *)s;
 		len = pkt - xp;
-		tftp_window_cache_reset(&priv->cache);
 		break;
 	}
 
@@ -562,8 +380,7 @@ static int tftp_allocate_transfer(struct file_priv *priv)
 			goto err;
 		}
 	} else {
-		tftp_window_cache_init(&priv->cache,
-				       priv->blocksize, priv->windowsize);
+		INIT_LIST_HEAD(&priv->cache.blocks);
 	}
 
 	return 0;
@@ -606,7 +423,7 @@ static void tftp_apply_window_cache(struct file_priv *priv)
 {
 	struct tftp_cache *cache = &priv->cache;
 
-	while (tftp_window_cache_starts_with(cache, priv->last_block + 1)) {
+	while (1) {
 		struct tftp_block *block;
 
 		/* can be changed by tftp_put_data() below and must be
@@ -614,12 +431,26 @@ static void tftp_apply_window_cache(struct file_priv *priv)
 		if (priv->state != STATE_RDATA)
 			return;
 
-		block = tftp_window_cache_pop(cache);
+		if (list_empty(&cache->blocks))
+			return;
 
-		debug_assert(block);
-		debug_assert(block->id == (uint16_t)(priv->last_block + 1));
+		block = list_first_entry(&cache->blocks, struct tftp_block, list);
+
+		if (block->id < priv->last_block + 1) {
+			/* shouldn't happen, but be sure */
+			list_del(&block->list);
+			free(block);
+			continue;
+		}
+
+		if (block->id != priv->last_block + 1)
+			return;
 
 		tftp_put_data(priv, block->id, block->data, block->len);
+
+		list_del(&block->list);
+
+		free(block);
 	}
 }
 
@@ -636,7 +467,6 @@ static void tftp_handle_data(struct file_priv *priv, uint16_t block,
 		   fifo directly and try to apply cached items then */
 		tftp_timer_reset(priv);
 		tftp_put_data(priv, block, data, len);
-		tftp_window_cache_remove_id(&priv->cache, block);
 		tftp_apply_window_cache(priv);
 	} else if (!in_window(block, exp_block, priv->ack_block)) {
 		/* completely unexpected and unrelated to actual window;
-- 
2.30.2



