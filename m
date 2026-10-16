Delivery-date: Fri, 16 Oct 2026 09:38:20 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xHcWC-00EGbI-2q
	for lore@lore.pengutronix.de;
	Fri, 16 Oct 2026 09:38:20 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 37474202148
	for <lore@pengutronix.de>; Fri, 16 Oct 2026 09:38:20 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=phzusgIb;
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=XwAXnhAm;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}");
	dmarc=none
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1792136300; a=rsa-sha256;
	cv=fail;
	b=cTgQ7s5XNkFxGqXkP3dftSgep3SE5YEyeKZQnOhqLCuiQBvYXcLT8RnGZ3wgZgMA4QGVNV
	WddfrAouh6RRS0+Usz3v3zUvPzMZU1iGAHXoCmxUNidNcLM9UoZxOFnG6rMXNc28uF75W8
	e7nao1tU2l5MWTa/2SN+TTiQeVWEr7m/FRBFg/DQya7Hsv8ZrZ39akQniYPrlDdc1L0ZU9
	xThtyNqHsFuh47g/f6QiJRxtRIrQPeKOexPjogMfJ0karZ4ZumxBdKjKfvJyM9eJtyqwK+
	Sb5RgAvOIKUl/ydip2m4OJi/VlxoQQlVNW+BuTCiL8QuQ5l7oEnMb/lCLeebww==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=phzusgIb;
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=XwAXnhAm;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}");
	dmarc=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792136300;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=LzGvYypUc4pR6ltb97kz1hytabdMuHD4K64otNnCywA=;
	b=Jq8NaO9o2QVNA38HAwXWrlG6mBxTaK83TsKcsBvXGgCfeIJK0akrNS3e+q5G4gMFqd12BK
	D08wLjxh7wvAv7+h826aaMoy/S5J9Bq3YDcANSU4AUCXQ0h13ZORHQBmXfmGOqUdBpKlBX
	kK22dRLac1cvAlrpyW5nUU70qFxIlWG8AZ7XlXyFgn3sq4SUbJwHQ/MLRF8l9zMJEw2sjw
	KTIVz3j4ljvehyp9OuS1HHUTeFevg5fDcn/KKPHtfzg6jXrzaYCDDbDUOiN2TEPfcPxV4j
	pdwrDUR5exgSRupV6CHZ5qzF1/j0fgeg2Mv1+T8WASZ3us5/1p+2uOAGCdpaIA==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=LzGvYypUc4pR6ltb97kz1hytabdMuHD4K64otNnCywA=; b=phzusgIbtCaYk2mF9B58JVmVTW
	CG17TR1oG71QDPu5/EKzxs26cr0anELX+g0CZpp3+iWl7vtoJNntcq/5Akpot2dCZvmpLuSAIi2JV
	bHlLtEzjtY2pwHFcxnWVq9lLxVzhbdmZixdT/ycPia50oCLxJD5H6tUoXQtF00N+Cl+4oBCAvyQ1Q
	4+NPDf+eSx/Tkq+zM6XVuy+cvkYwVnkMWsyy2gpARioLAbin8/tANHUGobqKfCH3HcpfQbDsk9TLq
	8JmSq8K06wc1L++q7/vmPYmuZqkP2r0m3C2gF4ft5wXmuHkx73rW5vXygAnFmWMXyaGFWbeYuQ4ko
	QsmtGeOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHcUx-00000002F24-1EyH;
	Fri, 16 Oct 2026 07:37:03 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHcUt-00000002F1I-0mdD
	for barebox@lists.infradead.org;
	Fri, 16 Oct 2026 07:37:01 +0000
Received: from [127.0.1.1] (unknown [IPv6:2a02:560:5ca5:d100:9ebf:dff:fe00:fdb5])
	(Authenticated sender: sha@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 0E5F7202283;
	Fri, 16 Oct 2026 09:36:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792136216;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=LzGvYypUc4pR6ltb97kz1hytabdMuHD4K64otNnCywA=;
	b=XwAXnhAmsffI9IdqQKa6fz59mMUoFVZk+F7lzCy9g8dcQSoQpBPdE9HrW9XKJV5NPr8mGE
	i+RT3yvx2cIa9G2FLKXs+DpqGQ6hzGdAx6h6+8OqDOwsEK7m4VdAjRY6XV6EmHfKENb3ap
	RHJc7CzMJtEaABgP4HubHViJXwErTmg2nqpIbggzz3MKYdvVG1j9PSnZIwekQMOhB6R9Ho
	A++8ViyqG46hlxD4pOayrC8+gapTfMHtCvJAZUlAoBN0hsE9VwDYfeY/RFmXIfmGfEYWk+
	6hkNQc6iGL1MiOBxr1RJYcffUKLO+c+gOkWIkCLHZCMsrN7mqJWWNJIiDXX+2A==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1792136216; a=rsa-sha256;
	cv=none;
	b=JXuBPOJl2F4qdRnMUQ+iNsOtrn49AH/G3x4Ui8nmYnxA3Skhe7v/LVoEUFYPu5Rnq3RNZ1
	cyJhpvDtlJU14jElvpaGePJzrj141D6xz6Dn7yBbAAoGmSoUmB5KVr1JQakDJsx0k1LawS
	M8FlQZysKj5cOgGFw5dQMXfI2P7dBzsHKXIQ/in8LZcK5fXYSDGlJU6yXA6aGS9J2O2QIG
	D03gXrI5flThX1xbl5YqvV2L+aercfc+NPslng0fUsUdf/wtTOGEkYX9IJN/5BFU8xwIVs
	CQx1hfBYMQfC1PmuD+6WLgcNN895eBLdfiXZ2HYpILEObtjeDfLlrANqHCzXwg==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=sha@pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792136216;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=LzGvYypUc4pR6ltb97kz1hytabdMuHD4K64otNnCywA=;
	b=URIgwQib4D/dgL4xSJVbCyp3E5mDfkT/4KpWs2PaXEgWYcleMaAF3qksbba2xghV+S/8ma
	ncqDYjSEUxVYLyaxCuDJEpnd3fh72FCO96icHnf8+ucdIYv/R/8v0s9jG73jvJJPQnSvYO
	AvK936/gPHiyeOQlNemP4eOlnkiR2B+V24NpJg6lun6tZzCHGotiHzcaeMucmIsjLyUNyz
	Pj162/tFrPNYm3iG27bl2j1ZZgK9hDv6YY1UfRmmwzpeiWiTIhKUWH3UEZSSKMRiMJ/eRJ
	LOSsavpTowXhpX5Zm1KXWOSVcoqNRKiWpfuxS2V6T56ZkwOInNGNCaecS4+BLQ==
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 16 Oct 2026 09:36:54 +0200
Subject: [PATCH 2/3] treewide: use dma_xalloc()/dma_xzalloc() where the
 result isn't checked
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20261016-dma-alloc-v1-2-31fc7afe3954@pengutronix.de>
References: <20261016-dma-alloc-v1-0-31fc7afe3954@pengutronix.de>
In-Reply-To: <20261016-dma-alloc-v1-0-31fc7afe3954@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1792136215; l=19434;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=fmN+JWvsczQoYqkLz/zpNKvwFQu/3r/hwLzOsYRsG70=;
 b=fBKsLpIwNsKJ5wlVWXniSOI1iGKpe4NHxFFhO4LINrRbTcOVH6wpwI/C0QxDInFCyrlTeAwji
 Z4P52h2arKcBTM5IXK0J1t/jkl0yKJge3JdhSTUzynAsRPAmGc9HFp9
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261016_003659_535901_4014C55A 
X-CRM114-Status: GOOD (  18.64  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  dma_alloc() and dma_zalloc() are going to return NULL on allocation
    failure. Switch all callers that don't check for NULL over to the dma_xalloc()
    and dma_xzalloc() variants, so they keep panicking on [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
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
X-Spamd-Result: default: False [-56.41 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:pengutronix.de:reject}];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	MAILLIST(-0.20)[mailman];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_ALL(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	RCVD_COUNT_THREE(0.00)[3];
	RCPT_COUNT_ONE(0.00)[1];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	DKIM_MIXED(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	R_DKIM_REJECT(0.00)[pengutronix.de:s=20260414];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 37474202148
X-Stat-Signature: i73yuydf5nbpza3o9usx7e1cdygnprod

dma_alloc() and dma_zalloc() are going to return NULL on allocation
failure. Switch all callers that don't check for NULL over to the
dma_xalloc() and dma_xzalloc() variants, so they keep panicking on
OOM instead of dereferencing a NULL pointer.

This includes kmalloc(), kzalloc() and kcalloc(), so the many users of
these wrappers that don't check their result keep working as before,
net_alloc_packet(), and the two ext4 symlink allocations that use the
zalloc() alias without checking.

Callers that check the result of dma_alloc() and dma_zalloc() already
are left as they are.

Assisted-by: Claude:claude-opus-5-5
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/mmc_extcsd.c                  |  2 +-
 common/block.c                         |  2 +-
 drivers/ata/disk_ata_drive.c           |  2 +-
 drivers/input/usb_kbd.c                |  2 +-
 drivers/mci/mci-core.c                 | 10 +++++-----
 drivers/net/bcmgenet.c                 |  2 +-
 drivers/net/designware.c               |  4 ++--
 drivers/net/dsa.c                      |  6 +++---
 drivers/net/e1000/main.c               |  2 +-
 drivers/net/fsl-fman.c                 |  2 +-
 drivers/net/fsl_enetc.c                |  2 +-
 drivers/net/macb.c                     |  2 +-
 drivers/net/orion-gbe.c                |  2 +-
 drivers/net/r8169_main.c               |  4 ++--
 drivers/net/usb/smsc95xx.c             |  2 +-
 drivers/usb/core/usb.c                 |  8 ++++----
 drivers/usb/gadget/function/dfu.c      |  2 +-
 drivers/usb/gadget/function/u_serial.c |  2 +-
 drivers/usb/gadget/udc/fsl_udc.c       |  2 +-
 drivers/usb/storage/transport.c        |  6 +++---
 drivers/usb/storage/usb.c              |  8 ++++----
 drivers/video/mipi_dbi.c               |  4 ++--
 drivers/video/ramfb.c                  |  2 +-
 fs/ext4/ext_barebox.c                  |  4 ++--
 include/linux/slab.h                   |  6 +++---
 include/net.h                          |  2 +-
 26 files changed, 46 insertions(+), 46 deletions(-)

diff --git a/commands/mmc_extcsd.c b/commands/mmc_extcsd.c
index b898bd8515..c223525da4 100644
--- a/commands/mmc_extcsd.c
+++ b/commands/mmc_extcsd.c
@@ -2425,7 +2425,7 @@ static int do_mmc_extcsd(int argc, char *argv[])
 		retval = -ENOENT;
 		goto error;
 	}
-	dst = dma_alloc(EXT_CSD_BLOCKSIZE);
+	dst = dma_xalloc(EXT_CSD_BLOCKSIZE);
 
 	retval = mci_send_ext_csd(mci, dst);
 	if (retval != 0)
diff --git a/common/block.c b/common/block.c
index 5441c7ca18..ac03479e2a 100644
--- a/common/block.c
+++ b/common/block.c
@@ -490,7 +490,7 @@ int blockdevice_register(struct block_device *blk)
 
 	for (i = 0; i < 8; i++) {
 		struct chunk *chunk = xzalloc(sizeof(*chunk));
-		chunk->data = dma_alloc(BUFSIZE);
+		chunk->data = dma_xalloc(BUFSIZE);
 		chunk->num = i;
 		list_add_tail(&chunk->list, &blk->idle_blocks);
 	}
diff --git a/drivers/ata/disk_ata_drive.c b/drivers/ata/disk_ata_drive.c
index 0509b7dc78..95c61e9313 100644
--- a/drivers/ata/disk_ata_drive.c
+++ b/drivers/ata/disk_ata_drive.c
@@ -207,7 +207,7 @@ static int ata_port_init(struct ata_port *port)
 			return rc;
 	}
 
-	port->id = dma_alloc(SECTOR_SIZE);
+	port->id = dma_xalloc(SECTOR_SIZE);
 
 	port->blk.dev = dev;
 	port->blk.ops = &ata_ops;
diff --git a/drivers/input/usb_kbd.c b/drivers/input/usb_kbd.c
index 2e75aabf3d..14a54bf3ee 100644
--- a/drivers/input/usb_kbd.c
+++ b/drivers/input/usb_kbd.c
@@ -160,7 +160,7 @@ static int usb_kbd_probe(struct usb_device *usbdev,
 
 	data = xzalloc(sizeof(struct usb_kbd_pdata));
 	usbdev->drv_data = data;
-	data->new = dma_alloc(USB_KBD_BOOT_REPORT_SIZE);
+	data->new = dma_xalloc(USB_KBD_BOOT_REPORT_SIZE);
 
 	data->usbdev = usbdev;
 
diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index 874ee40cb3..3cf91edd97 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -628,7 +628,7 @@ u8 *mci_get_ext_csd(struct mci *mci)
 	u8 *ext_csd;
 	int ret;
 
-	ext_csd = dma_alloc(512);
+	ext_csd = dma_xalloc(512);
 
 	ret = mci_send_ext_csd(mci, ext_csd);
 	if (ret) {
@@ -757,7 +757,7 @@ static int mmc_change_freq(struct mci *mci)
 	char cardtype;
 	int err;
 
-	mci->ext_csd = dma_alloc(512);
+	mci->ext_csd = dma_xalloc(512);
 	mci->card_caps = 0;
 
 	/* Only version 4 supports high-speed */
@@ -895,7 +895,7 @@ static int sd_read_ssr(struct mci *mci)
 	if (!IS_ENABLED(CONFIG_MCI_ERASE))
 		return -ENOSYS;
 
-	ssr = dma_alloc(64);
+	ssr = dma_xalloc(64);
 
 	err = mci_app_sd_status(mci, ssr);
 	if (err)
@@ -1392,7 +1392,7 @@ static int mmc_compare_ext_csds(struct mci *mci, enum mci_bus_width bus_width)
 	if (bus_width == MMC_BUS_WIDTH_1)
 		return 0;
 
-	bw_ext_csd = dma_alloc(512);
+	bw_ext_csd = dma_xalloc(512);
 	err = mci_send_ext_csd(mci, bw_ext_csd);
 	if (err) {
 		dev_info(&mci->dev, "mci_send_ext_csd failed with %d\n", err);
@@ -3137,7 +3137,7 @@ static int mci_card_probe(struct mci *mci)
 	}
 
 	if (!sector_buf)
-		sector_buf = dma_alloc(SECTOR_SIZE);
+		sector_buf = dma_xalloc(SECTOR_SIZE);
 
 	/* FIXME we don't check sector_buf against the device dma mask here */
 
diff --git a/drivers/net/bcmgenet.c b/drivers/net/bcmgenet.c
index 15bdaa0e5d..691b5cf9ab 100644
--- a/drivers/net/bcmgenet.c
+++ b/drivers/net/bcmgenet.c
@@ -536,7 +536,7 @@ static int bcmgenet_probe(struct device *dev)
 	}
 	priv->mac_reg = IOMEM(iores->start);
 	priv->dev = dev;
-	priv->rxbuffer = dma_alloc(RX_TOTAL_BUFSIZE);
+	priv->rxbuffer = dma_xalloc(RX_TOTAL_BUFSIZE);
 
 	edev->open = bcmgenet_gmac_eth_start;
 	edev->send = bcmgenet_gmac_eth_send;
diff --git a/drivers/net/designware.c b/drivers/net/designware.c
index 6b6d914d7b..de7d3dcf10 100644
--- a/drivers/net/designware.c
+++ b/drivers/net/designware.c
@@ -496,8 +496,8 @@ struct dw_eth_dev *dwc_drv_probe(struct device *dev)
 	if (!priv->rx_mac_descrtable_cpu)
 		return ERR_PTR(-EFAULT);
 
-	priv->txbuffs = dma_alloc(TX_TOTAL_BUFSIZE);
-	priv->rxbuffs = dma_alloc(RX_TOTAL_BUFSIZE);
+	priv->txbuffs = dma_xalloc(TX_TOTAL_BUFSIZE);
+	priv->rxbuffs = dma_xalloc(RX_TOTAL_BUFSIZE);
 
 	edev = &priv->netdev;
 	miibus = &priv->miibus;
diff --git a/drivers/net/dsa.c b/drivers/net/dsa.c
index 7b2de7324e..c53d683007 100644
--- a/drivers/net/dsa.c
+++ b/drivers/net/dsa.c
@@ -275,11 +275,11 @@ static int dsa_switch_register_edev(struct dsa_switch *ds,
 
 	/* DMA is done on buffer in receive ring allocated by network
 	 * driver. This is then copied into this buffer, so we don't
-	 * strictly need to use dma_alloc() here, unlike ds->tx_buf.
+	 * strictly need to use dma_xalloc() here, unlike ds->tx_buf.
 	 * We do it anyway as we don't want DSA buffers to be subtly
 	 * different to that of a directly used network interface.
 	 */
-	dp->rx_buf = dma_alloc(DSA_PKTSIZE);
+	dp->rx_buf = dma_xalloc(DSA_PKTSIZE);
 
 	edev = &dp->edev;
 	edev->priv = dp;
@@ -473,7 +473,7 @@ int dsa_register_switch(struct dsa_switch *ds)
 			return ret;
 	}
 
-	ds->tx_buf = dma_alloc(DSA_PKTSIZE);
+	ds->tx_buf = dma_xalloc(DSA_PKTSIZE);
 
 	list_add_tail(&ds->list, &dsa_switch_list);
 
diff --git a/drivers/net/e1000/main.c b/drivers/net/e1000/main.c
index 182db47ea7..02c92721a4 100644
--- a/drivers/net/e1000/main.c
+++ b/drivers/net/e1000/main.c
@@ -3605,7 +3605,7 @@ static int e1000_probe(struct pci_dev *pdev, const struct pci_device_id *id)
 	pdev->dev.priv = hw;
 	edev->priv = hw;
 
-	hw->packet = dma_alloc(PAGE_SIZE);
+	hw->packet = dma_xalloc(PAGE_SIZE);
 	hw->packet_dma = dma_map_single(hw->dev, hw->packet, PAGE_SIZE,
 					DMA_FROM_DEVICE);
 	if (dma_mapping_error(hw->dev, hw->packet_dma))
diff --git a/drivers/net/fsl-fman.c b/drivers/net/fsl-fman.c
index f70af5ff14..f98edbc85c 100644
--- a/drivers/net/fsl-fman.c
+++ b/drivers/net/fsl-fman.c
@@ -624,7 +624,7 @@ static int fm_eth_rx_port_parameter_init(struct fm_eth *fm_eth)
 		return -ENOMEM;
 
 	/* alloc Rx buffer from main memory */
-	rx_buf_pool = dma_zalloc(MAX_RXBUF_LEN * RX_BD_RING_SIZE);
+	rx_buf_pool = dma_xzalloc(MAX_RXBUF_LEN * RX_BD_RING_SIZE);
 
 	/* save them to fm_eth */
 	fm_eth->rx_bd_ring = rx_bd_ring_base;
diff --git a/drivers/net/fsl_enetc.c b/drivers/net/fsl_enetc.c
index 174c2ed045..9a717ed1e9 100644
--- a/drivers/net/fsl_enetc.c
+++ b/drivers/net/fsl_enetc.c
@@ -356,7 +356,7 @@ static void enetc_setup_rx_bdr(struct eth_device *edev)
 	       rx_bdr->bd_count * sizeof(union enetc_rx_bd));
 
 	for (i = 0; i < rx_bdr->bd_count; i++) {
-		priv->rx_pkg[i] = dma_alloc(PKTSIZE);
+		priv->rx_pkg[i] = dma_xalloc(PKTSIZE);
 		priv->rx_pkg_phys[i] = dma_map_single(priv->dev, priv->rx_pkg[i],
 						      PKTSIZE, DMA_FROM_DEVICE);
 		priv->enetc_rxbd[i].w.addr = priv->rx_pkg_phys[i];
diff --git a/drivers/net/macb.c b/drivers/net/macb.c
index 012372b66e..71e953bf73 100644
--- a/drivers/net/macb.c
+++ b/drivers/net/macb.c
@@ -901,7 +901,7 @@ static int macb_probe(struct device *dev)
 		edev->recv = macb_recv;
 
 	macb_init_rx_buffer_size(macb, PKTSIZE);
-	macb->rx_buffer = dma_alloc(macb->rx_buffer_size * macb->rx_ring_size);
+	macb->rx_buffer = dma_xalloc(macb->rx_buffer_size * macb->rx_ring_size);
 	macb->rx_ring = dma_alloc_coherent(DMA_DEVICE_BROKEN,
 					   RX_RING_BYTES(macb), &macb->rx_ring_phys);
 	macb->tx_ring = dma_alloc_coherent(DMA_DEVICE_BROKEN,
diff --git a/drivers/net/orion-gbe.c b/drivers/net/orion-gbe.c
index abf3956c8f..bee0f0b1b7 100644
--- a/drivers/net/orion-gbe.c
+++ b/drivers/net/orion-gbe.c
@@ -413,7 +413,7 @@ static int port_probe(struct device *parent, struct port_priv *port)
 	if (!port->txdesc || !port->rxdesc)
 		return -ENOMEM;
 
-	port->rxbuf = dma_alloc(RX_RING_SIZE * ALIGN(PKTSIZE, 8));
+	port->rxbuf = dma_xalloc(RX_RING_SIZE * ALIGN(PKTSIZE, 8));
 
 	port_stop(port);
 	port_init_rxdesc_ring(port);
diff --git a/drivers/net/r8169_main.c b/drivers/net/r8169_main.c
index 444bdecb9b..5105cd6f7e 100644
--- a/drivers/net/r8169_main.c
+++ b/drivers/net/r8169_main.c
@@ -2887,7 +2887,7 @@ static int rtl8169_init_ring(struct rtl8169_private *tp)
 	if (!tp->TxDescArray)
 		return -ENOMEM;
 
-	tp->tx_buf = dma_alloc(NUM_TX_DESC * PKT_BUF_SIZE);
+	tp->tx_buf = dma_xalloc(NUM_TX_DESC * PKT_BUF_SIZE);
 
 	tp->tx_buf_phys = dma_map_single(edev->parent, tp->tx_buf,
 					   NUM_TX_DESC * PKT_BUF_SIZE, DMA_TO_DEVICE);
@@ -2898,7 +2898,7 @@ static int rtl8169_init_ring(struct rtl8169_private *tp)
 	if (!tp->RxDescArray)
 		return -ENOMEM;
 
-	tp->rx_buf = dma_alloc(NUM_RX_DESC * PKT_BUF_SIZE);
+	tp->rx_buf = dma_xalloc(NUM_RX_DESC * PKT_BUF_SIZE);
 
 	tp->rx_buf_phys = dma_map_single(edev->parent, tp->rx_buf,
 					   NUM_RX_DESC * PKT_BUF_SIZE, DMA_FROM_DEVICE);
diff --git a/drivers/net/usb/smsc95xx.c b/drivers/net/usb/smsc95xx.c
index 00267f282c..8a34104575 100644
--- a/drivers/net/usb/smsc95xx.c
+++ b/drivers/net/usb/smsc95xx.c
@@ -721,7 +721,7 @@ static int smsc95xx_bind(struct usbnet *dev)
 		return -ENOMEM;
 	}
 
-	pdata->iobuf = dma_alloc(4);
+	pdata->iobuf = dma_xalloc(4);
 
 	/* Init all registers */
 	ret = smsc95xx_reset(dev);
diff --git a/drivers/usb/core/usb.c b/drivers/usb/core/usb.c
index 1293139e7b..19bdfef2dd 100644
--- a/drivers/usb/core/usb.c
+++ b/drivers/usb/core/usb.c
@@ -493,7 +493,7 @@ int usb_new_device(struct usb_device *dev)
 
 	dev->dev.id = DEVICE_ID_SINGLE;
 
-	buf = dma_alloc(USB_BUFSIZ);
+	buf = dma_xalloc(USB_BUFSIZ);
 
 	if (parent)
 		dev->level = parent->level + 1;
@@ -678,8 +678,8 @@ struct usb_device *usb_alloc_new_device(void)
 
 	usbdev->maxchild = 0;
 	usbdev->dev.bus = &usb_bus_type;
-	usbdev->setup_packet = dma_alloc(sizeof(*usbdev->setup_packet));
-	usbdev->descriptor = dma_alloc(sizeof(*usbdev->descriptor));
+	usbdev->setup_packet = dma_xalloc(sizeof(*usbdev->setup_packet));
+	usbdev->descriptor = dma_xalloc(sizeof(*usbdev->descriptor));
 
 	return usbdev;
 }
@@ -1192,7 +1192,7 @@ int usb_string(struct usb_device *dev, int index, char *buf, size_t size)
 	if (size <= 0 || !buf || !index)
 		return -1;
 
-	tbuf = dma_alloc(USB_BUFSIZ);
+	tbuf = dma_xalloc(USB_BUFSIZ);
 	buf[0] = 0;
 
 	/* get langid for strings if it's not yet known */
diff --git a/drivers/usb/gadget/function/dfu.c b/drivers/usb/gadget/function/dfu.c
index a09eeb930b..90363586ee 100644
--- a/drivers/usb/gadget/function/dfu.c
+++ b/drivers/usb/gadget/function/dfu.c
@@ -395,7 +395,7 @@ dfu_bind(struct usb_configuration *c, struct usb_function *f)
 		status = -ENOMEM;
 		goto out;
 	}
-	dfu->dnreq->buf = dma_alloc(CONFIG_USBD_DFU_XFER_SIZE);
+	dfu->dnreq->buf = dma_xalloc(CONFIG_USBD_DFU_XFER_SIZE);
 	dfu->dnreq->complete = dn_complete;
 	dfu->dnreq->zero = 0;
 
diff --git a/drivers/usb/gadget/function/u_serial.c b/drivers/usb/gadget/function/u_serial.c
index 45a7629706..5f65a426af 100644
--- a/drivers/usb/gadget/function/u_serial.c
+++ b/drivers/usb/gadget/function/u_serial.c
@@ -210,7 +210,7 @@ gs_alloc_req(struct usb_ep *ep, unsigned len)
 
 	if (req != NULL) {
 		req->length = len;
-		req->buf = dma_alloc(len);
+		req->buf = dma_xalloc(len);
 	}
 
 	return req;
diff --git a/drivers/usb/gadget/udc/fsl_udc.c b/drivers/usb/gadget/udc/fsl_udc.c
index f118a252a9..101563d87b 100644
--- a/drivers/usb/gadget/udc/fsl_udc.c
+++ b/drivers/usb/gadget/udc/fsl_udc.c
@@ -1712,7 +1712,7 @@ static int struct_udc_setup(struct fsl_udc *udc,
 	udc->status_req = container_of(fsl_alloc_request(NULL),
 			struct fsl_req, req);
 	/* allocate a small amount of memory to get valid address */
-	udc->status_req->req.buf = dma_alloc(8);
+	udc->status_req->req.buf = dma_xalloc(8);
 	udc->status_req->req.length = 8;
 	udc->resume_state = USB_STATE_NOTATTACHED;
 	udc->usb_state = USB_STATE_POWERED;
diff --git a/drivers/usb/storage/transport.c b/drivers/usb/storage/transport.c
index bda8f93c7a..850c025f23 100644
--- a/drivers/usb/storage/transport.c
+++ b/drivers/usb/storage/transport.c
@@ -51,7 +51,7 @@ int usb_stor_Bulk_max_lun(struct us_data *us)
 {
 	struct device *dev = &us->pusb_dev->dev;
 	int len, ret = 0;
-	unsigned char *iobuf = dma_alloc(1);
+	unsigned char *iobuf = dma_xalloc(1);
 
 	/* issue the command */
 	iobuf[0] = 0;
@@ -96,8 +96,8 @@ int usb_stor_Bulk_transport(struct us_blk_dev *usb_blkdev,
 	int dir_in = US_DIRECTION(cmd[0]);
 	int ret = 0;
 
-	cbw = dma_alloc(sizeof(*cbw));
-	csw = dma_alloc(sizeof(*csw));
+	cbw = dma_xalloc(sizeof(*cbw));
+	csw = dma_xalloc(sizeof(*csw));
 
 	/* set up the command wrapper */
 	cbw->Signature = cpu_to_le32(US_BULK_CB_SIGN);
diff --git a/drivers/usb/storage/usb.c b/drivers/usb/storage/usb.c
index 55facf8a60..49fa8bfd27 100644
--- a/drivers/usb/storage/usb.c
+++ b/drivers/usb/storage/usb.c
@@ -35,7 +35,7 @@ static int usb_stor_request_sense(struct us_blk_dev *usb_blkdev)
 	struct device *dev = &us->pusb_dev->dev;
 	u8 cmd[6];
 	const u8 datalen = 18;
-	u8 *data = dma_alloc(datalen);
+	u8 *data = dma_xalloc(datalen);
 
 	dev_dbg(dev, "SCSI_REQ_SENSE\n");
 
@@ -113,7 +113,7 @@ static int usb_stor_inquiry(struct us_blk_dev *usb_blkdev)
 	int ret;
 	u8 cmd[6];
 	const u16 datalen = 36;
-	u8 *data = dma_alloc(datalen);
+	u8 *data = dma_xalloc(datalen);
 
 	memset(cmd, 0, sizeof(cmd));
 	cmd[0] = SCSI_INQUIRY;
@@ -179,7 +179,7 @@ static int read_capacity_16(struct us_blk_dev *usb_blkdev)
 	struct device *dev = &usb_blkdev->us->pusb_dev->dev;
 	unsigned char cmd[16];
 	const u8 datalen = 32;
-	u8 *data = dma_alloc(datalen);
+	u8 *data = dma_xalloc(datalen);
 	int ret;
 	sector_t lba;
 	unsigned sector_size;
@@ -221,7 +221,7 @@ static int read_capacity_10(struct us_blk_dev *usb_blkdev)
 	struct device *dev = &usb_blkdev->us->pusb_dev->dev;
 	unsigned char cmd[16];
 	const u32 datalen = 8;
-	__be32 *data = dma_alloc(datalen);
+	__be32 *data = dma_xalloc(datalen);
 	int ret;
 	sector_t lba;
 	unsigned sector_size;
diff --git a/drivers/video/mipi_dbi.c b/drivers/video/mipi_dbi.c
index c93af9fb0c..2899856f5d 100644
--- a/drivers/video/mipi_dbi.c
+++ b/drivers/video/mipi_dbi.c
@@ -411,7 +411,7 @@ int mipi_dbi_dev_init(struct mipi_dbi_dev *dbidev, struct fb_ops *ops,
 	info->bits_per_pixel = 16;
 	info->line_length = info->xres * 2;
 	info->screen_size = info->line_length * info->yres;
-	info->screen_base = dma_zalloc(info->screen_size);
+	info->screen_base = dma_xzalloc(info->screen_size);
 
 	info->red.length = 5;
 	info->red.offset = 11;
@@ -420,7 +420,7 @@ int mipi_dbi_dev_init(struct mipi_dbi_dev *dbidev, struct fb_ops *ops,
 	info->blue.length = 5;
 	info->blue.offset = 0;
 
-	dbidev->tx_buf = dma_alloc(info->screen_size);
+	dbidev->tx_buf = dma_xalloc(info->screen_size);
 
 	return 0;
 }
diff --git a/drivers/video/ramfb.c b/drivers/video/ramfb.c
index 0ad864c8d3..dc31d65bdb 100644
--- a/drivers/video/ramfb.c
+++ b/drivers/video/ramfb.c
@@ -52,7 +52,7 @@ static void ramfb_enable(struct fb_info *fbi)
 	struct ramfb *ramfb = fbi->priv;
 	struct fw_cfg_etc_ramfb *etc_ramfb;
 
-	etc_ramfb = dma_alloc(sizeof(*etc_ramfb));
+	etc_ramfb = dma_xalloc(sizeof(*etc_ramfb));
 
 	etc_ramfb->addr = cpu_to_be64(ramfb->screen_dma);
 	etc_ramfb->fourcc = cpu_to_be32(DRM_FORMAT_XRGB8888);
diff --git a/fs/ext4/ext_barebox.c b/fs/ext4/ext_barebox.c
index f9a978c10c..8f6802e94b 100644
--- a/fs/ext4/ext_barebox.c
+++ b/fs/ext4/ext_barebox.c
@@ -200,7 +200,7 @@ static const char *ext_get_link(struct dentry *dentry, struct inode *inode)
 
 	BUG_ON(inode->i_link);
 
-	inode->i_link = zalloc(size_add(inode->i_size, 1));
+	inode->i_link = dma_xzalloc(size_add(inode->i_size, 1));
 
 	ret = ext4fs_read_file(node, 0, inode->i_size, inode->i_link);
 	if (ret == 0) {
@@ -251,7 +251,7 @@ struct inode *ext_get_inode(struct super_block *sb, int ino)
 	case S_IFLNK:
 		inode->i_op = &ext_symlink_inode_operations;
 		if (inode->i_size < sizeof(node->inode.b.symlink)) {
-			inode->i_link = zalloc(inode->i_size + 1);
+			inode->i_link = dma_xzalloc(inode->i_size + 1);
 			strncpy(inode->i_link, node->inode.b.symlink,
 				inode->i_size);
 		}
diff --git a/include/linux/slab.h b/include/linux/slab.h
index 93ce25a582..e8222f13e5 100644
--- a/include/linux/slab.h
+++ b/include/linux/slab.h
@@ -28,7 +28,7 @@
 
 static inline void *kmalloc(size_t size, gfp_t flags)
 {
-	return dma_alloc(size);
+	return dma_xalloc(size);
 }
 
 struct kmem_cache {
@@ -90,7 +90,7 @@ static inline void kmem_cache_free(struct kmem_cache *cache, void *mem)
 
 static inline void *kzalloc(size_t size, gfp_t flags)
 {
-	return dma_zalloc(size);
+	return dma_xzalloc(size);
 }
 
 /**
@@ -106,7 +106,7 @@ static inline void *kmalloc_array(size_t n, size_t size, gfp_t flags)
 
 static inline void *kcalloc(size_t n, size_t size, gfp_t flags)
 {
-	return dma_zalloc(size_mul(n, size));
+	return dma_xzalloc(size_mul(n, size));
 }
 
 static inline char *kstrdup(const char *str, gfp_t flags)
diff --git a/include/net.h b/include/net.h
index 4d443135c1..3500bc96ee 100644
--- a/include/net.h
+++ b/include/net.h
@@ -549,7 +549,7 @@ struct net_connection {
 
 static inline char *net_alloc_packet(void)
 {
-	return dma_alloc(PKTSIZE);
+	return dma_xalloc(PKTSIZE);
 }
 
 static inline void net_free_packet(char *pkt)

-- 
2.47.3



