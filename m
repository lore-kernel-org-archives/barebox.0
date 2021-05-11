Delivery-date: Tue, 11 May 2021 14:25:00 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lgRRc-0004z9-1m
	for lore@lore.pengutronix.de; Tue, 11 May 2021 14:25:00 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lgRRb-00039W-6K
	for lore@pengutronix.de; Tue, 11 May 2021 14:24:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=U0rWApnwGwM4HXRZ97AoXFvtcgmCiG60p8JXM9/GWzQ=; b=VLxld6/YfLpePz
	oMY0rWTiU9m5hJJBwQZi6bNw6ngzvn1cpevgVsU98haHVz8Pr3LJC2avCJy0eqQLV59EXLvzDa0WS
	Wjwt4Ahj5I+d8rq9wukcNpiBhQrw+AZcHEbuqx5kthqqrcq/sWVQFRjDDs123K6oim509sChNsoyK
	08+8DM1QRbKDw7vn5BhkD79lT/5qkycvFaqTNAvQPT/wkO6Fs+Jahdh3Lv4PgtF2ZU+jepIiK1rAB
	0XZ8AWDV+RyiEqFn65uwM0uy72/zryVKPIJ6/h2BfPhjY+wVvbol0mb/4ArSxeCuTTVJKj6QeThZL
	nT1vXgpBvWdE3XmyyPdg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lgRQm-00HMk5-II; Tue, 11 May 2021 12:24:09 +0000
Received: from [2607:7c80:54:e::133] (helo=bombadil.infradead.org)
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lgO8d-00GdYX-Hy
 for barebox@desiato.infradead.org; Tue, 11 May 2021 08:53:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=AUyYhm2iNxRsAjLVFNOMEGMKUkL7XTp4bNPoCVxZ9xA=; b=D9n4TSzgi1GM1ZxbAKJ2i1tS5/
 jXyqinofNhHSa1bZybwg6ha/FbP7QrCN9sG7HYrpj18vAK6AE0PP62WMdqRqQrlfhlSvV4npc0vfQ
 KqbUGYm3+WarxNd0PF3GTTab3hddaN58E4sv145Que1eL+w1dgsd/AtPy2RdChUzNAI84wpEliE5a
 qm6oM/TBIQSIWqU/JP11yGl87ZJl4uYUMrobEb2ZW4q7Okrk9MGw8q/rTN9DxZ3Ia5dEl8NNduKFd
 kfsnymg2THPLZ8dNmBE0jhvOsOZAL/dT3AvQ4jFpVDBrrevn4G860aPqQ1BQ2XjTVs+7VbR6V/uFe
 5ZWpf3ZA==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lgO8b-009PZ5-3p
 for barebox@lists.infradead.org; Tue, 11 May 2021 08:53:10 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lgO8Y-00079E-PT; Tue, 11 May 2021 10:53:06 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lgO8X-000051-9l; Tue, 11 May 2021 10:53:05 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 11 May 2021 10:53:04 +0200
Message-Id: <20210511085304.32725-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210511_015309_173068_C4BD84CA 
X-CRM114-Status: GOOD (  10.98  )
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210511_015309_173068_C4BD84CA 
X-CRM114-Status: UNSURE (   7.87  )
X-CRM114-Notice: Please train this message.
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] fs: nfs: Fix readlink max size check
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We must at maximum use all remaining bytes from the packet. This means
we have to set length to the *minimum* of the desired length and the
remaining bytes, not the *maximum*.
/me goes hiding somewhere...

Fixes: 574ce99401 ("fs: nfs: Fix possible buffer overflow")
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/nfs.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/fs/nfs.c b/fs/nfs.c
index c281a2ba75..1130632eb3 100644
--- a/fs/nfs.c
+++ b/fs/nfs.c
@@ -1125,7 +1125,7 @@ static int nfs_readlink_req(struct nfs_priv *npriv, struct nfs_fh *fh,
 
 	len = ntoh32(net_read_uint32(p)); /* new path length */
 
-	len = max_t(unsigned int, len,
+	len = min_t(unsigned int, len,
 		    nfs_packet->len - sizeof(struct rpc_reply) - sizeof(uint32_t));
 
 	p++;
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

