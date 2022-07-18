Delivery-date: Mon, 18 Jul 2022 14:25:35 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oDPoe-00D7FG-4d
	for lore@lore.pengutronix.de; Mon, 18 Jul 2022 14:25:35 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oDPoa-0008De-J7
	for lore@pengutronix.de; Mon, 18 Jul 2022 14:25:34 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=RzZ7jkUJirbSxYo2MY36I2gh0hgqHFiTp4vx2PPqxX0=; b=TJZB4PKAtnWvXCY8s7xVLuula0
	/54YkBcLH7fsa4cDqOpRSDLhVJtJzEr1V3RlRZ5conRgKIIWXLKE2wwXUtz2Xxk9MQsFd1pmeWQAt
	sGEIjGc+LRG++Cx0QLZPRXc3uB3tqCRlA7l0xPVfcaRMDVbjhG/JXkuKTSTfaQPya7Wx8cGz7OS0K
	l7rHqte44c7mG74yRK99sWcTqtuZVEYnaAMqxitspjWeZXxtEUEdS3ap6wGHz6ImzcHplEUGZ3aUk
	oybhhLnQhvl0s5+npgj34EVZ3Mxxu/eKez7s0NUr9+E4LsVHNxI3oUwL53fkyRTxTgWaQGHHgNahf
	VZk1K1LQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oDPn6-00DEAj-Md; Mon, 18 Jul 2022 12:24:00 +0000
Received: from smtpout-2.cvg.de ([2003:49:a034:1067:5::2])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oDPmZ-00DDY4-1K
	for barebox@lists.infradead.org; Mon, 18 Jul 2022 12:23:30 +0000
Received: from mail-mta-2.intern.sigma-chemnitz.de (mail-mta-2.intern.sigma-chemnitz.de [192.168.12.70])
	by mail-out-2.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTPS id 26ICMqeh390623
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=OK)
	for <barebox@lists.infradead.org>; Mon, 18 Jul 2022 14:22:52 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sigma-chemnitz.de;
	s=v2022040800; t=1658146972;
	bh=RzZ7jkUJirbSxYo2MY36I2gh0hgqHFiTp4vx2PPqxX0=; l=6704;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=eMUB57BRsSml5QyyQw7vtOVOMmD8bQocF8gLFC2gjnFngxdBjU+1uIPGBMGyhAlPE
	 3pwHHhsBlHYHT3ruIIZoM6kWBSUWioGhSBFFQh8jq0Ea1yg6SR8uz6ke79uvOt4zUD
	 s9iHDP+tmzEwsN8K9pw/Y8IC8TZ0g8J3VBYgkEdVOo5300vmXI4mQg+XLhMK1zR2HG
	 EV+UTVvaUBEet1Z0X7PN0CjG5z98ZTsGUmwXXOi6cS7TCeKscuf2JyhtRd+gfCEbaJ
	 wjDJe9p7BbbzUTbghmgfOdcLjzEdZ8nGzy86Op2hK6AWXBJPrS2z2WLY9vU6CcJiZ3
	 nQAevOhs0ymAQ==
Received: from reddoxx.intern.sigma-chemnitz.de (reddoxx.sigma.local [192.168.16.32])
	by mail-mta-2.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTP id 26ICMaTI487164
	for <barebox@lists.infradead.org> from enrico.scholz@sigma-chemnitz.de; Mon, 18 Jul 2022 14:22:37 +0200
Received: from mail-msa-2.intern.sigma-chemnitz.de ( [192.168.12.72]) by reddoxx.intern.sigma-chemnitz.de
	(Reddoxx engine) with SMTP id 18D55A38589; Mon, 18 Jul 2022 14:22:33 +0200
Received: from ensc-pc.intern.sigma-chemnitz.de (ensc-pc.intern.sigma-chemnitz.de [192.168.3.24])
	by mail-msa-2.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTPS id 26ICMWwu371861
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO);
	Mon, 18 Jul 2022 14:22:33 +0200
Received: from ensc by ensc-pc.intern.sigma-chemnitz.de with local (Exim 4.95)
	(envelope-from <ensc@sigma-chemnitz.de>)
	id 1oDPlg-002g3g-Ub;
	Mon, 18 Jul 2022 14:22:32 +0200
From: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
To: barebox@lists.infradead.org
Cc: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
Date: Mon, 18 Jul 2022 14:22:24 +0200
Message-Id: <9133a12926ffb700725459d42b67618ec7d3b4f8.1658144543.git.enrico.scholz@sigma-chemnitz.de>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <cover.1658144543.git.enrico.scholz@sigma-chemnitz.de>
References: <cover.1658144543.git.enrico.scholz@sigma-chemnitz.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220718_052327_434615_1C4541C8 
X-CRM114-Status: GOOD (  22.50  )
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
Subject: [PATCH 09/13] tftp: implement 'windowsize' (RFC 7440) support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Results (with the reorder patch; numbers in bytes/s) on an iMX8MP are:

 | windowsize | VPN       | 1 Gb/s     | 100 Mb/s   |
 |------------|-----------|------------|------------|
 | 128        | 3.869.284 | 98.643.085 | 11.434.852 |
 |  64        | 3.863.581 | 98.550.375 | 11.434.852 |
 |  48        | 3.431.580 | 94.211.680 | 11.275.010 |
 |  32        | 2.835.129 | 85.250.081 | 10.985.605 |
 |  24        | 2.344.858 | 77.787.537 | 10.765.667 |
 |  16        | 1.734.186 | 67.519.381 | 10.210.087 |
 |  12        | 1.403.340 | 61.972.576 |  9.915.612 |
 |   8        | 1.002.462 | 50.852.376 |  9.016.130 |
 |   6        |   775.573 | 42.781.558 |  8.422.297 |
 |   4        |   547.845 | 32.066.544 |  6.835.567 |
 |   3        |   412.987 | 26.526.081 |  6.322.435 |
 |   2        |   280.987 | 19.120.641 |  5.494.241 |
 |   1        |   141.699 | 10.431.516 |  2.967.224 |

(VPN = OpenVPN on ADSL 50 Mb/s).

The window size can be configured at runtime.

Signed-off-by: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
---
 fs/Kconfig | 14 ++++++++++++++
 fs/tftp.c  | 54 ++++++++++++++++++++++++++++++++++++++++--------------
 2 files changed, 54 insertions(+), 14 deletions(-)

diff --git a/fs/Kconfig b/fs/Kconfig
index aeba00073eed..0c4934285942 100644
--- a/fs/Kconfig
+++ b/fs/Kconfig
@@ -43,6 +43,20 @@ config FS_TFTP
 	prompt "tftp support"
 	depends on NET
 
+config FS_TFTP_MAX_WINDOW_SIZE
+	int
+	prompt "maximum tftp window size (RFC 7440)"
+	depends on FS_TFTP
+	default 128
+	range 1 128
+	help
+	  The maximum allowed tftp "windowsize" (RFC 7440).  Higher
+	  value increase speed of the tftp download with the cost of
+	  memory (1432 bytes per slot).
+
+	  Requires tftp "windowsize" (RFC 7440) support on server side
+	  to have an effect.
+
 config FS_OMAP4_USBBOOT
 	bool
 	prompt "Filesystem over usb boot"
diff --git a/fs/tftp.c b/fs/tftp.c
index ef2ce0200b38..7f836d36b7df 100644
--- a/fs/tftp.c
+++ b/fs/tftp.c
@@ -30,6 +30,7 @@
 #include <linux/stat.h>
 #include <linux/err.h>
 #include <kfifo.h>
+#include <globalvar.h>
 #include <linux/sizes.h>
 
 #define TFTP_PORT	69	/* Well known TFTP port number */
@@ -65,15 +66,22 @@
 
 #define TFTP_BLOCK_SIZE		512	/* default TFTP block size */
 #define TFTP_MTU_SIZE		1432	/* MTU based block size */
-#define TFTP_FIFO_SIZE		4096
+#define TFTP_MAX_WINDOW_SIZE	CONFIG_FS_TFTP_MAX_WINDOW_SIZE
+
+/* calculate fifo so that it can hold the complete window plus the incoming
+   packet.  Add some extra space just in case...  */
+#define TFTP_FIFO_SIZE		(TFTP_MTU_SIZE * TFTP_MAX_WINDOW_SIZE + 2048)
 
 #define TFTP_ERR_RESEND	1
 
+static int g_tftp_window_size = TFTP_MAX_WINDOW_SIZE / 1;
+
 struct file_priv {
 	struct net_connection *tftp_con;
 	int push;
 	uint16_t block;
 	uint16_t last_block;
+	uint16_t ack_block;
 	int state;
 	int err;
 	char *filename;
@@ -83,7 +91,7 @@ struct file_priv {
 	struct kfifo *fifo;
 	void *buf;
 	int blocksize;
-	int block_requested;
+	unsigned int windowsize;
 	bool is_getattr;
 };
 
@@ -114,6 +122,7 @@ static int tftp_send(struct file_priv *priv)
 	int len = 0;
 	uint16_t *s;
 	unsigned char *pkt = net_udp_get_payload(priv->tftp_con);
+	unsigned int window_size;
 	int ret;
 
 	pr_vdebug("%s: state %s\n", __func__, tftp_states[priv->state]);
@@ -121,6 +130,15 @@ static int tftp_send(struct file_priv *priv)
 	switch (priv->state) {
 	case STATE_RRQ:
 	case STATE_WRQ:
+		if (priv->push || priv->is_getattr)
+			/* atm, windowsize is suported only for RRQ and there
+			   is no need to request a full window when we are
+			   just looking up file attributes */
+			window_size = 1;
+		else
+			window_size = min_t(unsigned int, g_tftp_window_size,
+					    TFTP_MAX_WINDOW_SIZE);
+
 		xp = pkt;
 		s = (uint16_t *)pkt;
 		if (priv->state == STATE_RRQ)
@@ -136,30 +154,35 @@ static int tftp_send(struct file_priv *priv)
 				"tsize%c"
 				"%lld%c"
 				"blksize%c"
-				"%u",
+				"%u%c"
+			        "windowsize%c"
+			        "%u",
 				priv->filename + 1, '\0',
 				'\0',	/* "octet" */
 				'\0',	/* "timeout" */
 				TIMEOUT, '\0',
 			        '\0',	/* "tsize" */
 				priv->filesize, '\0',
-			       '\0',	/* "blksize" */
+				'\0',	/* "blksize" */
 			        /* use only a minimal blksize for getattr
 				   operations, */
-			       priv->is_getattr ? TFTP_BLOCK_SIZE : TFTP_MTU_SIZE);
+			        priv->is_getattr ? TFTP_BLOCK_SIZE : TFTP_MTU_SIZE,
+			        '\0',
+				'\0',	/* windowsize */
+				window_size
+			);
 		pkt++;
 		len = pkt - xp;
 		break;
 
 	case STATE_RDATA:
-		if (priv->block == priv->block_requested)
-			return 0;
 	case STATE_OACK:
 		xp = pkt;
 		s = (uint16_t *)pkt;
 		*s++ = htons(TFTP_ACK);
-		*s++ = htons(priv->block);
-		priv->block_requested = priv->block;
+		*s++ = htons(priv->last_block);
+		priv->ack_block  = priv->last_block;
+		priv->ack_block += priv->windowsize;
 		pkt = (unsigned char *)s;
 		len = pkt - xp;
 		break;
@@ -202,7 +225,6 @@ static int tftp_poll(struct file_priv *priv)
 	if (is_timeout(priv->resend_timeout, TFTP_RESEND_TIMEOUT)) {
 		printf("T ");
 		priv->resend_timeout = get_time_ns();
-		priv->block_requested = -1;
 		return TFTP_ERR_RESEND;
 	}
 
@@ -239,6 +261,8 @@ static void tftp_parse_oack(struct file_priv *priv, unsigned char *pkt, int len)
 			priv->filesize = simple_strtoull(val, NULL, 10);
 		if (!strcmp(opt, "blksize"))
 			priv->blocksize = simple_strtoul(val, NULL, 10);
+		if (!strcmp(opt, "windowsize"))
+			priv->windowsize = simple_strtoul(val, NULL, 10);
 		pr_debug("OACK opt: %s val: %s\n", opt, val);
 		s = val + strlen(val) + 1;
 	}
@@ -326,6 +350,7 @@ static void tftp_recv(struct file_priv *priv,
 			/* send ACK */
 			priv->state = STATE_OACK;
 			priv->block = 0;
+			priv->last_block = 0;
 			tftp_send(priv);
 		}
 
@@ -349,9 +374,9 @@ static void tftp_recv(struct file_priv *priv,
 			}
 		}
 
-		if (priv->block == priv->last_block)
-			/* Same block again; ignore it. */
+		if (priv->block != (uint16_t)(priv->last_block + 1)) {
 			break;
+		}
 
 		tftp_timer_reset(priv);
 		tftp_put_data(priv, priv->block, pkt + 2, len);
@@ -414,7 +439,6 @@ static struct file_priv *tftp_do_open(struct device_d *dev,
 	priv->err = -EINVAL;
 	priv->filename = dpath(dentry, fsdev->vfsmount.mnt_root);
 	priv->blocksize = TFTP_BLOCK_SIZE;
-	priv->block_requested = -1;
 	priv->is_getattr = is_getattr;
 
 	priv->fifo = kfifo_alloc(TFTP_FIFO_SIZE);
@@ -574,7 +598,7 @@ static int tftp_read(struct device_d *dev, FILE *f, void *buf, size_t insize)
 		if (priv->state == STATE_DONE)
 			return outsize;
 
-		if (TFTP_FIFO_SIZE - kfifo_len(priv->fifo) >= priv->blocksize)
+		if (priv->last_block == priv->ack_block)
 			tftp_send(priv);
 
 		ret = tftp_poll(priv);
@@ -766,6 +790,8 @@ static struct fs_driver_d tftp_driver = {
 
 static int tftp_init(void)
 {
+	globalvar_add_simple_int("tftp.windowsize", &g_tftp_window_size, "%u");
+
 	return register_fs_driver(&tftp_driver);
 }
 coredevice_initcall(tftp_init);
-- 
2.36.1



