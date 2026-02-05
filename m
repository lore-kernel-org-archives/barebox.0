Delivery-date: Thu, 05 Feb 2026 16:45:50 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vo1YF-009AUq-17
	for lore@lore.pengutronix.de;
	Thu, 05 Feb 2026 16:45:50 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vo1YD-0006bs-U8
	for lore@pengutronix.de; Thu, 05 Feb 2026 16:45:50 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=iW37zSQEY7QvupGmZSKdYigGy+v7qEs3BrIJ/jaihBU=; b=jR7stOz4JV5T4WqIJn9PdrqOEG
	eRvbt+4IXLkQsGXUSeeT+7omJXc+GVvElYSPj1FvjcikEpB/bNBuAp+K6wFrNYhhPjtN9lg23fQhf
	ENREd4F78F2bo/nSqx7aQsWuJhbZlNwvPQwlOEuc9+YBrz6yAzOhC0n7Bk4ygFaCfupsbmxwL0jIO
	i9iROkGHDAvNO84XSHSy+EQzSgGzIfixmX50UKOF1Vi+n9gkTDqk6xBwr7BASjE8vf8/D/8qtreD4
	etVwrTDvATGf+aOaIV3St+bo9Qqg2ydz7PcSxgcRTGtM4VInSleQQqTkacVk/GLSm0S3MTz4G42ca
	M83ECzXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vo1Xl-0000000A9oQ-2Wfm;
	Thu, 05 Feb 2026 15:45:21 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vo1Xf-0000000A9lv-19Z8
	for barebox@lists.infradead.org;
	Thu, 05 Feb 2026 15:45:20 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1vo1Xc-0006IY-7n; Thu, 05 Feb 2026 16:45:12 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Thu, 05 Feb 2026 16:45:04 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260205-vmaster-customers-leicageo-system1600-v1-2-a80b234ce1a1@pengutronix.de>
References: <20260205-vmaster-customers-leicageo-system1600-v1-0-a80b234ce1a1@pengutronix.de>
In-Reply-To: <20260205-vmaster-customers-leicageo-system1600-v1-0-a80b234ce1a1@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Marco Felsch <m.felsch@pengutronix.de>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260205_074515_476111_C5694674 
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
Subject: [PATCH 2/5] lib: hexdump: make use of pr_print
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
 commands/ethlog.c        |  4 ++--
 drivers/mtd/ubi/attach.c |  2 +-
 fs/ubifs/debug.c         |  4 ++--
 include/linux/printk.h   |  4 ++--
 include/printf.h         |  2 +-
 include/soc/ti/cppi5.h   |  2 +-
 lib/hexdump.c            | 13 +++++--------
 7 files changed, 14 insertions(+), 17 deletions(-)

diff --git a/commands/ethlog.c b/commands/ethlog.c
index 21d88bf1cbfba1b1688fd1101686c0c5c85bb56a..d641fd90ddb82c437348de11f8c3a99b686163ac 100644
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
index 44fe435e4163f81e4d120d246dab1a028c68ce37..e49ceb8690d8de0a14cb1de88458f3d79827ce56 100644
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
index a4cffe84df7118f062d63721982e3e88aaf45d49..2aae47b3b7d8dc36d68b02d125580d22eedf6852 100644
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
index 0d7180f0ebbca1dbe583a1798203e9ac61a64b0a..6c071af5158bcc36ae3582fe20e28a8dae0e6947 100644
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
index 3503b72c9e5eca3e8a81cde4269db62a8080e203..92d6e18728f5baa9ab680962ef26b845c465a0a5 100644
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
index 34e118fff25a4348870f27953bcd32e98dc47860..6331a38a85f0f1528539b779ce1c995ed9186eaa 100644
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
index 940c4eec64e926cbb1ecaa3aa20863c3e672c81e..d98a4e6100d6e8783ad6cbda30845749875484cf 100644
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



