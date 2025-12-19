Delivery-date: Fri, 19 Dec 2025 11:38:18 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWXsI-00DAdc-0R
	for lore@lore.pengutronix.de;
	Fri, 19 Dec 2025 11:38:18 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWXs4-00065V-Mf
	for lore@pengutronix.de; Fri, 19 Dec 2025 11:38:17 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6CvWf29SbumzmcWIhP7cWCzf4gcXq6kWfxj3uoCkKzQ=; b=2f4+RP6/Hed3JG
	Xx9J9AJ2jQhtd+bxL9UQoe10MdZHYY87dZJnN3Ml7U9uIlaBsPtDG7vwcwuEC+lO8ulJYMBlESFD6
	+tzRNwzWGuUCNgSdhmhTQIX7OSJR6hWO9+kkv+Mh8atE7ggxBJF+BDOzgmr8YWpZi79RsHY/5F2AC
	O2w0Bu9tBEU2C1F/J/vc+tnltaIR6EIb4FeEyOBp2vzfAoswMPdu1KLVEHhQ2zwo+UqNDcb4MHMA3
	SQNQuREhnHInZNzGU9k7s/u5NJQbVNpKxdWX2iT7U7j2xRbaeeSA2tONp+m4/PizsJBX8WoO/lVEd
	tcN44y2qAgGdQfObvy3g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWXr8-0000000A6JH-4ABn;
	Fri, 19 Dec 2025 10:37:07 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWXqy-0000000A638-0T5i
	for barebox@bombadil.infradead.org;
	Fri, 19 Dec 2025 10:36:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=6CvWf29SbumzmcWIhP7cWCzf4gcXq6kWfxj3uoCkKzQ=; b=GOQA5F+YAcbEZ77qxx6o7WHTaa
	a7bEdxB/sM2wJ2u5tkzZIHW1o8GksMXx322YdkV2NVfk3RT3y2dsX5CF51x7akef2Wlps4CaSavnY
	z6rZadsfGyXz4q2hf1KWvPCTmDqpT1nFrB6O4LwXycj0aIgaydRP/hQV7J2/CHD/c5tsFYjv7rTc0
	qefJxwcprXYUGfGqe+ojMs1J5TJt14Tf9ePw/0pjqu8uAl+Tso+yoEaM5EgwB+xsnzHXEdlOrSQK0
	Zl2wl6YlGUxMtruShXmi6y0PuNs1UAh2dYiG9qpo34MFBmHiBRpyZlWQcRwR+om8rB0K7YWXa7+6P
	b8FUSaVw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWWzP-0000000AbBv-440K
	for barebox@lists.infradead.org;
	Fri, 19 Dec 2025 09:41:40 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWXqr-0004dQ-EE; Fri, 19 Dec 2025 11:36:49 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWXqr-006RVB-0l;
	Fri, 19 Dec 2025 11:36:49 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWXVh-0000000320L-0cQF;
	Fri, 19 Dec 2025 11:14:57 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Fri, 19 Dec 2025 10:20:50 +0100
Message-ID: <20251219101453.2806980-15-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251219101453.2806980-1-a.fatoum@pengutronix.de>
References: <20251219101453.2806980-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251219_094136_121806_6DEA543E 
X-CRM114-Status: GOOD (  13.14  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2025.09.y 14/49] fs: nfs: drop PROG_NFS special casing
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Sascha Hauer <s.hauer@pengutronix.de>

For rpc_prog == PROG_NFS the nfs error is checked in rpc_check_reply()
and erroneous packets are discarded right away. This is unnecessary
since the nfs error is checked by the callers anyway. Drop the duplicate
error checking to simplify the code.

Link: https://lore.barebox.org/20251104-nfs-v1-1-3e69e5c82a41@pengutronix.de
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
(cherry picked from commit dbdfa94f2408631018a85a68e5956a254737afed)
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 fs/nfs.c | 26 +++-----------------------
 1 file changed, 3 insertions(+), 23 deletions(-)

diff --git a/fs/nfs.c b/fs/nfs.c
index 17e1e7cfa1f1..bac5cd5a183f 100644
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



