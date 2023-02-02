Delivery-date: Thu, 02 Feb 2023 12:22:05 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pNXfJ-00BJMX-CF
	for lore@lore.pengutronix.de; Thu, 02 Feb 2023 12:22:05 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pNXfG-0001cM-U2
	for lore@pengutronix.de; Thu, 02 Feb 2023 12:22:03 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=WKQa8Avoz3EstqYSbVG+8wtfdAdx+Ho4yboa8PwsNho=; b=mbRkFCJe9ECGcTyIo/fymk8v1l
	p9Z9Yfjn2hJHGM8iPddJmPC216aaqLcKXvWvV+mBNOgMpwqpgvME1acZ9cKOGZAAOjao9cvq6k3NR
	gZSew4Lwf/22h0CZKijPwrmnfoDzGdWiY9pWpc22dWfUzt/DE+T9pZZMOs3oPQQH3PaxKmAMg8Hz6
	KS9vGW9pH2aotpJKKjwti72lJVP3OqICp9xjf0y3iN1KET3agqJCQx7uQeJkHclicX/X3RInIDYwG
	w+2zcH77mbD0c1Tu3VrlRMH22/fRE466x9vCBP72Po6chmoiJHiaBy8g2aMZF5bufzZOQ0g7QIfaq
	GMvgxqqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNXdx-00FahK-Ni; Thu, 02 Feb 2023 11:20:41 +0000
Received: from out-212.mta1.migadu.com ([95.215.58.212])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNXds-00Fafi-CE
	for barebox@lists.infradead.org; Thu, 02 Feb 2023 11:20:38 +0000
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jookia.org; s=key1;
	t=1675336832;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=WKQa8Avoz3EstqYSbVG+8wtfdAdx+Ho4yboa8PwsNho=;
	b=CUytD3HS7/qt/S6o/zeGQRxIfYVRx/paMe9vah158QDpdANa+UEk8s3Z/evecPzFF0gqAb
	P5hmJ2oROSz2eg19jE1YLvTdDrJG0uWJBKhiYBcJWjZiAS4WIOG/zoVz0qqzV7TsJEd62s
	2l2GoX/KT16bZ91UFW+cZcsZbTWfq4qB+0SI7xs4UdIRwxDyazp2h0KxERkbklfKRfwfUT
	BqxoOqN00vhmPcxuWCunNiBAQotPK/dSYaPRu0g4/7wQyyjyugzkuAyIC9wYQTMHwkcx4O
	AXx5R2HAvfxrzrugTJtcMj8jAJZ1GbP5KfjhKlbnXt46Froz1oAk+qOpWl7bjg==
From: John Watts <contact@jookia.org>
To: barebox@lists.infradead.org
Cc: John Watts <contact@jookia.org>
Date: Thu,  2 Feb 2023 22:20:24 +1100
Message-Id: <20230202112024.2458085-1-contact@jookia.org>
In-Reply-To: <20230201223404.1467998-1-contact@jookia.org>
References: <20230201223404.1467998-1-contact@jookia.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230202_032037_160427_4ABB5EDF 
X-CRM114-Status: UNSURE (   8.76  )
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2] fs: nfs: Error if a port is unregistered
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

If a server doesn't provide a service the port lookup will return 0.

Check for this, return an appropriate error code and give a hint as to
why this might be happening.

This was tested by running NFS with UDP disabled, which seems to be
the default in Arch at least.

Signed-off-by: John Watts <contact@jookia.org>
---
Changes v1 -> v2:
- Added error message
---
 fs/nfs.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/fs/nfs.c b/fs/nfs.c
index 446d0f7946..1a0b28442d 100644
--- a/fs/nfs.c
+++ b/fs/nfs.c
@@ -571,6 +571,12 @@ static int rpc_lookup_req(struct nfs_priv *npriv, uint32_t prog, uint32_t ver)
 
 	nfs_free_packet(nfs_packet);
 
+	if (port == 0) {
+		pr_warn("No UDP port for RPC program %i! "
+		        "Is your NFS server TCP only?\n", prog);
+		return -ENOENT;
+	}
+
 	return port;
 }
 
-- 
2.39.1



