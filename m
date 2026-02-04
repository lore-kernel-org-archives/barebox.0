Delivery-date: Wed, 04 Feb 2026 16:17:26 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vnedC-008nOn-1r
	for lore@lore.pengutronix.de;
	Wed, 04 Feb 2026 16:17:26 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vnedB-0004Ai-78
	for lore@pengutronix.de; Wed, 04 Feb 2026 16:17:26 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=sbabowZFEqIzmVuo3uWe9YnlB6M6aqmiWpVDAOJ6G3k=; b=WxKyykVIpQIJIBAKLoFELFmQ1x
	dgMYSU8EtujZ8PZii5qGchg8eJ+ZdBIUvSmjjyAKMOqdwEUpjStyV0Fyo/EC0Jrsndo4YfqQ6QBlO
	xp4Gr7oqePyU4S7qcC+SKNf95k4HPlEt0aGH/LYApW/2uDjy8monrsVTW4F4Z8wfcMeI0B88QwC4v
	mVqXeWw3x/uJ9l1qN4ejL3vuqoVE+wJOqSVBLFASRexyWMkGxPwTejdf+nqVH5irSJXx6ibRRueJX
	z3HxBp8URcAunANEEO5PPn7gL01YNuyNHolnH8ByBLwY4ol5X+RXPBvdnWiPJhORaCjyCk1BN11hp
	+NRnW0NQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vneci-00000008dvk-0dYk;
	Wed, 04 Feb 2026 15:16:56 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vnecf-00000008dun-0KGj
	for barebox@lists.infradead.org;
	Wed, 04 Feb 2026 15:16:54 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1vnecd-00040f-Mt
	for barebox@lists.infradead.org; Wed, 04 Feb 2026 16:16:51 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Wed,  4 Feb 2026 16:10:53 +0100
Message-ID: <20260204151645.1426068-2-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260204151645.1426068-1-m.felsch@pengutronix.de>
References: <20260204151645.1426068-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260204_071653_266842_130E4B21 
X-CRM114-Status: GOOD (  16.41  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 2/2] lib: hexdump: make use of pr_print
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The hexdump library was ported from Linux which supports different
printk() level. Because the barebox print* facility is different
compared to the one from Linux the barebox printk() doesn't support
levels. Therefore the level is always set to an empty string.

Furthermore all barebox printk() calls aren't recorded by the internal
barebox_logbuf because they are mostly used for command prints. Linux on
the other hand record each printk() print.

Not recording the output can be an issue on systems which don't have a
hw-console but a USB-ACM console, because the hexdump call may already
occurred before the console was ready.

Make use of pr_print() instead to record the output within the
barebox_logbuf to be available later on via dmesg. With that the hexdump
API changes from a string based loglevel to a integer based loglevel
parameter.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
v2:
- change API to int based loglevel and make use of pr_print()

 commands/ethlog.c        |  4 ++--
 drivers/mtd/ubi/attach.c |  2 +-
 fs/ubifs/debug.c         |  4 ++--
 include/linux/printk.h   |  4 ++--
 include/printf.h         |  2 +-
 include/soc/ti/cppi5.h   |  2 +-
 lib/hexdump.c            | 13 +++++--------
 7 files changed, 14 insertions(+), 17 deletions(-)

diff --git a/commands/ethlog.c b/commands/ethlog.c
index 21d88bf1cbfb..d641fd90ddb8 100644
--- a/commands/ethlog.c
+++ b/commands/ethlog.c
@@ -12,7 +12,7 @@
 static void ethlog_rx_monitor(struct eth_device *edev, void *packet,
 			       int length)
 {
-	dev_print_hex_dump(&edev->dev, KERN_DEBUG, "rx data <: ",
+	dev_print_hex_dump(&edev->dev, MSG_DEBUG, "rx data <: ",
 			   DUMP_PREFIX_OFFSET, 16, 1, packet, length, true);
 	printk("\n");
 }
@@ -20,7 +20,7 @@ static void ethlog_rx_monitor(struct eth_device *edev, void *packet,
 static void ethlog_tx_monitor(struct eth_device *edev, void *packet,
 			       int length)
 {
-	dev_print_hex_dump(&edev->dev, KERN_DEBUG, "tx data >: ",
+	dev_print_hex_dump(&edev->dev, MSG_DEBUG, "tx data >: ",
 			   DUMP_PREFIX_OFFSET, 16, 1, packet, length, true);
 	printk("\n");
 }
diff --git a/drivers/mtd/ubi/attach.c b/drivers/mtd/ubi/attach.c
index 44fe435e4163..e49ceb8690d8 100644
--- a/drivers/mtd/ubi/attach.c
+++ b/drivers/mtd/ubi/attach.c
@@ -897,7 +897,7 @@ static int check_corruption(struct ubi_device *ubi, struct ubi_vid_hdr *vid_hdr,
 	ubi_dump_vid_hdr(vid_hdr);
 	pr_err("hexdump of PEB %d offset %d, length %d\n",
 	       pnum, ubi->leb_start, ubi->leb_size);
-	ubi_dbg_print_hex_dump(KERN_DEBUG, "", DUMP_PREFIX_OFFSET, 32, 1,
+	ubi_dbg_print_hex_dump(MSG_DEBUG, "", DUMP_PREFIX_OFFSET, 32, 1,
 			       ubi->peb_buf, ubi->leb_size, 1);
 	err = 1;
 
diff --git a/fs/ubifs/debug.c b/fs/ubifs/debug.c
index a4cffe84df71..2aae47b3b7d8 100644
--- a/fs/ubifs/debug.c
+++ b/fs/ubifs/debug.c
@@ -224,7 +224,7 @@ void ubifs_dump_node(const struct ubifs_info *c, const void *node)
 	/* If the magic is incorrect, just hexdump the first bytes */
 	if (le32_to_cpu(ch->magic) != UBIFS_NODE_MAGIC) {
 		pr_err("Not a node, first %zu bytes:", UBIFS_CH_SZ);
-		print_hex_dump(KERN_ERR, "", DUMP_PREFIX_OFFSET, 32, 1,
+		print_hex_dump(MSG_ERR, "", DUMP_PREFIX_OFFSET, 32, 1,
 			       (void *)node, UBIFS_CH_SZ, 1);
 		return;
 	}
@@ -400,7 +400,7 @@ void ubifs_dump_node(const struct ubifs_info *c, const void *node)
 		       (int)le16_to_cpu(dn->compr_type));
 		pr_err("\tdata size      %d\n", dlen);
 		pr_err("\tdata:\n");
-		print_hex_dump(KERN_ERR, "\t", DUMP_PREFIX_OFFSET, 32, 1,
+		print_hex_dump(MSG_ERR, "\t", DUMP_PREFIX_OFFSET, 32, 1,
 			       (void *)&dn->data, dlen, 0);
 		break;
 	}
diff --git a/include/linux/printk.h b/include/linux/printk.h
index 0d7180f0ebbc..6c071af5158b 100644
--- a/include/linux/printk.h
+++ b/include/linux/printk.h
@@ -202,7 +202,7 @@ struct va_format {
 #if LOGLEVEL >= MSG_DEBUG
 #define print_hex_dump_debug(prefix_str, prefix_type, rowsize,		\
 			     groupsize, buf, len, ascii)		\
-	print_hex_dump(KERN_DEBUG, prefix_str, prefix_type, rowsize,	\
+	print_hex_dump(MSG_DEBUG, prefix_str, prefix_type, rowsize,	\
 		       groupsize, buf, len, ascii)
 #else
 static inline void print_hex_dump_debug(const char *prefix_str, int prefix_type,
@@ -221,7 +221,7 @@ static inline void print_hex_dump_debug(const char *prefix_str, int prefix_type,
  * @buf: data blob to dump
  * @len: number of bytes in the @buf
  *
- * Calls print_hex_dump(), with log level of KERN_DEBUG,
+ * Calls print_hex_dump(), with log level of MSG_DEBUG,
  * rowsize of 16, groupsize of 1, and ASCII output included.
  */
 #define print_hex_dump_bytes(prefix_str, prefix_type, buf, len)	\
diff --git a/include/printf.h b/include/printf.h
index 3503b72c9e5e..92d6e18728f5 100644
--- a/include/printf.h
+++ b/include/printf.h
@@ -52,7 +52,7 @@ enum {
 extern int hex_dump_to_buffer(const void *buf, size_t len, int rowsize,
 			      int groupsize, char *linebuf, size_t linebuflen,
 			      bool ascii);
-extern void dev_print_hex_dump(struct device *dev, const char *level,
+extern void dev_print_hex_dump(struct device *dev, int level,
 			       const char *prefix_str, int prefix_type,
 			       int rowsize, int groupsize, const void *buf,
 			       size_t len, bool ascii);
diff --git a/include/soc/ti/cppi5.h b/include/soc/ti/cppi5.h
index 34e118fff25a..6331a38a85f0 100644
--- a/include/soc/ti/cppi5.h
+++ b/include/soc/ti/cppi5.h
@@ -150,7 +150,7 @@ struct cppi5_monolithic_desc_t {
 
 static inline void cppi5_desc_dump(void *desc, u32 size)
 {
-	print_hex_dump(KERN_ERR, "dump udmap_desc: ", DUMP_PREFIX_NONE,
+	print_hex_dump(MSG_ERR, "dump udmap_desc: ", DUMP_PREFIX_NONE,
 		       32, 4, desc, size, false);
 }
 
diff --git a/lib/hexdump.c b/lib/hexdump.c
index 940c4eec64e9..d98a4e6100d6 100644
--- a/lib/hexdump.c
+++ b/lib/hexdump.c
@@ -228,7 +228,7 @@ EXPORT_SYMBOL(hex_dump_to_buffer);
 
 /**
  * print_hex_dump - print a text hex dump to syslog for a binary blob of data
- * @level: kernel log level (e.g. KERN_DEBUG)
+ * @level: barebox log level (e.g. MSG_DEBUG)
  * @prefix_str: string to prefix each line with;
  *  caller supplies trailing spaces for alignment if desired
  * @prefix_type: controls whether prefix of an offset, address, or none
@@ -257,7 +257,7 @@ EXPORT_SYMBOL(hex_dump_to_buffer);
  * Example output using %DUMP_PREFIX_ADDRESS and 4-byte mode:
  * ffffffff88089af0: 73727170 77767574 7b7a7978 7f7e7d7c  pqrstuvwxyz{|}~.
  */
-void dev_print_hex_dump(struct device *dev, const char *level,
+void dev_print_hex_dump(struct device *dev, int level,
 			const char *prefix_str, int prefix_type, int rowsize,
 			int groupsize, const void *buf, size_t len, bool ascii)
 {
@@ -284,16 +284,13 @@ void dev_print_hex_dump(struct device *dev, const char *level,
 
 		switch (prefix_type) {
 		case DUMP_PREFIX_ADDRESS:
-			printk("%s%s%s%p: %s\n", level, name, prefix_str,
-			       ptr + i, linebuf);
+			pr_print(level, "%s%s%p: %s\n", name, prefix_str, ptr + i, linebuf);
 			break;
 		case DUMP_PREFIX_OFFSET:
-			printk("%s%s%s%.8x: %s\n", level, name, prefix_str,
-			       i, linebuf);
+			pr_print(level, "%s%s%.8x: %s\n", name, prefix_str, i, linebuf);
 			break;
 		default:
-			printk("%s%s%s%s\n", level, name, prefix_str,
-			       linebuf);
+			pr_print(level, "%s%s%s\n", name, prefix_str, linebuf);
 			break;
 		}
 	}
-- 
2.47.3



