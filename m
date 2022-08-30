Delivery-date: Tue, 30 Aug 2022 09:48:28 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oSvz2-001Ubx-QG
	for lore@lore.pengutronix.de; Tue, 30 Aug 2022 09:48:28 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oSvz0-0005ep-8y
	for lore@pengutronix.de; Tue, 30 Aug 2022 09:48:28 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=152+jh0zabU0uDZ+onu+J0MVZQ0ap4CEtNLtw9SKw0c=; b=ozPMGsRhu7NYftnJwWekrvNun0
	VpaUCkbCHWGltO10ZPOklgY+iUNQZKjj+dXVdJrv0GIxGPZxaBeTMdTHKwYqNsgfP431eaxH5ekNK
	EY70JTvOuEI7+/kp+SkTZjVTbCMItzNInBldUlFdvs9bzpTHISzBtTXRisBzTB/emEDQgZefDaprF
	yNlmq5vhiiOHedeXGzUd9PgLXyk70x/qAJduCrQcKtEqUlKD3nAADJVrklaQcDBMVWDXTlNmcOaVQ
	DW/xeEpgbgOF9Hi+QP5wYRKoEFjZ5bzSZ7JTYX0gYqv4eNt+TRXTNlvA7M/p1FiA0pM8Xx6QmGkL3
	lr44LpQQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSvxE-00EsvI-FY; Tue, 30 Aug 2022 07:46:38 +0000
Received: from smtpout-3.cvg.de ([2003:49:a034:1067:5::3])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSvqK-00Eoxr-1s
	for barebox@lists.infradead.org; Tue, 30 Aug 2022 07:39:32 +0000
Received: from mail-mta-3.intern.sigma-chemnitz.de (mail-mta-3.intern.sigma-chemnitz.de [192.168.12.71])
	by mail-out-3.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTPS id 27U7cOCM993516
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=OK)
	for <barebox@lists.infradead.org>; Tue, 30 Aug 2022 09:38:24 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sigma-chemnitz.de;
	s=v2022040800; t=1661845104;
	bh=152+jh0zabU0uDZ+onu+J0MVZQ0ap4CEtNLtw9SKw0c=; l=7717;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=I2GExQ74eMIjmVAzAWbHlVm1dzxIMTWTRsdeyu6RLeELFL2qGEdtZhv2o8Rq8UioZ
	 ePm/uh/EQIQ25uPbKwQydXrc8nr5ziHaavJBE2KHvjGdEpE33r/oBL+MvdTEj09lTM
	 MLuwKmjyVADw0iHV1Hny9E4wIHA8+WBpAw+jlmdvp61Xg2Q3sIqILvzmYQTGsAp3Fg
	 hyDKAwGvgsV/amMvSTePTjZ3CZ25qLUSIIp7l7RUcQ/NTEyViYBCXRhgv096xg2QLE
	 mmP/Ua+IfRBNk4wwt4AbqIaQMnXz12wapGzpZDJ+U53hVxy47dxQE2qhxSK8ZK39fX
	 44KstP/AMjkUg==
Received: from reddoxx.intern.sigma-chemnitz.de (reddoxx.sigma.local [192.168.16.32])
	by mail-mta-3.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTP id 27U7cM3V2895719
	for <barebox@lists.infradead.org> from enrico.scholz@sigma-chemnitz.de; Tue, 30 Aug 2022 09:38:22 +0200
Received: from mail-msa-3.intern.sigma-chemnitz.de ( [192.168.12.73]) by reddoxx.intern.sigma-chemnitz.de
	(Reddoxx engine) with SMTP id 755B4370517; Tue, 30 Aug 2022 09:38:20 +0200
Received: from ensc-pc.intern.sigma-chemnitz.de (ensc-pc.intern.sigma-chemnitz.de [192.168.3.24])
	by mail-msa-3.intern.sigma-chemnitz.de (8.15.2/8.15.2) with ESMTPS id 27U7cK9u949566
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO);
	Tue, 30 Aug 2022 09:38:20 +0200
Received: from ensc by ensc-pc.intern.sigma-chemnitz.de with local (Exim 4.95)
	(envelope-from <ensc@sigma-chemnitz.de>)
	id 1oSvpE-00BJ3W-BI;
	Tue, 30 Aug 2022 09:38:20 +0200
From: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
To: barebox@lists.infradead.org
Cc: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
Date: Tue, 30 Aug 2022 09:38:11 +0200
Message-Id: <20220830073816.2694734-17-enrico.scholz@sigma-chemnitz.de>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20220830073816.2694734-1-enrico.scholz@sigma-chemnitz.de>
References: <20220830073816.2694734-1-enrico.scholz@sigma-chemnitz.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220830_003928_582590_4EF95162 
X-CRM114-Status: GOOD (  25.46  )
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
Subject: [PATCH v4 16/21] tftp: implement 'windowsize' (RFC 7440) support
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

| add/remove: 1/0 grow/shrink: 4/1 up/down: 148/-16 (132)
| Function                                     old     new   delta
| tftp_send                                    336     384     +48
| tftp_handler                                 880     928     +48
| tftp_init                                     16      60     +44
| tftp_allocate_transfer                       100     104      +4
| g_tftp_window_size                             -       4      +4
| tftp_poll                                    180     164     -16
| Total: Before=629980, After=630112, chg +0.02%

Setting FS_TFTP_MAX_WINDOW_SIZE to zero reduces it to

| add/remove: 1/0 grow/shrink: 3/2 up/down: 96/-52 (44)
| Function                                     old     new   delta
| tftp_init                                     16      60     +44
| tftp_handler                                 880     924     +44
| tftp_allocate_transfer                       100     104      +4
| g_tftp_window_size                             -       4      +4
| tftp_poll                                    180     164     -16
| tftp_send                                    336     300     -36
| Total: Before=629980, After=630024, chg +0.01%

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
index e62ff2a80bb5..88767223b052 100644
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
@@ -68,6 +70,7 @@
 
 #define TFTP_BLOCK_SIZE		512	/* default TFTP block size */
 #define TFTP_MTU_SIZE		1432	/* MTU based block size */
+#define TFTP_MAX_WINDOW_SIZE	CONFIG_FS_TFTP_MAX_WINDOW_SIZE
 
 #define TFTP_ERR_RESEND	1
 
@@ -80,11 +83,14 @@
 	} while (0)
 #endif
 
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
@@ -94,7 +100,7 @@ struct file_priv {
 	struct kfifo *fifo;
 	void *buf;
 	int blocksize;
-	int block_requested;
+	unsigned int windowsize;
 	bool is_getattr;
 };
 
@@ -125,6 +131,7 @@ static int tftp_send(struct file_priv *priv)
 	int len = 0;
 	uint16_t *s;
 	unsigned char *pkt = net_udp_get_payload(priv->tftp_con);
+	unsigned int window_size;
 	int ret;
 
 	pr_vdebug("%s: state %s\n", __func__, tftp_states[priv->state]);
@@ -132,6 +139,15 @@ static int tftp_send(struct file_priv *priv)
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
@@ -164,17 +180,22 @@ static int tftp_send(struct file_priv *priv)
 				       '\0', priv->filesize,
 				       '\0');
 
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
@@ -217,7 +238,6 @@ static int tftp_poll(struct file_priv *priv)
 	if (is_timeout(priv->resend_timeout, TFTP_RESEND_TIMEOUT)) {
 		printf("T ");
 		priv->resend_timeout = get_time_ns();
-		priv->block_requested = -1;
 		return TFTP_ERR_RESEND;
 	}
 
@@ -254,11 +274,15 @@ static int tftp_parse_oack(struct file_priv *priv, unsigned char *pkt, int len)
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
@@ -276,7 +300,9 @@ static int tftp_allocate_transfer(struct file_priv *priv)
 	debug_assert(!priv->fifo);
 	debug_assert(!priv->buf);
 
-	priv->fifo = kfifo_alloc(priv->blocksize);
+	/* multiplication is safe; both operands were checked in tftp_parse_oack()
+	   and are small integers */
+	priv->fifo = kfifo_alloc(priv->blocksize * priv->windowsize);
 	if (!priv->fifo)
 		goto err;
 
@@ -407,14 +433,14 @@ static void tftp_recv(struct file_priv *priv,
 			priv->tftp_con->udp->uh_dport = uh_sport;
 			priv->state = STATE_RDATA;
 			priv->last_block = 0;
+			priv->ack_block = priv->windowsize;
 
 			rc = tftp_allocate_transfer(priv);
 			if (rc < 0)
 				break;
 		}
 
-		if (priv->block == priv->last_block)
-			/* Same block again; ignore it. */
+		if (priv->block != (uint16_t)(priv->last_block + 1))
 			break;
 
 		tftp_timer_reset(priv);
@@ -467,7 +493,7 @@ static int tftp_start_transfer(struct file_priv *priv)
 	} else {
 		/* send ACK */
 		priv->state = STATE_RDATA;
-		priv->block = 0;
+		priv->last_block = 0;
 		tftp_send(priv);
 	}
 
@@ -503,7 +529,7 @@ static struct file_priv *tftp_do_open(struct device_d *dev,
 	priv->err = -EINVAL;
 	priv->filename = dpath(dentry, fsdev->vfsmount.mnt_root);
 	priv->blocksize = TFTP_BLOCK_SIZE;
-	priv->block_requested = -1;
+	priv->windowsize = 1;
 	priv->is_getattr = is_getattr;
 
 	parseopt_hu(fsdev->options, "port", &port);
@@ -690,7 +716,7 @@ static int tftp_read(struct device_d *dev, FILE *f, void *buf, size_t insize)
 		if (priv->state == STATE_DONE)
 			return outsize;
 
-		if (kfifo_len(priv->fifo) == 0)
+		if (priv->last_block == priv->ack_block)
 			tftp_send(priv);
 
 		ret = tftp_poll(priv);
@@ -882,6 +908,8 @@ static struct fs_driver_d tftp_driver = {
 
 static int tftp_init(void)
 {
+	globalvar_add_simple_int("tftp.windowsize", &g_tftp_window_size, "%u");
+
 	return register_fs_driver(&tftp_driver);
 }
 coredevice_initcall(tftp_init);
-- 
2.37.2



