Delivery-date: Wed, 13 Apr 2022 10:24:31 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1neYIi-000W4x-ON
	for lore@lore.pengutronix.de; Wed, 13 Apr 2022 10:24:31 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1neYId-0002Qy-Hh
	for lore@pengutronix.de; Wed, 13 Apr 2022 10:24:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z0xViCDxfqvCTfzuzo9Oorm+4rTSXWanA3V8VwkurAE=; b=DHcd0Pf1EmyorD
	VG6CkyoveMxBNOwxVeYavFIvE4FNElogjXXciQ3HCo/sA+Rm+tNDQwQN/IAKXfohJMUoW85/D8ear
	39plJV2ezSwnXJxhVi+9/V9vNhVO02/FUnMjD03+WUYzD4nR1la7eNHi/gUzFTZBRXdd2P/2f+NSf
	L5KlpnMFR6NrOzHHO/aQsvp0cYo3oRqM+wM1hI0cchrm2JzzI7owDpk4LViRAn42iH2gELKu8kzgL
	b/amqSpD0mD9f48p/BGYiA9cp2/UhuHPlaRUFI3s3d2GYxqrJoKcQcqB31dLxrbGiPKYzsWZLrqwN
	RYed9tcO32ZrKAS1ac/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1neYHE-0000ur-0n; Wed, 13 Apr 2022 08:23:00 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1neYGT-0000Tn-3r
 for barebox@lists.infradead.org; Wed, 13 Apr 2022 08:22:17 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1neYGP-0001b1-UJ; Wed, 13 Apr 2022 10:22:09 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
 (envelope-from <ore@pengutronix.de>)
 id 1neYGQ-002kDM-L8; Wed, 13 Apr 2022 10:22:09 +0200
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <ore@pengutronix.de>)
 id 1neYGM-001nlG-KK; Wed, 13 Apr 2022 10:22:06 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Wed, 13 Apr 2022 10:22:04 +0200
Message-Id: <20220413082205.429509-14-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220413082205.429509-1-o.rempel@pengutronix.de>
References: <20220413082205.429509-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220413_012213_172210_4119CEB0 
X-CRM114-Status: GOOD (  13.48  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v5 13/14] hexdump: provide support for dev_print_hex_dump()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

In some cases we need to know the interface name of dumped hex. So,
provide optional device_d pointer and use it to get device name.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 include/printk.h | 14 +++++++++++---
 lib/hexdump.c    | 22 +++++++++++++++-------
 2 files changed, 26 insertions(+), 10 deletions(-)

diff --git a/include/printk.h b/include/printk.h
index 046b456a9d..8de8202af9 100644
--- a/include/printk.h
+++ b/include/printk.h
@@ -4,6 +4,8 @@
 
 #include <linux/types.h>
 
+struct device_d;
+
 #define KERN_EMERG      ""   /* system is unusable                   */
 #define KERN_ALERT      ""   /* action must be taken immediately     */
 #define KERN_CRIT       ""   /* critical conditions                  */
@@ -45,9 +47,15 @@ enum {
 extern int hex_dump_to_buffer(const void *buf, size_t len, int rowsize,
 			      int groupsize, char *linebuf, size_t linebuflen,
 			      bool ascii);
-extern void print_hex_dump(const char *level, const char *prefix_str,
-			   int prefix_type, int rowsize, int groupsize,
-			   const void *buf, size_t len, bool ascii);
+extern void dev_print_hex_dump(struct device_d *dev, const char *level,
+			       const char *prefix_str, int prefix_type,
+			       int rowsize, int groupsize, const void *buf,
+			       size_t len, bool ascii);
+
+#define print_hex_dump(level, prefix_str, prefix_type, rowsize,		       \
+			     groupsize, buf, len, ascii)		       \
+	dev_print_hex_dump(NULL, level, prefix_str, prefix_type, rowsize,      \
+		       groupsize, buf, len, ascii)
 
 #ifdef CONFIG_ARCH_HAS_STACK_DUMP
 void dump_stack(void);
diff --git a/lib/hexdump.c b/lib/hexdump.c
index fb80ef9724..61bbb10129 100644
--- a/lib/hexdump.c
+++ b/lib/hexdump.c
@@ -4,6 +4,7 @@
  */
 
 #include <common.h>
+#include <driver.h>
 #include <linux/types.h>
 #include <linux/ctype.h>
 #include <linux/log2.h>
@@ -235,13 +236,16 @@ EXPORT_SYMBOL(hex_dump_to_buffer);
  * Example output using %DUMP_PREFIX_ADDRESS and 4-byte mode:
  * ffffffff88089af0: 73727170 77767574 7b7a7978 7f7e7d7c  pqrstuvwxyz{|}~.
  */
-void print_hex_dump(const char *level, const char *prefix_str, int prefix_type,
-		    int rowsize, int groupsize,
-		    const void *buf, size_t len, bool ascii)
+void dev_print_hex_dump(struct device_d *dev, const char *level,
+			const char *prefix_str, int prefix_type, int rowsize,
+			int groupsize, const void *buf, size_t len, bool ascii)
 {
 	const u8 *ptr = buf;
 	int i, linelen, remaining = len;
 	unsigned char linebuf[32 * 3 + 2 + 32 + 1];
+	char *name;
+
+	name = basprintf("%s%s", dev ? dev_name(dev) : "", dev ? ": " : "");
 
 	if (rowsize != 16 && rowsize != 32)
 		rowsize = 16;
@@ -255,16 +259,20 @@ void print_hex_dump(const char *level, const char *prefix_str, int prefix_type,
 
 		switch (prefix_type) {
 		case DUMP_PREFIX_ADDRESS:
-			printk("%s%s%p: %s\n",
-			       level, prefix_str, ptr + i, linebuf);
+			printk("%s%s%s%p: %s\n", level, name, prefix_str,
+			       ptr + i, linebuf);
 			break;
 		case DUMP_PREFIX_OFFSET:
-			printk("%s%s%.8x: %s\n", level, prefix_str, i, linebuf);
+			printk("%s%s%s%.8x: %s\n", level, name, prefix_str,
+			       i, linebuf);
 			break;
 		default:
-			printk("%s%s%s\n", level, prefix_str, linebuf);
+			printk("%s%s%s%s\n", level, name, prefix_str,
+			       linebuf);
 			break;
 		}
 	}
+
+	free(name);
 }
 EXPORT_SYMBOL(print_hex_dump);
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

