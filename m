Delivery-date: Mon, 31 Aug 2026 15:21:49 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1x11xM-009I0h-1b
	for lore@lore.pengutronix.de;
	Mon, 31 Aug 2026 15:21:49 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id F2914202485
	for <lore@pengutronix.de>; Mon, 31 Aug 2026 15:21:44 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=RWrX0yE1;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=uFxpLM4Vw7jOR4XhOmL2kebkWCOa4uUzv/RMA7AVPng=; b=RWrX0yE1tCiLtKm0eu1SN66nZO
	th8c8nF5brN8ewUMQO9E5BoeLljVtiDFZLpGogTKF8ZxiX4rpEel/sFE1l0eBzNcRCUPkA1QrnYqs
	BZ3tKvTSdQW/Ka8+ygvn0HoqARcPxk8KLfXncrzuDA/qlx57t9h2m6GZ5OYtEuwSgPT0L/fXeEaRP
	DrTKU83SP94uBFZv4J57wSM/GbMvGszSQup8lJbg+lm9r5JZ/22ep5NSVxcyh2bx4uryOMlPhS0H/
	7NEtxo3y5+Nm03j2oRftsgT+i1dO3AgYH4rSC8T14TdrICq1kZ2RltnmvgDxAhAC6+5cGjP90yhxZ
	zgcowidw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x11w0-00000009Nzf-47Uh;
	Mon, 31 Aug 2026 13:20:24 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x11vx-00000009Nv6-48Cz
	for barebox@lists.infradead.org;
	Mon, 31 Aug 2026 13:20:23 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id DAC26202485;
	Mon, 31 Aug 2026 15:20:10 +0200 (CEST)
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1x11vm-004GR2-1y;
	Mon, 31 Aug 2026 15:20:10 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1x11vm-0000000H7Av-1xch;
	Mon, 31 Aug 2026 15:20:10 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 31 Aug 2026 15:20:12 +0200
Subject: [PATCH 05/13] block: add blockdevice_unregister_removed()
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260831-usb-device-lifetime-v1-5-6adf4054b909@pengutronix.de>
References: <20260831-usb-device-lifetime-v1-0-6adf4054b909@pengutronix.de>
In-Reply-To: <20260831-usb-device-lifetime-v1-0-6adf4054b909@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1788182410; l=3065;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=UNaevF65i+apWkHdzzX+307QPV3oHs/XM46WZVlb/Xg=;
 b=xLcVb57Z+nt6ZVEP3s6nS8jUD746JE+v0+tM9jELIr/nBDwO3WOCJpPu7Lsoe/R5s3B6315vU
 DIc0BspikaTBoYumtWi2Vz/uMURivJejsVEXkuRH5bkFvlx6M1167EG
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260831_062022_220523_3B0724CE 
X-CRM114-Status: GOOD (  19.63  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Removing a block device whose medium is gone is not the same
    as removing one that is merely no longer wanted. The medium is not coming
    back, so the filesystems mounted from it have become useless, and [...] 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.0 DMARC_MISSING          Missing DMARC policy
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
X-Rspamd-Server: mx1
X-Stat-Signature: ddogwfsjo4fwp64uj9okdh6etdcyhzwx
X-Rspamd-Queue-Id: F2914202485
X-Spamd-Result: default: False [-57.81 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_IN_DNSWL_MED(-0.60)[2607:7c80:54:3::133:from,2a0a:edc0:0:c01:1d::a2:received,2a0a:edc0:0:1101:1d::28:received];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_ALL(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_ONE(0.00)[1];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action

Removing a block device whose medium is gone is not the same as removing
one that is merely no longer wanted. The medium is not coming back, so
the filesystems mounted from it have become useless, and keeping them
around only means the device cannot be removed at all: the open cdevs
make it busy.

Add a variant of blockdevice_unregister() for that case which unmounts
the filesystems on the device and on its partitions first. Removable
media are the ones that need it - a USB stick that has been unplugged, an
SD card that has been ejected - so this is not something the block layer
can decide on its own, the driver knows.

The error case is still reported so a caller that cannot get rid of the
device knows it must not free it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Assisted-by: Claude:claude-opus-5
---
 common/block.c  | 26 ++++++++++++++++++++++++++
 include/block.h |  1 +
 2 files changed, 27 insertions(+)

diff --git a/common/block.c b/common/block.c
index 141604eb87..5441c7ca18 100644
--- a/common/block.c
+++ b/common/block.c
@@ -7,6 +7,7 @@
 #include <common.h>
 #include <block.h>
 #include <disks.h>
+#include <fs.h>
 #include <malloc.h>
 #include <linux/err.h>
 #include <linux/list.h>
@@ -546,6 +547,31 @@ int blockdevice_unregister(struct block_device *blk)
 	return 0;
 }
 
+/**
+ * blockdevice_unregister_removed - remove a block device whose medium is gone
+ * @blk: the block device
+ *
+ * For media that can disappear while barebox is running: a USB stick that
+ * has been unplugged, an SD card that has been ejected. The filesystems
+ * mounted from the device or from one of its partitions cannot be used
+ * anymore, and would only keep the device from going away, so drop them.
+ *
+ * Use blockdevice_unregister() instead when the device is still there and
+ * the removal is not forced upon us. That one leaves the mounts alone and
+ * fails when the device is in use.
+ *
+ * Return: 0 when the device has been removed, a negative error code when
+ *         something still holds it open. In the latter case the caller
+ *         must not free the block device: the cdevs are still registered
+ *         and refer to it.
+ */
+int blockdevice_unregister_removed(struct block_device *blk)
+{
+	cdev_umount_all(&blk->cdev);
+
+	return blockdevice_unregister(blk);
+}
+
 int block_read(struct block_device *blk, void *buf, sector_t block, blkcnt_t num_blocks)
 {
 	int ret;
diff --git a/include/block.h b/include/block.h
index 9a0102db15..065ae81358 100644
--- a/include/block.h
+++ b/include/block.h
@@ -97,6 +97,7 @@ extern struct list_head block_device_list;
 
 int blockdevice_register(struct block_device *blk);
 int blockdevice_unregister(struct block_device *blk);
+int blockdevice_unregister_removed(struct block_device *blk);
 
 int block_read(struct block_device *blk, void *buf, sector_t block, blkcnt_t num_blocks);
 int block_write(struct block_device *blk, void *buf, sector_t block, blkcnt_t num_blocks);

-- 
2.47.3



