Delivery-date: Tue, 30 Aug 2022 09:41:43 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oSvsV-001UJT-O4
	for lore@lore.pengutronix.de; Tue, 30 Aug 2022 09:41:43 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oSvsS-0003TS-MV
	for lore@pengutronix.de; Tue, 30 Aug 2022 09:41:43 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=HB6pgs02Nf2CEeoDinJpEqN2j3IW/sELJgW9011W6S8=; b=bDufnX0K72E3yzlyz3EQ/J5pZF
	VOQLwDgboEXxOXJ1OrB3B1hReGavGBbkUhTG0vMbY+4Vy2LxLDJ7fSTBx5TDyQtXAFgIUoEIUIpog
	J9Pb5CJzm6m2Zdog3F3H2Sva8+WtackkpQqde4Oi5AjITqBPgwbtma8JPYdJH1lvAn2NgVIeOiHcN
	9wKhwxoT8n/GMvuKMzGoVOgXYtosee2tqS3aTRMXyqhHCFN0QodszTKa4KklBf1d56vCckLrrRnt2
	PAFHxucYjlnkzlQ6rdl6hqnp8RPFuCZWWTHwivqSz5yRmUU9awGq75uFV7lMsCrp2THOedI5j51bV
	pr92cBuw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSvr0-00EpnT-UH; Tue, 30 Aug 2022 07:40:13 +0000
Received: from smtpout-3.cvg.de ([2003:49:a034:1067:5::3])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSvq3-00Ep4p-B7
	for barebox@lists.infradead.org; Tue, 30 Aug 2022 07:39:14 +0000
Received: from mail-mta-3.intern.sigma-chemnitz.de (mail-mta-3.intern.sigma-chemnitz.de [192.168.12.71])
	by mail-out-3.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTPS id 27U7cawd993534
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=OK)
	for <barebox@lists.infradead.org>; Tue, 30 Aug 2022 09:38:36 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sigma-chemnitz.de;
	s=v2022040800; t=1661845116;
	bh=HB6pgs02Nf2CEeoDinJpEqN2j3IW/sELJgW9011W6S8=; l=12436;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=N7jvcRAg7U+6I0o4t1IslhtdDBU1aew3FFJTUObXHHSoy4lioIhaXAYdWXn0RQ2dR
	 TJmOFtHZOvI1iMiztGrUqVQcsQw7ccF74mSgrsUlq42v4wRPhJc7Sf9Rz8fGTV9AaX
	 hpmy50brNXAh5PP20QQsdLZ1VQpdSMSFNTh8D4MD3FepiFT0UcTVN/HLTJ8utIXAt9
	 rNJ04ubZYZ9Tg1V5ld9sBLx1idg0QkJh85Jx7DjvTPiAPxOTXvhHIxlyTa2ZBqaXtf
	 pFutmedwypVH4trxOVJwz6lDXPIptA3XLJop/lZWW9n9KciIsacz5OzHkzn+SoSezW
	 Wtn0FkW3O3QIA==
Received: from reddoxx.intern.sigma-chemnitz.de (reddoxx.sigma.local [192.168.16.32])
	by mail-mta-3.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTP id 27U7cQnG2895746
	for <barebox@lists.infradead.org> from enrico.scholz@sigma-chemnitz.de; Tue, 30 Aug 2022 09:38:27 +0200
Received: from mail-msa-2.intern.sigma-chemnitz.de ( [192.168.12.72]) by reddoxx.intern.sigma-chemnitz.de
	(Reddoxx engine) with SMTP id 1E877CFE61F; Tue, 30 Aug 2022 09:38:22 +0200
Received: from ensc-pc.intern.sigma-chemnitz.de (ensc-pc.intern.sigma-chemnitz.de [192.168.3.24])
	by mail-msa-2.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTPS id 27U7cKBV772621
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO);
	Tue, 30 Aug 2022 09:38:20 +0200
Received: from ensc by ensc-pc.intern.sigma-chemnitz.de with local (Exim 4.95)
	(envelope-from <ensc@sigma-chemnitz.de>)
	id 1oSvpE-00BJ3c-DM;
	Tue, 30 Aug 2022 09:38:20 +0200
From: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
To: barebox@lists.infradead.org
Cc: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
Date: Tue, 30 Aug 2022 09:38:13 +0200
Message-Id: <20220830073816.2694734-19-enrico.scholz@sigma-chemnitz.de>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20220830073816.2694734-1-enrico.scholz@sigma-chemnitz.de>
References: <20220830073816.2694734-1-enrico.scholz@sigma-chemnitz.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220830_003911_758259_3EF0B026 
X-CRM114-Status: GOOD (  33.06  )
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-103.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED,USER_IN_WELCOMELIST,
	USER_IN_WHITELIST autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v4 18/21] tftp: reorder tftp packets
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

With the tftp "windowsize" option, reordering of udp datagrams becomes
an issue.  Depending on the network topology, this reordering occurs
several times with large tftp transfers and will heavily reduce the
transfer speed.

This patch adds a packet cache so that datagrams can be reassembled in
the correct order.

Because it increases memory usage and barebox binary size, it is an
Kconfig option.

bloat-o-meter reports with a non-zero FS_TFTP_REORDER_CACHE_SIZE

| add/remove: 3/0 grow/shrink: 4/0 up/down: 916/0 (916)
| Function                                     old     new   delta
| tftp_handler                                 920    1244    +324
| tftp_put_data                                  -     184    +184
| tftp_window_cache_remove                       -     124    +124
| tftp_window_cache_get_pos                      -     120    +120
| tftp_allocate_transfer                       104     188     +84
| tftp_do_close                                260     312     +52
| tftp_send                                    384     412     +28
| Total: Before=630104, After=631020, chg +0.15%

After setting FS_TFTP_REORDER_CACHE_SIZE Kconfig option to 0, numbers
are going down to

| add/remove: 0/0 grow/shrink: 3/0 up/down: 152/0 (152)
| Function                                     old     new   delta
| tftp_handler                                 920    1012     +92
| tftp_allocate_transfer                       104     136     +32
| tftp_send                                    384     412     +28
| Total: Before=630104, After=630256, chg +0.02%

Signed-off-by: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
---
 fs/Kconfig |  22 ++++
 fs/tftp.c  | 307 +++++++++++++++++++++++++++++++++++++++++++++++++++--
 2 files changed, 323 insertions(+), 6 deletions(-)

diff --git a/fs/Kconfig b/fs/Kconfig
index 0c4934285942..cf884e0646a1 100644
--- a/fs/Kconfig
+++ b/fs/Kconfig
@@ -57,6 +57,28 @@ config FS_TFTP_MAX_WINDOW_SIZE
 	  Requires tftp "windowsize" (RFC 7440) support on server side
 	  to have an effect.
 
+config FS_TFTP_REORDER_CACHE_SIZE
+	int
+	prompt "number of out-of-order tftp packets to be cached"
+	depends on FS_TFTP
+	default 16 if FS_TFTP_MAX_WINDOW_SIZE > 16
+	default  0 if FS_TFTP_MAX_WINDOW_SIZE = 1
+        ## TODO: it should be 'FS_TFTP_MAX_WINDOW_SIZE - 1' but this
+        ## is not supported by Kconfig
+	default FS_TFTP_MAX_WINDOW_SIZE
+	range 0 FS_TFTP_MAX_WINDOW_SIZE
+	help
+	  UDP allows reordering of datagrams; with this option,
+	  unexpected tftp packets will be cached and later
+	  reassembled.  This increases stability of the tftp download
+	  with the cost of memory (around 1440 bytes per cache
+	  element) and barebox binary size (around 700 bytes).
+
+	  A value of 0 disables caching.
+
+	  Requires tftp "windowsize" (RFC 7440) support on server side
+	  to have an effect.
+
 config FS_OMAP4_USBBOOT
 	bool
 	prompt "Filesystem over usb boot"
diff --git a/fs/tftp.c b/fs/tftp.c
index c6c7a2e3c887..b010a6be6dbb 100644
--- a/fs/tftp.c
+++ b/fs/tftp.c
@@ -28,6 +28,7 @@
 #include <getopt.h>
 #include <globalvar.h>
 #include <init.h>
+#include <linux/bitmap.h>
 #include <linux/stat.h>
 #include <linux/err.h>
 #include <linux/kernel.h>
@@ -72,6 +73,12 @@
 #define TFTP_MTU_SIZE		1432	/* MTU based block size */
 #define TFTP_MAX_WINDOW_SIZE	CONFIG_FS_TFTP_MAX_WINDOW_SIZE
 
+/* size of cache which deals with udp reordering */
+#define TFTP_WINDOW_CACHE_NUM	CONFIG_FS_TFTP_REORDER_CACHE_SIZE
+
+/* marker for an emtpy 'tftp_cache' */
+#define TFTP_CACHE_NO_ID	(-1)
+
 #define TFTP_ERR_RESEND	1
 
 #ifdef DEBUG
@@ -85,6 +92,30 @@
 
 static int g_tftp_window_size = DIV_ROUND_UP(TFTP_MAX_WINDOW_SIZE, 2);
 
+struct tftp_block {
+	uint16_t id;
+	uint16_t len;
+
+	struct list_head head;
+	uint8_t data[];
+};
+
+struct tftp_cache {
+	/* The id located at @pos or TFTP_CACHE_NO_ID when cache is empty.  It
+	   is possible that the corresponding bit in @used is NOT set. */
+	unsigned int		id;
+	unsigned int		pos;
+
+	/* bitmask */
+	unsigned long		used[BITS_TO_LONGS(TFTP_WINDOW_CACHE_NUM)];
+
+	/* size of the cache; is limited by TFTP_WINDOW_CACHE_NUM and the
+	   actual window size */
+	unsigned int		size;
+	unsigned int		block_len;
+	struct tftp_block	*blocks[TFTP_WINDOW_CACHE_NUM];
+};
+
 struct file_priv {
 	struct net_connection *tftp_con;
 	int push;
@@ -102,12 +133,222 @@ struct file_priv {
 	int blocksize;
 	unsigned int windowsize;
 	bool is_getattr;
+	struct tftp_cache cache;
 };
 
 struct tftp_priv {
 	IPaddr_t server;
 };
 
+static inline bool is_block_before(uint16_t a, uint16_t b)
+{
+	return (int16_t)(b - a) > 0;
+}
+
+static inline uint16_t get_block_delta(uint16_t a, uint16_t b)
+{
+	debug_assert(!is_block_before(b, a));
+
+	return b - a;
+}
+
+static bool in_window(uint16_t block, uint16_t start, uint16_t end)
+{
+	/* handle the three cases:
+	   - [ ......... | start | .. | BLOCK | .. | end | ......... ]
+	   - [ ..| BLOCK | .. | end | ................. | start | .. ]
+	   - [ ..| end | ................. | start | .. | BLOCK | .. ]
+	*/
+	return ((start <= block && block <= end) ||
+		(block <= end   && end   <= start) ||
+		(end   <= start && start <= block));
+}
+
+static inline size_t tftp_window_cache_size(struct tftp_cache const *cache)
+{
+	/* allows to optimize away the cache code when TFTP_WINDOW_CACHE_SIZE
+	   is 0 */
+	return TFTP_WINDOW_CACHE_NUM == 0 ? 0 : cache->size;
+}
+
+static void tftp_window_cache_init(struct tftp_cache *cache,
+				   uint16_t block_len, uint16_t window_size)
+{
+	debug_assert(window_size > 0);
+
+	*cache = (struct tftp_cache) {
+		.id		= TFTP_CACHE_NO_ID,
+		.block_len	= block_len,
+		.size		= min_t(uint16_t, window_size - 1,
+					ARRAY_SIZE(cache->blocks)),
+	};
+}
+
+static void tftp_window_cache_free(struct tftp_cache *cache)
+{
+	size_t	cache_size = tftp_window_cache_size(cache);
+	size_t	i;
+
+	for (i = 0; i < cache_size; ++i) {
+		free(cache->blocks[i]);
+		cache->blocks[i] = NULL;
+	}
+}
+
+static void tftp_window_cache_reset(struct tftp_cache *cache)
+{
+	cache->id = TFTP_CACHE_NO_ID;
+	memset(cache->used, 0, sizeof cache->used);
+}
+
+static int tftp_window_cache_get_pos(struct tftp_cache const *cache, uint16_t id)
+{
+	size_t		cache_size = tftp_window_cache_size(cache);
+	unsigned int	pos;
+
+	if (cache_size == 0)
+		return -1;
+
+	if (cache->id == TFTP_CACHE_NO_ID)
+		return -1;
+
+	if (!in_window(id, cache->id, cache->id + cache_size - 1))
+		return -1;
+
+	pos  = cache->pos + get_block_delta(cache->id, id);
+	pos %= cache_size;
+
+	return pos;
+}
+
+/* returns whether the first cached element has the given @id */
+static bool tftp_window_cache_starts_with(struct tftp_cache const *cache,
+					  uint16_t id)
+{
+	return (TFTP_WINDOW_CACHE_NUM > 0 &&
+		cache->id != TFTP_CACHE_NO_ID &&
+		cache->id == id &&
+		test_bit(cache->pos, cache->used));
+}
+
+static bool tftp_window_cache_is_empty(struct tftp_cache const *cache)
+{
+	/* use this indirection to avoid warnings about a '0 < 0' comparison
+	   in the loop condition when TFTP_WINDOW_CACHE_NUM is zero */
+	size_t	cache_size = ARRAY_SIZE(cache->used);
+	size_t	i;
+
+	for (i = 0; i < cache_size; ++i) {
+		if (cache->used[i] != 0)
+			return false;
+	}
+
+	return true;
+}
+
+static int tftp_window_cache_insert(struct tftp_cache *cache, uint16_t id,
+				    void const *data, size_t len)
+{
+	size_t const		cache_size = tftp_window_cache_size(cache);
+	int			pos;
+	struct tftp_block	*block;
+
+	if (cache_size == 0)
+		return -ENOSPC;
+
+	if (cache->id == TFTP_CACHE_NO_ID) {
+		/* initialize cache when it does not contain elements yet */
+		cache->id = id;
+		cache->pos = 0;
+
+		/* sanity check; cache is expected to be empty */
+		debug_assert(tftp_window_cache_is_empty(cache));
+	}
+
+	pos = tftp_window_cache_get_pos(cache, id);
+	if (pos < 0)
+		return -ENOSPC;
+
+	debug_assert(pos < cache_size);
+
+	if (test_bit(pos, cache->used))
+		/* block already cached */
+		return 0;
+
+	block = cache->blocks[pos];
+	if (!block) {
+		/* allocate space for the block; after being released, this
+		   memory can be reused for other blocks during the same tftp
+		   transfer */
+		block = malloc(sizeof *block + cache->block_len);
+		if (!block)
+			return -ENOMEM;
+
+		cache->blocks[pos] = block;
+	}
+
+	__set_bit(pos, cache->used);
+	memcpy(block->data, data, len);
+	block->id = id;
+	block->len = len;
+
+	return 0;
+}
+
+/* Marks the element at 'pos' as unused and updates internal cache information.
+   Returns true iff element at pos was valid. */
+static bool tftp_window_cache_remove(struct tftp_cache *cache, unsigned int pos)
+{
+	size_t const	cache_size = tftp_window_cache_size(cache);
+	bool		res;
+
+	if (cache_size == 0)
+		return 0;
+
+	res = __test_and_clear_bit(pos, cache->used);
+
+	if (tftp_window_cache_is_empty(cache)) {
+		/* cache has been cleared; reset pointers */
+		cache->id = TFTP_CACHE_NO_ID;
+	} else if (pos != cache->pos) {
+		/* noop; elements has been removed from the middle of cache */
+	} else {
+		/* first element of cache has been removed; proceed to the
+		   next one */
+		cache->id  += 1;
+		cache->pos += 1;
+		cache->pos %= cache_size;
+	}
+
+	return res;
+}
+
+/* Releases the first element from the cache and returns its content.
+ *
+ * Function can return NULL when the element is not cached
+ */
+static struct tftp_block *tftp_window_cache_pop(struct tftp_cache *cache)
+{
+	unsigned int	pos = cache->pos;
+
+	debug_assert(cache->id != TFTP_CACHE_NO_ID);
+
+	if (!tftp_window_cache_remove(cache, pos))
+		return NULL;
+
+	return cache->blocks[pos];
+}
+
+static bool tftp_window_cache_remove_id(struct tftp_cache *cache, uint16_t id)
+{
+	int		pos = tftp_window_cache_get_pos(cache, id);
+
+	if (pos < 0)
+		return false;
+
+	return tftp_window_cache_remove(cache, pos);
+}
+
 static int tftp_truncate(struct device_d *dev, FILE *f, loff_t size)
 {
 	return 0;
@@ -198,6 +439,7 @@ static int tftp_send(struct file_priv *priv)
 		priv->ack_block += priv->windowsize;
 		pkt = (unsigned char *)s;
 		len = pkt - xp;
+		tftp_window_cache_reset(&priv->cache);
 		break;
 	}
 
@@ -313,6 +555,9 @@ static int tftp_allocate_transfer(struct file_priv *priv)
 			priv->fifo = NULL;
 			goto err;
 		}
+	} else {
+		tftp_window_cache_init(&priv->cache,
+				       priv->blocksize, priv->windowsize);
 	}
 
 	return 0;
@@ -351,6 +596,60 @@ static void tftp_put_data(struct file_priv *priv, uint16_t block,
 	}
 }
 
+static void tftp_apply_window_cache(struct file_priv *priv)
+{
+	struct tftp_cache *cache = &priv->cache;
+
+	while (tftp_window_cache_starts_with(cache, priv->last_block + 1)) {
+		struct tftp_block *block;
+
+		/* can be changed by tftp_put_data() below and must be
+		   checked in each loop */
+		if (priv->state != STATE_RDATA)
+			return;
+
+		block = tftp_window_cache_pop(cache);
+
+		debug_assert(block);
+		debug_assert(block->id == (uint16_t)(priv->last_block + 1));
+
+		tftp_put_data(priv, block->id, block->data, block->len);
+	}
+}
+
+static void tftp_handle_data(struct file_priv *priv, uint16_t block,
+			     void const *data, size_t len)
+{
+	uint16_t exp_block;
+	int rc;
+
+	exp_block = priv->last_block + 1;
+
+	if (exp_block == block) {
+		/* datagram over network is the expected one; put it in the
+		   fifo directly and try to apply cached items then */
+		tftp_timer_reset(priv);
+		tftp_put_data(priv, block, data, len);
+		tftp_window_cache_remove_id(&priv->cache, block);
+		tftp_apply_window_cache(priv);
+	} else if (!in_window(block, exp_block, priv->ack_block)) {
+		/* completely unexpected and unrelated to actual window;
+		   ignore the packet. */
+		printf("B");
+	} else {
+		/* The 'rc < 0' below happens e.g. when datagrams in the first
+		   part of the transfer window are dropped.
+
+		   TODO: this will usually result in a timeout
+		   (TFTP_RESEND_TIMEOUT).  It should be possible to bypass
+		   this timeout by acknowledging the last packet (e.g. by
+		   doing 'priv->ack_block = priv->last_block' here). */
+		rc = tftp_window_cache_insert(&priv->cache, block, data, len);
+		if (rc < 0)
+			printf("M");
+	}
+}
+
 static void tftp_recv(struct file_priv *priv,
 			uint8_t *pkt, unsigned len, uint16_t uh_sport)
 {
@@ -440,12 +739,7 @@ static void tftp_recv(struct file_priv *priv,
 				break;
 		}
 
-		if (block != (uint16_t)(priv->last_block + 1))
-			break;
-
-		tftp_timer_reset(priv);
-		tftp_put_data(priv, block, pkt + 2, len);
-
+		tftp_handle_data(priv, block, pkt + 2, len);
 		break;
 
 	case TFTP_ERROR:
@@ -649,6 +943,7 @@ static int tftp_do_close(struct file_priv *priv)
 	}
 
 	net_unregister(priv->tftp_con);
+	tftp_window_cache_free(&priv->cache);
 	kfifo_free(priv->fifo);
 	free(priv->filename);
 	free(priv->buf);
-- 
2.37.2



