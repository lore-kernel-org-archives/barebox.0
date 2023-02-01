Delivery-date: Wed, 01 Feb 2023 23:36:09 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pNLi5-00Adw1-6r
	for lore@lore.pengutronix.de; Wed, 01 Feb 2023 23:36:09 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pNLi2-00076W-C3
	for lore@pengutronix.de; Wed, 01 Feb 2023 23:36:06 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=vD3sZTHveWi+DlJc+aI46U33dcbMYAPjJdCUOqc9aJg=; b=QuWS3MP2KodPS+pRjnZXuKmgPZ
	j9p54kt3mccsO/EhGkcIx4K3hDAUxS5v+AXc9w7MwAujJxMBnpbedMgjRkTbyxDZwvasBFxRTC/+a
	+2rpIlqrgbWsUQHx/G94ioTbd7ipf8FoO62ZGg5Wr2o02myo+gX8QztNdUnVzZmk3+e/NPE+M2nEX
	9igYbn9FVudcehMKLHcJ/Nz0ei+Bw6cPaHhqj5TbieqLi2ZSgBUuaczX8j9nOc2iBKSLVqvKQ7R4g
	qmzNXvrX+hfFWfzunK7DKziyD7/0Mv2H3xmkf0OUv3SlF1tB9xaHtQu1OLxkSqIk8WlmE7KEba6fe
	8sjCbhHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNLgR-00DnCH-QX; Wed, 01 Feb 2023 22:34:27 +0000
Received: from out-41.mta1.migadu.com ([2001:41d0:203:375::29])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNLgM-00DnBl-09
	for barebox@lists.infradead.org; Wed, 01 Feb 2023 22:34:24 +0000
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jookia.org; s=key1;
	t=1675290855;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=vD3sZTHveWi+DlJc+aI46U33dcbMYAPjJdCUOqc9aJg=;
	b=T2Qr2cMLP+Woett5gKzo4ujCZF5jL+4geSyg544y+Mq3a05iRIffiXiFpIg/94NhsSe7VQ
	rUUou9VN2cPvT8CocuSWRSfCImuz2AQNTT25abwqDNBEuosU9fnjWuUjzoYbaqn5cOxKXW
	YorfHfPzTSQaa0Y7TfEnjarYIF679ZdzAZSlj+5bfIoeKcGgBIFA3cxnXh9PWyawIWnKWy
	57YLNVOldQSgzbS1r6b6DGlrD/Lv+iuG9G5XBiONyIDdzxg2eXrUnW/G2ZNV6H5zjnFFiq
	mwV+3gqypLRnrcxOZqwWCFrTr5zVLs6vPxpp5a+YCQkXhf7V5as0AlcS81Vhsw==
From: John Watts <contact@jookia.org>
To: barebox@lists.infradead.org
Cc: John Watts <contact@jookia.org>
Date: Thu,  2 Feb 2023 09:34:04 +1100
Message-Id: <20230201223404.1467998-1-contact@jookia.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230201_143423_149329_CBB40C4B 
X-CRM114-Status: UNSURE (   8.86  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] fs: nfs: Error if a port is unregistered
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

If a server doesn't provide a service the port lookup will return 0.
Check for this and return an appropriate error code.

This was tested by running NFS with UDP disabled, which seems to be
the default in Arch at least.

Signed-off-by: John Watts <contact@jookia.org>
---
 fs/nfs.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/fs/nfs.c b/fs/nfs.c
index 446d0f7946..696630684e 100644
--- a/fs/nfs.c
+++ b/fs/nfs.c
@@ -571,6 +571,9 @@ static int rpc_lookup_req(struct nfs_priv *npriv, uint32_t prog, uint32_t ver)
 
 	nfs_free_packet(nfs_packet);
 
+	if (port == 0)
+		return -ENOENT;
+
 	return port;
 }
 
-- 
2.39.1



