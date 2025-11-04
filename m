Delivery-date: Tue, 04 Nov 2025 09:08:52 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vGC60-00F9GE-06
	for lore@lore.pengutronix.de;
	Tue, 04 Nov 2025 09:08:52 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vGC5z-00034W-ED
	for lore@pengutronix.de; Tue, 04 Nov 2025 09:08:51 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=mJq/XDFZ9GMSBVAGU6W1hX6vrQzgPqVnrOlrbBytKGs=; b=GJsy32E4P5Xyq4d2xxzqtMQNnb
	RGLjdS5msD/5ndb/ln8q9Z6A90AQYYthWK+PGpFJ1rmSH9p7UyOPn668pySxf9v9+dZAkrOlmn8QI
	/+fkM4WoJYTY7MOMcxpd/i1vGX5Zv+7hYtF/eH8TDtn3YsqHY5xB4d7NHanicp/XFgVCRy8F0PYkn
	PXdr4yLJ44X211bLwL5ua9snBlRgASB8vL4n+3wDAKhbPbMO5xp+kvPg3I4bE55QQKXFOHr4fygGF
	aQ8q4kZeNMNKgPcV8MPvBJN2E+sxRRjB9tEHtMqiwXFJ8b2Ra8HT3+75/hVtPGXORZsf7PWzvRenR
	wCTbFqqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vGC5S-0000000BNu7-3KOs;
	Tue, 04 Nov 2025 08:08:18 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vGC5P-0000000BNs7-32fi
	for barebox@lists.infradead.org;
	Tue, 04 Nov 2025 08:08:17 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vGC5N-0002ni-8B; Tue, 04 Nov 2025 09:08:13 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vGC5M-006zpO-35;
	Tue, 04 Nov 2025 09:08:12 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vGC5N-00000009AfK-1M5c;
	Tue, 04 Nov 2025 09:08:12 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 04 Nov 2025 09:08:05 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251104-nfs-v1-1-3e69e5c82a41@pengutronix.de>
References: <20251104-nfs-v1-0-3e69e5c82a41@pengutronix.de>
In-Reply-To: <20251104-nfs-v1-0-3e69e5c82a41@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1762243692; l=2307;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=VlAhM+dyKaX/leEGYP2mJSM7oF3TO4gLxYLCRcp71V0=;
 b=XUG8Eom0fssoPyxiXIt/zpZF5hX6XZNHBB2TDciUGGbm/P8gfWlF3Xrf1CHXVSLVMlTyVs5mb
 47H+CeFiZrwB258th3oMrikwmg8TPBAqzjagvwHu0SHT5MTxK1leG0/
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251104_000815_787191_A8F1362A 
X-CRM114-Status: GOOD (  13.95  )
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
X-Spam-Status: No, score=-4.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 1/4] fs: nfs: drop PROG_NFS special casing
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

For rpc_prog == PROG_NFS the nfs error is checked in rpc_check_reply()
and erroneous packets are discarded right away. This is unnecessary
since the nfs error is checked by the callers anyway. Drop the duplicate
error checking to simplify the code.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/nfs.c | 26 +++-----------------------
 1 file changed, 3 insertions(+), 23 deletions(-)

diff --git a/fs/nfs.c b/fs/nfs.c
index 9c72d709fb44fa1f4fb60f7aa93bd1733fa50efa..ef1ab1a6e6497fb40553dde16793f2e1a8808b53 100644
--- a/fs/nfs.c
+++ b/fs/nfs.c
@@ -421,14 +421,10 @@ static uint32_t *rpc_add_credentials(uint32_t *p)
 	return p;
 }
 
-static int rpc_check_reply(struct packet *pkt, int rpc_prog,
-			   uint32_t rpc_id, int *nfserr)
+static int rpc_check_reply(struct packet *pkt, uint32_t rpc_id)
 {
-	uint32_t *data;
 	struct rpc_reply rpc;
 
-	*nfserr = 0;
-
 	memcpy(&rpc, pkt->data, sizeof(rpc));
 
 	if (ntoh32(rpc.id) != rpc_id)
@@ -440,15 +436,6 @@ static int rpc_check_reply(struct packet *pkt, int rpc_prog,
 		return -EINVAL;
 	}
 
-	if (rpc_prog != PROG_NFS)
-		return 0;
-
-	data = (uint32_t *)(pkt->data + sizeof(struct rpc_reply));
-	*nfserr = ntoh32(net_read_uint32(data));
-	*nfserr = -*nfserr;
-
-	debug("%s: err %d\n", __func__, *nfserr);
-
 	return 0;
 }
 
@@ -468,7 +455,6 @@ static struct packet *rpc_req(struct nfs_priv *npriv, int rpc_prog,
 	unsigned short dport;
 	int ret;
 	unsigned char *payload = net_udp_get_payload(npriv->con);
-	int nfserr;
 	int tries = 0;
 	struct packet *packet;
 
@@ -530,8 +516,7 @@ static struct packet *rpc_req(struct nfs_priv *npriv, int rpc_prog,
 
 		packet = list_first_entry(&npriv->packets, struct packet, list);
 
-		ret = rpc_check_reply(packet, rpc_prog,
-				      npriv->rpc_id, &nfserr);
+		ret = rpc_check_reply(packet, npriv->rpc_id);
 		if (ret == -EAGAIN) {
 			nfs_free_packet(packet);
 			continue;
@@ -539,12 +524,7 @@ static struct packet *rpc_req(struct nfs_priv *npriv, int rpc_prog,
 			nfs_free_packet(packet);
 			return ERR_PTR(ret);
 		} else {
-			if (rpc_prog == PROG_NFS && nfserr) {
-				nfs_free_packet(packet);
-				return ERR_PTR(nfserr);
-			} else {
-				return packet;
-			}
+			return packet;
 		}
 	}
 }

-- 
2.47.3



