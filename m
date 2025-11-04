Delivery-date: Tue, 04 Nov 2025 09:08:51 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vGC5z-00F9Fz-1u
	for lore@lore.pengutronix.de;
	Tue, 04 Nov 2025 09:08:51 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vGC5z-00034N-1e
	for lore@pengutronix.de; Tue, 04 Nov 2025 09:08:51 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7QpEo4PjOcCV6DQHxSLGS1ibjehv8FN5fHTrWGRuQ1s=; b=LJZOcAlcPmKkzAz+CWnXu4vdMx
	dCxwimX+LU2wuCgAenzzTM/Dd4bQ8Qs95sPYfpdg9ytqmHtHLuWODgsTfXksz0XIMRL/t+Rmq7dQM
	D/CGdb9c3wD2ebDxlWFyIveh7Y4Ru1QKglLIWbzP4mGv25j8ug20QhGoI2DkNAASfAacR5GEdP1PN
	iMSS83H1yxI2YkiX9t7xD90B2LaqY5QZBbK7I5l7HGFqAOQxOXvZFlqwyl8VviqT80rHWQt6KaCM9
	lJ3QIokwKcEqOa8mJk5JecbGtnM5Zq8LQ4fatS5/OsBtXrhV/4iX/gZbkzXV5b1o894GgY6f0aYEK
	eltXh0cw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vGC5T-0000000BNuJ-1SeE;
	Tue, 04 Nov 2025 08:08:19 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vGC5P-0000000BNs4-33Md
	for barebox@lists.infradead.org;
	Tue, 04 Nov 2025 08:08:18 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vGC5N-0002ng-7s; Tue, 04 Nov 2025 09:08:13 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vGC5M-006zpR-37;
	Tue, 04 Nov 2025 09:08:12 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vGC5N-00000009AfK-1OjB;
	Tue, 04 Nov 2025 09:08:12 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 04 Nov 2025 09:08:08 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251104-nfs-v1-4-3e69e5c82a41@pengutronix.de>
References: <20251104-nfs-v1-0-3e69e5c82a41@pengutronix.de>
In-Reply-To: <20251104-nfs-v1-0-3e69e5c82a41@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1762243692; l=796;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=oQYwGMlHbqTkXxiiB8GN/avgXyw6bINtJGknlHBmSs4=;
 b=+644LoDPP4gNNt7feY8Ra4pDO74ecLRtvNguy2qNwUAYjNE6Il7acT2GC9CEyV2Q5c0NgXI7p
 7OfqHPZR00dAAeHgNMPZyVBw+ONvbrtSvAhbB9lVYLT5tK/jBRRkb5T
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251104_000815_812546_246BE027 
X-CRM114-Status: GOOD (  12.38  )
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
Subject: [PATCH 4/4] fs: nfs: reduce unwanted message to debug level
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Looking up a nonexistent file in NFS is a normal usecase and the caller
should handle it appropriately. Do not print a message from the NFS core
in this case.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/nfs.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/fs/nfs.c b/fs/nfs.c
index c9dc5d14ccec67e252750ce2bed076cf0b63cbd8..5c2476cd88634c37cf2cc9358c0482c03d180daa 100644
--- a/fs/nfs.c
+++ b/fs/nfs.c
@@ -938,7 +938,7 @@ static int nfs_lookup_req(struct nfs_priv *npriv, struct nfs_fh *fh,
 
 	status = ntoh32(net_read_uint32(p));
 	if (status != NFS3_OK) {
-		dev_err(dev, "Lookup failed: %s\n", nfserrstr(status, &ret));
+		dev_dbg(dev, "Lookup failed: %s\n", nfserrstr(status, &ret));
 		goto err_free_packet;
 	}
 

-- 
2.47.3



