Delivery-date: Mon, 18 Jul 2022 14:25:26 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oDPoV-00D7Dg-BH
	for lore@lore.pengutronix.de; Mon, 18 Jul 2022 14:25:26 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oDPoQ-00088y-W4
	for lore@pengutronix.de; Mon, 18 Jul 2022 14:25:25 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=DkdWgBMRxNO1OPMjyjWDrBDX2V1NORRLp+1J/a05V0E=; b=y7D2swescMG80e7HsfHe2Q8SA2
	Iy3zsjrFjEPSuyI3xIzzOs2xrdrVpNpOHdLuYeObscSntNFZiBGgWpmunQ/7ywfoiGPHz4IBiSRHC
	5XJRrGzyhBqYDeLca83BqHVfgRTSqSc9eI7smQ+PGMRzSuiyPlvIJmP+yi23EtwGsYI/MhcGE0SWT
	pV6XqjRxgXoFuxijQ9YD7dkiAcGSAfGxkgTEU5bD9gMpZDPp6uWMPlXhg1qlU0+vq2aIMDn4Qbo7N
	+UQl5gZLg+Cf2APTTtkd97wKXUB2acprKT0cruPk5pEYh3GdrljhE38LCG4FPdtOlXSAcolh6Eu/A
	WEZfpTcQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oDPmz-00DE4M-ED; Mon, 18 Jul 2022 12:23:53 +0000
Received: from smtpout-3.cvg.de ([2003:49:a034:1067:5::3])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oDPmY-00DDY5-Nd
	for barebox@lists.infradead.org; Mon, 18 Jul 2022 12:23:30 +0000
Received: from mail-mta-3.intern.sigma-chemnitz.de (mail-mta-3.intern.sigma-chemnitz.de [192.168.12.71])
	by mail-out-3.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTPS id 26ICMqtN575056
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=OK)
	for <barebox@lists.infradead.org>; Mon, 18 Jul 2022 14:22:52 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sigma-chemnitz.de;
	s=v2022040800; t=1658146972;
	bh=DkdWgBMRxNO1OPMjyjWDrBDX2V1NORRLp+1J/a05V0E=; l=7355;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=Q9cwWe9YS38RYbEaNdLVyYhVO1DkCSm7/QkCmPy7KLmfz5OFDx+0m3yoQJNHmVsDL
	 aSowAb8DkMk+eDe5+JNn/yO/pzfuhEiKHLi8IlJY7o6zXG/ahprGvFleoWYTVMUJ2T
	 5IhLRpEszhMLozx4idnfWaY+8RwmsAZu7xbfLXG0ujvfqzLoS4bMH5JjePVBGMeKwe
	 gzVYFpJIv2RqEKug0Wlq8kmOPYNHmLp9aCquZOqzuzWcWFeVQlj0pD7l4GSmp0TSb8
	 5ZiYXb1wvh//pGUL1bil2+ze6bZ8Nj4YaTb3uZ18Jj5b9T6QthwCFV2vLBcrDAntHS
	 XdwhN0hDASaIA==
Received: from reddoxx.intern.sigma-chemnitz.de (reddoxx.sigma.local [192.168.16.32])
	by mail-mta-3.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTP id 26ICMaaV1699976
	for <barebox@lists.infradead.org> from enrico.scholz@sigma-chemnitz.de; Mon, 18 Jul 2022 14:22:39 +0200
Received: from mail-msa-3.intern.sigma-chemnitz.de ( [192.168.12.73]) by reddoxx.intern.sigma-chemnitz.de
	(Reddoxx engine) with SMTP id 5E222429A1D; Mon, 18 Jul 2022 14:22:33 +0200
Received: from ensc-pc.intern.sigma-chemnitz.de (ensc-pc.intern.sigma-chemnitz.de [192.168.3.24])
	by mail-msa-3.intern.sigma-chemnitz.de (8.15.2/8.15.2) with ESMTPS id 26ICMX7j549160
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO);
	Mon, 18 Jul 2022 14:22:33 +0200
Received: from ensc by ensc-pc.intern.sigma-chemnitz.de with local (Exim 4.95)
	(envelope-from <ensc@sigma-chemnitz.de>)
	id 1oDPlh-002g3n-0L;
	Mon, 18 Jul 2022 14:22:33 +0200
From: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
To: barebox@lists.infradead.org
Cc: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
Date: Mon, 18 Jul 2022 14:22:26 +0200
Message-Id: <14bf205ffe1ba093e93531b8a43758e18c18a94d.1658144543.git.enrico.scholz@sigma-chemnitz.de>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <cover.1658144543.git.enrico.scholz@sigma-chemnitz.de>
References: <cover.1658144543.git.enrico.scholz@sigma-chemnitz.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220718_052327_102846_5597BC3E 
X-CRM114-Status: GOOD (  25.41  )
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
X-Spam-Status: No, score=-104.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	USER_IN_WELCOMELIST,USER_IN_WHITELIST autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 11/13] tftp: reorder tftp packets
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

With the tftp "windowsize" option, reordering of udp datagrams becomes
an issue.  Depending on the network topology, this reordering occurs
several times with large tftp transfers and will heavily reduce the
transfer speed.

This patch adds a packet cache so that datagrams can be reassembled in
the correct order.

Because it increases memory usage, it is an Kconfig option.

Signed-off-by: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
---
 fs/Kconfig |  22 +++++++
 fs/tftp.c  | 165 +++++++++++++++++++++++++++++++++++++++++++++++++++--
 2 files changed, 181 insertions(+), 6 deletions(-)

diff --git a/fs/Kconfig b/fs/Kconfig
index 0c4934285942..02aa25d6abf7 100644
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
+	  element).
+
+          A value of 0 disables caching.
+
+	  Requires tftp "windowsize" (RFC 7440) support on server side
+	  to have an effect.
+
 config FS_OMAP4_USBBOOT
 	bool
 	prompt "Filesystem over usb boot"
diff --git a/fs/tftp.c b/fs/tftp.c
index f85136f03e22..2c2ff081be51 100644
--- a/fs/tftp.c
+++ b/fs/tftp.c
@@ -68,6 +68,9 @@
 #define TFTP_MTU_SIZE		1432	/* MTU based block size */
 #define TFTP_MAX_WINDOW_SIZE	CONFIG_FS_TFTP_MAX_WINDOW_SIZE
 
+/* size of cache which deals with udp reordering */
+#define TFTP_WINDOW_CACHE_NUM	CONFIG_FS_TFTP_REORDER_CACHE_SIZE
+
 /* calculate fifo so that it can hold the complete window plus the incoming
    packet.  Add some extra space just in case...  */
 #define TFTP_FIFO_SIZE		(TFTP_MTU_SIZE * TFTP_MAX_WINDOW_SIZE + 2048)
@@ -76,6 +79,15 @@
 
 static int g_tftp_window_size = TFTP_MAX_WINDOW_SIZE / 1;
 
+struct tftp_block {
+	uint16_t id;
+	uint8_t data[TFTP_MTU_SIZE];
+
+	/* len will not exceed TFTP_MTU_SIZE; 14 bits should suffice... */
+	uint16_t len:14;
+	bool valid:1;
+};
+
 struct file_priv {
 	struct net_connection *tftp_con;
 	int push;
@@ -93,12 +105,49 @@ struct file_priv {
 	int blocksize;
 	unsigned int windowsize;
 	bool is_getattr;
+#if TFTP_WINDOW_CACHE_NUM > 0
+	struct tftp_block window_cache[TFTP_WINDOW_CACHE_NUM];
+#endif
 };
 
 struct tftp_priv {
 	IPaddr_t server;
 };
 
+inline static size_t tftp_window_cache_size(struct file_priv const *priv)
+{
+#if TFTP_WINDOW_CACHE_NUM > 0
+	return min_t(unsigned int, priv->windowsize - 1,
+		     ARRAY_SIZE(priv->window_cache));
+#else
+	return 0;
+#endif
+}
+
+inline static struct tftp_block *tftp_window_cache_get(struct file_priv *priv,
+						       size_t idx)
+{
+#if TFTP_WINDOW_CACHE_NUM > 0
+	return &priv->window_cache[idx];
+#else
+	return NULL;
+#endif
+}
+
+static void tftp_window_cache_clear(struct file_priv *priv)
+{
+	size_t i;
+
+	for (i = 0; i < tftp_window_cache_size(priv); ++i) {
+		struct tftp_block *block = tftp_window_cache_get(priv, i);
+
+		if (block->valid)
+			pr_debug("cached item #%d still valid\n", block->id);
+
+		block->valid = false;
+	}
+}
+
 static int tftp_truncate(struct device_d *dev, FILE *f, loff_t size)
 {
 	return 0;
@@ -185,6 +234,7 @@ static int tftp_send(struct file_priv *priv)
 		priv->ack_block += priv->windowsize;
 		pkt = (unsigned char *)s;
 		len = pkt - xp;
+		tftp_window_cache_clear(priv);
 		break;
 	}
 
@@ -294,6 +344,113 @@ static void tftp_put_data(struct file_priv *priv, uint16_t block,
 	}
 }
 
+static bool in_window(uint16_t block, uint16_t start, uint16_t end)
+{
+	return ((start <= block && block <= end) ||
+		(block <= end   && end   <= start));
+}
+
+static int tftp_window_cache_insert(struct file_priv *priv, uint16_t id,
+				    void const *data, size_t len)
+{
+	size_t		i;
+
+	if (len > sizeof tftp_window_cache_get(priv, 0)->data) {
+		pr_err("datagram too large\n");
+		return -ENOMEM;
+	}
+
+	for (i = 0; i < tftp_window_cache_size(priv); ++i) {
+		struct tftp_block *block = tftp_window_cache_get(priv, i);
+
+		if (block->valid && block->id == id) {
+			if (len == block->len &&
+			    memcmp(data, block->data, len) == 0) {
+				return 0;
+			}
+
+			pr_err("cached block #%d differs from actual one\n",
+			       id);
+
+			return -EBADMSG;
+		}
+
+		if (!block->valid) {
+			memcpy(block->data, data, len);
+			block->id = id;
+			block->len = len;
+			block->valid = true;
+
+			return 0;
+		}
+	}
+
+	return -ENOMEM;
+}
+
+static bool tftp_window_cache_apply(struct file_priv *priv)
+{
+	uint16_t exp_id = priv->last_block + 1;
+	bool res = false;
+	size_t i;
+
+	for (i = 0; i < tftp_window_cache_size(priv); ++i) {
+		struct tftp_block *block = tftp_window_cache_get(priv, i);
+
+		/* can be already the case when entering the function, or
+		   caused by tftp_put_data() below */
+		if (priv->state != STATE_RDATA)
+			break;
+
+		if (!block->valid || block->id != exp_id)
+			continue;
+
+		tftp_put_data(priv, block->id, block->data, block->len);
+
+		block->valid = false;
+		exp_id = priv->last_block + 1;
+
+		res = true;
+	}
+
+	return res;
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
+
+		while (tftp_window_cache_apply(priv)) {
+			/* noop */
+		}
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
+		rc = tftp_window_cache_insert(priv, block, data, len);
+		if (rc < 0)
+			printf("M");
+	}
+}
+
 static void tftp_recv(struct file_priv *priv,
 			uint8_t *pkt, unsigned len, uint16_t uh_sport)
 {
@@ -364,6 +521,7 @@ static void tftp_recv(struct file_priv *priv,
 			priv->state = STATE_RDATA;
 			priv->tftp_con->udp->uh_dport = uh_sport;
 			priv->last_block = 0;
+			tftp_window_cache_clear(priv);
 
 			if (block != 1) {	/* Assertion */
 				pr_err("error: First block is not block 1 (%d)\n",
@@ -374,12 +532,7 @@ static void tftp_recv(struct file_priv *priv,
 			}
 		}
 
-		if (block != (uint16_t)(priv->last_block + 1)) {
-			break;
-		}
-
-		tftp_timer_reset(priv);
-		tftp_put_data(priv, block, pkt + 2, len);
+		tftp_handle_data(priv, block, pkt + 2, len);
 
 		break;
 
-- 
2.36.1



