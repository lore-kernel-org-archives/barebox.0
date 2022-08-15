Delivery-date: Mon, 15 Aug 2022 10:48:47 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oNVm8-006EYf-VK
	for lore@lore.pengutronix.de; Mon, 15 Aug 2022 10:48:47 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oNVm8-0001D7-8W
	for lore@pengutronix.de; Mon, 15 Aug 2022 10:48:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=FrsU8PPkO5RcmNghnCO9lAQGk2l6qolwzRRVnpxNwe4=; b=gGEzRJoUqNr9jHzNKTIOc5WWKn
	HniVESu8wlpmEfE9bJ3fUohJP1tX7dSMF6satTorxriVJZkH4yPHucciPOj13KSFnP9XjPgtr0pdT
	3Urew4MPNJrjJSqhS4JhUAYY1IqIkArheChkCZpZKH3bLIS7NXnzb/G77BXmD1MyVDh5c3fLTX1Wv
	clqBV6yosmjENcUZsag1uNU/NTlsGLSBW7J+cvQFodu9TGLlAlkU+naryCOgQm3fs83KtLJ4qJZwL
	Bg3K//URa1ocnk/mTw3a9VuuoGfJuDwWaNz6BK8v6JW6MtHQgj/4inCNrAncna5UukQwedTUesS7m
	CZoJpbAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oNVjx-00DLuE-F1; Mon, 15 Aug 2022 08:46:35 +0000
Received: from smtpout-2.cvg.de ([2003:49:a034:1067:5::2])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oNVgw-00DJf7-TH
	for barebox@lists.infradead.org; Mon, 15 Aug 2022 08:43:32 +0000
Received: from mail-mta-2.intern.sigma-chemnitz.de (mail-mta-2.intern.sigma-chemnitz.de [192.168.12.70])
	by mail-out-2.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTPS id 27F8gYBO661984
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=OK)
	for <barebox@lists.infradead.org>; Mon, 15 Aug 2022 10:42:35 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sigma-chemnitz.de;
	s=v2022040800; t=1660552955;
	bh=FrsU8PPkO5RcmNghnCO9lAQGk2l6qolwzRRVnpxNwe4=; l=7540;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=fGwWSIWUYp/YA8AyTPCD1hN2Q0ZDXIdy4Unx4EPLUi6gWWbhaa8DSZMKqks7qjbt+
	 04pyUDERimJAOkRUeovdxKPMrTIzWJBbtfryAAHKDtnJsUeTmDJCy7D4vrWbaF1gIk
	 YIL32X/m4Bwo/sVsjoxZXzHuQt7pLVCkiUPYisV9c/bgeipOdGLjpIfDHt0nTvEJCN
	 UZvlXC6jZ2LnSP7GE7XYNQzHky2aGFilUzg+pKOIWs6E7TpUBxoAWJ3BY52DLZeM5C
	 jBFPcayuZaZF6HHNhB6j0l87qNYVje3xpyl7GXwgpkndLOOLAoP+UMloxSbuUkq11y
	 2f3O/gTqtjnXg==
Received: from reddoxx.intern.sigma-chemnitz.de (reddoxx.sigma.local [192.168.16.32])
	by mail-mta-2.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTP id 27F8gVMc822366
	for <barebox@lists.infradead.org> from enrico.scholz@sigma-chemnitz.de; Mon, 15 Aug 2022 10:42:31 +0200
Received: from mail-msa-3.intern.sigma-chemnitz.de ( [192.168.12.73]) by reddoxx.intern.sigma-chemnitz.de
	(Reddoxx engine) with SMTP id 82FDE79011E; Mon, 15 Aug 2022 10:42:27 +0200
Received: from ensc-pc.intern.sigma-chemnitz.de (ensc-pc.intern.sigma-chemnitz.de [192.168.3.24])
	by mail-msa-3.intern.sigma-chemnitz.de (8.15.2/8.15.2) with ESMTPS id 27F8gQZp811082
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO);
	Mon, 15 Aug 2022 10:42:26 +0200
Received: from ensc by ensc-pc.intern.sigma-chemnitz.de with local (Exim 4.95)
	(envelope-from <ensc@sigma-chemnitz.de>)
	id 1oNVg2-000EJQ-2q;
	Mon, 15 Aug 2022 10:42:26 +0200
From: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
To: barebox@lists.infradead.org
Cc: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
Date: Mon, 15 Aug 2022 10:42:18 +0200
Message-Id: <a4bff174bec2eeedd89ca0af31786ff51ed77baa.1660552646.git.enrico.scholz@sigma-chemnitz.de>
X-Mailer: git-send-email 2.37.1
In-Reply-To: <cover.1660552646.git.enrico.scholz@sigma-chemnitz.de>
References: <cover.1660552646.git.enrico.scholz@sigma-chemnitz.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220815_014324_394298_2D87A645 
X-CRM114-Status: GOOD (  23.78  )
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
Subject: [PATCH v3 14/18] tftp: implement 'windowsize' (RFC 7440) support
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

This commit increases barebox size by

| add/remove: 1/0 grow/shrink: 4/1 up/down: 144/-16 (128)
| Function                                     old     new   delta
| tftp_send                                    316     364     +48
| tftp_init                                     16      60     +44
| tftp_handler                                 824     868     +44
| tftp_do_open                                 532     536      +4
| g_tftp_window_size                             -       4      +4
| tftp_poll                                    180     164     -16
| Total: Before=626311, After=626439, chg +0.02%

Setting FS_TFTP_MAX_WINDOW_SIZE to zero reduces it to

| add/remove: 1/0 grow/shrink: 3/2 up/down: 92/-52 (40)
| Function                                     old     new   delta
| tftp_init                                     16      60     +44
| tftp_handler                                 824     864     +40
| tftp_do_open                                 532     536      +4
| g_tftp_window_size                             -       4      +4
| tftp_poll                                    180     164     -16
| tftp_send                                    316     280     -36
| Total: Before=626311, After=626351, chg +0.01%

Signed-off-by: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
---
 fs/Kconfig | 14 ++++++++++++++
 fs/tftp.c  | 54 +++++++++++++++++++++++++++++++++++++++++-------------
 2 files changed, 55 insertions(+), 13 deletions(-)

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
index 5c3e56a6cb22..4c3980404dc1 100644
--- a/fs/tftp.c
+++ b/fs/tftp.c
@@ -26,9 +26,11 @@
 #include <libgen.h>
 #include <fcntl.h>
 #include <getopt.h>
+#include <globalvar.h>
 #include <init.h>
 #include <linux/stat.h>
 #include <linux/err.h>
+#include <linux/kernel.h>
 #include <kfifo.h>
 #include <parseopt.h>
 #include <linux/sizes.h>
@@ -69,14 +71,18 @@
 
 #define TFTP_BLOCK_SIZE		512	/* default TFTP block size */
 #define TFTP_MTU_SIZE		1432	/* MTU based block size */
+#define TFTP_MAX_WINDOW_SIZE	CONFIG_FS_TFTP_MAX_WINDOW_SIZE
 
 #define TFTP_ERR_RESEND	1
 
+static int g_tftp_window_size = DIV_ROUND_UP(TFTP_MAX_WINDOW_SIZE, 2);
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
@@ -86,7 +92,7 @@ struct file_priv {
 	struct kfifo *fifo;
 	void *buf;
 	int blocksize;
-	int block_requested;
+	unsigned int windowsize;
 	bool is_getattr;
 };
 
@@ -118,6 +124,7 @@ static int tftp_send(struct file_priv *priv)
 	int len = 0;
 	uint16_t *s;
 	unsigned char *pkt = net_udp_get_payload(priv->tftp_con);
+	unsigned int window_size;
 	int ret;
 
 	pr_vdebug("%s: state %s\n", __func__, tftp_states[priv->state]);
@@ -125,6 +132,15 @@ static int tftp_send(struct file_priv *priv)
 	switch (priv->state) {
 	case STATE_RRQ:
 	case STATE_WRQ:
+		if (priv->push || priv->is_getattr)
+			/* atm, windowsize is supported only for RRQ and there
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
@@ -152,18 +168,24 @@ static int tftp_send(struct file_priv *priv)
 				   operations, */
 				priv->is_getattr ? TFTP_BLOCK_SIZE : TFTP_MTU_SIZE);
 		pkt++;
+
+		if (window_size > 1)
+			pkt += sprintf((unsigned char *)pkt,
+				       "windowsize%c%u%c",
+				       '\0', window_size,
+				       '\0');
+
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
@@ -206,7 +228,6 @@ static int tftp_poll(struct file_priv *priv)
 	if (is_timeout(priv->resend_timeout, TFTP_RESEND_TIMEOUT)) {
 		printf("T ");
 		priv->resend_timeout = get_time_ns();
-		priv->block_requested = -1;
 		return TFTP_ERR_RESEND;
 	}
 
@@ -243,11 +264,15 @@ static int tftp_parse_oack(struct file_priv *priv, unsigned char *pkt, int len)
 			priv->filesize = simple_strtoull(val, NULL, 10);
 		if (!strcmp(opt, "blksize"))
 			priv->blocksize = simple_strtoul(val, NULL, 10);
+		if (!strcmp(opt, "windowsize"))
+			priv->windowsize = simple_strtoul(val, NULL, 10);
 		pr_debug("OACK opt: %s val: %s\n", opt, val);
 		s = val + strlen(val) + 1;
 	}
 
-	if (priv->blocksize > TFTP_MTU_SIZE) {
+	if (priv->blocksize > TFTP_MTU_SIZE ||
+	    priv->windowsize > TFTP_MAX_WINDOW_SIZE ||
+	    priv->windowsize == 0) {
 		pr_warn("tftp: invalid oack response\n");
 		return -EINVAL;
 	}
@@ -362,8 +387,7 @@ static void tftp_recv(struct file_priv *priv,
 			}
 		}
 
-		if (priv->block == priv->last_block)
-			/* Same block again; ignore it. */
+		if (priv->block != (uint16_t)(priv->last_block + 1))
 			break;
 
 		tftp_timer_reset(priv);
@@ -402,7 +426,9 @@ static void tftp_handler(void *ctx, char *packet, unsigned len)
 
 static int tftp_start_transfer(struct file_priv *priv)
 {
-	priv->fifo = kfifo_alloc(priv->blocksize);
+	/* multiplication is safe; both operands where checked in tftp_parse_oack()
+	   and are small integers */
+	priv->fifo = kfifo_alloc(priv->blocksize * priv->windowsize);
 	if (!priv->fifo)
 		return -ENOMEM;
 
@@ -422,7 +448,7 @@ static int tftp_start_transfer(struct file_priv *priv)
 	} else {
 		/* send ACK */
 		priv->state = STATE_OACK;
-		priv->block = 0;
+		priv->last_block = 0;
 		tftp_send(priv);
 	}
 
@@ -458,7 +484,7 @@ static struct file_priv *tftp_do_open(struct device_d *dev,
 	priv->err = -EINVAL;
 	priv->filename = dpath(dentry, fsdev->vfsmount.mnt_root);
 	priv->blocksize = TFTP_BLOCK_SIZE;
-	priv->block_requested = -1;
+	priv->windowsize = 1;
 	priv->is_getattr = is_getattr;
 
 	parseopt_hu(fsdev->options, "port", &port);
@@ -617,7 +643,7 @@ static int tftp_read(struct device_d *dev, FILE *f, void *buf, size_t insize)
 		if (priv->state == STATE_DONE)
 			return outsize;
 
-		if (kfifo_len(priv->fifo) == 0)
+		if (priv->last_block == priv->ack_block)
 			tftp_send(priv);
 
 		ret = tftp_poll(priv);
@@ -809,6 +835,8 @@ static struct fs_driver_d tftp_driver = {
 
 static int tftp_init(void)
 {
+	globalvar_add_simple_int("tftp.windowsize", &g_tftp_window_size, "%u");
+
 	return register_fs_driver(&tftp_driver);
 }
 coredevice_initcall(tftp_init);
-- 
2.37.1



