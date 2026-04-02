Delivery-date: Thu, 02 Apr 2026 09:55:59 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w8CuF-007m8X-2j
	for lore@lore.pengutronix.de;
	Thu, 02 Apr 2026 09:55:59 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w8CuF-0006Z2-8C
	for lore@pengutronix.de; Thu, 02 Apr 2026 09:55:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=8P3S0CDg9c1zp/vmos4NWlJ6sfRq54R8KioI7hFIbgM=; b=ggJb6Egt4X4+jAe/MK1mzcCQFU
	UKLjL/CEsd+mR/+FiPNmchbWIbupOQjt+l6ZZxM80672BYGMitXdvHQjkpzsqZ2j58Wkq3GFMkJxU
	55xbVKVOSTWGCgT3gVPpYJ+IFsDFpglQFjqLCRtEGy+kwYN4w5pMQErbIn2vB4V5QxzNIU4XXPF3Y
	eh163aLWJbmiQq68n/48hB8kFj9tWZ9bzu8r/IkDcaRcsciDC4i7aw5k0WONjcMIhFAl8kEoRvk+w
	7Jcnr7tcNdUK/BOT7N6a6/FPwDVJluG9m/BOYv1vAkHKI43uPpSn7SywKSJNkj+syikg1WQQzFVbG
	FsYteXww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w8Ctr-0000000H7ft-2zzh;
	Thu, 02 Apr 2026 07:55:35 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w8Cto-0000000H7fA-3Zmh
	for barebox@lists.infradead.org;
	Thu, 02 Apr 2026 07:55:34 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w8Ctf-0006Nv-E2; Thu, 02 Apr 2026 09:55:23 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w8Ctf-003L4i-0f;
	Thu, 02 Apr 2026 09:55:23 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w8Ctf-00000003RCj-0bY7;
	Thu, 02 Apr 2026 09:55:23 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 02 Apr 2026 09:55:23 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260402-net-nfs-buffer-overflows-v1-1-5dc46ef1da81@pengutronix.de>
References: <20260402-net-nfs-buffer-overflows-v1-0-5dc46ef1da81@pengutronix.de>
In-Reply-To: <20260402-net-nfs-buffer-overflows-v1-0-5dc46ef1da81@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1775116523; l=2174;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=x2iJTIQRRShQtGZiR40jL5lkVW3A/0DSgbEQiTpk4tw=;
 b=G6GdsG18PVuX/yTMQq/h6xMPfpfRfCHC808e0bxcIqBoYGY6L00CJtE+dNaS9tHYGmB9LQ0og
 rTp3As+jXPVCJAtbDaVjewpj31NdjKINZ7CGpXSbqLNek9Mq6lVG7zs
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260402_005533_843785_AE1D2B1C 
X-CRM114-Status: GOOD (  10.26  )
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
Cc: "Claude Opus 4.6 \(1M context\)" <noreply@anthropic.com>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] fs: nfs: fix stack and packet buffer overflows from
 long NFS paths
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

nfs_mount_req() and nfs_umount_req() copy the NFS mount path into a
stack-allocated uint32_t data[1024] buffer (4096 bytes) with only ~40
bytes of RPC header overhead. A mount path longer than ~4056 characters
overflows the stack array.

Additionally, rpc_req() copies the data array into the PKTSIZE (1536)
packet buffer with only 1494 bytes available for UDP payload. After the
28-byte RPC call header, paths longer than ~1424 characters overflow
the packet buffer.

Fix by:
- Adding a path length check in nfs_mount_req() and nfs_umount_req()
  against the stack buffer capacity before constructing the request
- Adding a payload size check in rpc_req() before the memcpy to the
  packet buffer, protecting all RPC callers from overflows

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Co-Authored-By: Claude Opus 4.6 (1M context) <noreply@anthropic.com>
---
 fs/nfs.c | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/fs/nfs.c b/fs/nfs.c
index 0b40c56ff3..edc15e0ce6 100644
--- a/fs/nfs.c
+++ b/fs/nfs.c
@@ -534,6 +534,13 @@ static struct packet *rpc_req(struct nfs_priv *npriv, int rpc_prog,
 		pkt.vers = hton32(3);
 	}
 
+	if (sizeof(pkt) + datalen * sizeof(uint32_t) >
+	    PKTSIZE - ETHER_HDR_SIZE - sizeof(struct iphdr) - sizeof(struct udphdr)) {
+		dev_err(dev, "RPC request too large (%zu bytes)\n",
+			sizeof(pkt) + datalen * sizeof(uint32_t));
+		return ERR_PTR(-EMSGSIZE);
+	}
+
 	memcpy(payload, &pkt, sizeof(pkt));
 	memcpy(payload + sizeof(pkt), data, datalen * sizeof(uint32_t));
 
@@ -786,6 +793,11 @@ static int nfs_mount_req(struct nfs_priv *npriv)
 
 	pathlen = strlen(npriv->path);
 
+	if (pathlen > sizeof(data) - 11 * sizeof(uint32_t)) {
+		dev_err(dev, "path too long (%d bytes)\n", pathlen);
+		return -ENAMETOOLONG;
+	}
+
 	dev_dbg(dev, "%s: %s\n", __func__, npriv->path);
 
 	p = &(data[0]);
@@ -862,6 +874,8 @@ static void nfs_umount_req(struct nfs_priv *npriv)
 	struct packet *nfs_packet;
 
 	pathlen = strlen(npriv->path);
+	if (pathlen > sizeof(data) - 11 * sizeof(uint32_t))
+		return;
 
 	p = &(data[0]);
 	p = rpc_add_credentials(p);

-- 
2.47.3



