Delivery-date: Mon, 15 Aug 2022 10:49:03 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oNVmO-006EZO-Uy
	for lore@lore.pengutronix.de; Mon, 15 Aug 2022 10:49:03 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oNVmO-0001Gi-FB
	for lore@pengutronix.de; Mon, 15 Aug 2022 10:49:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=JbQZv481kWn9uvEaz6IYNezSX6e/0jPNulq3rz6lPfE=; b=t78YTVpHHMBx51Ju+bkMZbT+SR
	UUwyflM0TRyWN0wDPnAy3FuY0qeLr8Yp9cwZEcvX2n96FjIP1kYI7+8BOfnYfZDPszslbuf06TL4X
	lQZjUZw7gMbXheOebD89vuXWjs5kD4kCeSH+1vIaYTsyYuVjJenuU/gzcMGhb1Bc0zgvAJC5UEPnv
	6ZokM2NIVQG7I1yooXgEDPco2f+tSf5tSZ+DICXzmBGnBJMiv5en+DyKYWKLp9ggoSDmO9Qobo2Up
	F5YSqKA7TyNDiVNlvxjD/YY5W9W8ORNni5j1DJucJ/jSPykY0Xwhw9pkkNSay//ay7wCqnSILffvr
	2X54Kurg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oNVkM-00DM8A-CL; Mon, 15 Aug 2022 08:46:55 +0000
Received: from smtpout-3.cvg.de ([2003:49:a034:1067:5::3])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oNVh2-00DJjA-5v
	for barebox@lists.infradead.org; Mon, 15 Aug 2022 08:43:32 +0000
Received: from mail-mta-3.intern.sigma-chemnitz.de (mail-mta-3.intern.sigma-chemnitz.de [192.168.12.71])
	by mail-out-3.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTPS id 27F8giEW848755
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=OK)
	for <barebox@lists.infradead.org>; Mon, 15 Aug 2022 10:42:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sigma-chemnitz.de;
	s=v2022040800; t=1660552964;
	bh=JbQZv481kWn9uvEaz6IYNezSX6e/0jPNulq3rz6lPfE=; l=12699;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=yH5u4zmUEtfCV2rKyl+wdW7iHGQjPo+313Zoo116/O+HkN2ZEsESsJZCVsDWUJXKa
	 f7RZu+bYw55xFndWVzzHrx+xi872zpVxLbsre3KQhFxnRdGtpNlPx0Q351P0fkgRfP
	 VG+juZ8TE7BTd/JnLKanU/CCMi2cc9Eqye7w5WCCFdya0AwQc5ToffCc4MQn65ittb
	 pIvMubE8cF3o1JqvIb4x/bUuTA3hXsLN/G58KKS21dGNT/wkS2mAHaNiV7oEfp2S8A
	 83PKh40mg7UWR5UsMyVsVeJ15Qu2MEbXxNwacnIVfgOrl78KZkj3sg39ulXtQsZF21
	 eYxwDkj7lFG0w==
Received: from reddoxx.intern.sigma-chemnitz.de (reddoxx.sigma.local [192.168.16.32])
	by mail-mta-3.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTP id 27F8gYEB2540874
	for <barebox@lists.infradead.org> from enrico.scholz@sigma-chemnitz.de; Mon, 15 Aug 2022 10:42:35 +0200
Received: from mail-msa-2.intern.sigma-chemnitz.de ( [192.168.12.72]) by reddoxx.intern.sigma-chemnitz.de
	(Reddoxx engine) with SMTP id 92E4F0FE7B; Mon, 15 Aug 2022 10:42:29 +0200
Received: from ensc-pc.intern.sigma-chemnitz.de (ensc-pc.intern.sigma-chemnitz.de [192.168.3.24])
	by mail-msa-2.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTPS id 27F8gQ3F634057
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO);
	Mon, 15 Aug 2022 10:42:28 +0200
Received: from ensc by ensc-pc.intern.sigma-chemnitz.de with local (Exim 4.95)
	(envelope-from <ensc@sigma-chemnitz.de>)
	id 1oNVg2-000EJZ-5p;
	Mon, 15 Aug 2022 10:42:26 +0200
From: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
To: barebox@lists.infradead.org
Cc: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
Date: Mon, 15 Aug 2022 10:42:21 +0200
Message-Id: <437965ddef9369304f5671dfb5ae7ac6414ac710.1660552646.git.enrico.scholz@sigma-chemnitz.de>
X-Mailer: git-send-email 2.37.1
In-Reply-To: <cover.1660552646.git.enrico.scholz@sigma-chemnitz.de>
References: <cover.1660552646.git.enrico.scholz@sigma-chemnitz.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220815_014328_611640_BF973EEB 
X-CRM114-Status: GOOD (  32.67  )
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
X-Spam-Status: No, score=-103.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,USER_IN_WELCOMELIST,USER_IN_WHITELIST
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v3 17/18] tftp: reorder tftp packets
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

| add/remove: 3/0 grow/shrink: 4/0 up/down: 920/0 (920)
| Function                                     old     new   delta
| tftp_handler                                 860    1200    +340
| tftp_put_data                                  -     184    +184
| tftp_window_cache_remove                       -     124    +124
| tftp_window_cache_get_pos                      -     120    +120
| tftp_do_open                                 536     608     +72
| tftp_do_close                                260     312     +52
| tftp_send                                    364     392     +28
| Total: Before=626431, After=627351, chg +0.15%

After setting FS_TFTP_REORDER_CACHE_SIZE Kconfig option to 0, numbers
are going down to

| add/remove: 0/0 grow/shrink: 3/0 up/down: 188/0 (188)
| Function                                     old     new   delta
| tftp_handler                                 860     992    +132
| tftp_send                                    364     392     +28
| tftp_do_open                                 536     564     +28
| Total: Before=626431, After=626619, chg +0.03%

Signed-off-by: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
---
 fs/Kconfig |  22 ++++
 fs/tftp.c  | 307 ++++++++++++++++++++++++++++++++++++++++++++++++++++-
 2 files changed, 324 insertions(+), 5 deletions(-)

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
index d02ca750cd6d..8a2c2299a52f 100644
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
@@ -73,6 +74,12 @@
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
@@ -86,6 +93,30 @@
 
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
@@ -103,12 +134,222 @@ struct file_priv {
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
@@ -197,6 +438,7 @@ static int tftp_send(struct file_priv *priv)
 		priv->ack_block += priv->windowsize;
 		pkt = (unsigned char *)s;
 		len = pkt - xp;
+		tftp_window_cache_reset(&priv->cache);
 		break;
 	}
 
@@ -321,6 +563,60 @@ static void tftp_put_data(struct file_priv *priv, uint16_t block,
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
@@ -387,6 +683,7 @@ static void tftp_recv(struct file_priv *priv,
 			priv->state = STATE_RDATA;
 			priv->tftp_con->udp->uh_dport = uh_sport;
 			priv->last_block = 0;
+			tftp_window_cache_reset(&priv->cache);
 
 			if (block != 1) {	/* Assertion */
 				pr_err("error: First block is not block 1 (%d)\n",
@@ -397,11 +694,7 @@ static void tftp_recv(struct file_priv *priv,
 			}
 		}
 
-		if (block != (uint16_t)(priv->last_block + 1))
-			break;
-
-		tftp_timer_reset(priv);
-		tftp_put_data(priv, block, pkt + 2, len);
+		tftp_handle_data(priv, block, pkt + 2, len);
 
 		break;
 
@@ -449,6 +742,9 @@ static int tftp_start_transfer(struct file_priv *priv)
 			priv->fifo = NULL;
 			return -ENOMEM;
 		}
+	} else {
+		tftp_window_cache_init(&priv->cache,
+				       priv->blocksize, priv->windowsize);
 	}
 
 	if (priv->push) {
@@ -586,6 +882,7 @@ static int tftp_do_close(struct file_priv *priv)
 	}
 
 	net_unregister(priv->tftp_con);
+	tftp_window_cache_free(&priv->cache);
 	kfifo_free(priv->fifo);
 	free(priv->filename);
 	free(priv->buf);
-- 
2.37.1



