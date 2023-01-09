Delivery-date: Mon, 09 Jan 2023 19:01:02 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pEwSF-006uPO-1X
	for lore@lore.pengutronix.de; Mon, 09 Jan 2023 19:01:02 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pEwSC-0003RR-9m
	for lore@pengutronix.de; Mon, 09 Jan 2023 19:01:01 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=BBOw/meMB7h6aFHa2bN9LywOSE3pTNkcg0OUJ9009u4=; b=RaEIKXdwMeljHPhppkhGnGyXD7
	iA5yg93jXZ1XlCPn5kCkK3uSKOzOvuVzQjONzGKdnwPQ2F/sW+OFK2mFrNLb5UNAr7nIBrNNR2mj3
	dzL6U4ElbgsBqt/M9eA15UwLoqlWK0kF4W0KZz1JfnsV25k4AeqJuzYd9whZPbTZlo8RoXxqYwmOh
	CQdmH/0/9fheR8a17nD5atYXMZcW1v3tknudQG967FtKQutODlHMHOu1dxWAAlrYIVFKuD2i3fX7P
	v+auPO6ho/KCYG4A70TMQn8TSUMO55t2dwds+fYBwUv0A+vnnCdCpi0y938jNE8e0ccrK/bmGgrSu
	XrzVeZOg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pEwQO-00352g-4m; Mon, 09 Jan 2023 17:59:08 +0000
Received: from relay2-d.mail.gandi.net ([2001:4b98:dc4:8::222])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pEwPv-0034wh-So
	for barebox@lists.infradead.org; Mon, 09 Jan 2023 17:58:42 +0000
Received: (Authenticated sender: ahmad@a3f.at)
	by mail.gandi.net (Postfix) with ESMTPSA id 9FEC54000A;
	Mon,  9 Jan 2023 17:58:33 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <ahmad@a3f.at>
Date: Mon,  9 Jan 2023 18:58:28 +0100
Message-Id: <20230109175828.2017699-1-ahmad@a3f.at>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230109_095840_142546_8665816E 
X-CRM114-Status: UNSURE (   6.62  )
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
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] asm-generic: define IOMEM for assembly as well
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

In interest of type safety, we should start using IOMEM() for register
MMIO base addresses that we keep in headers for PBL. Some of these
addresses are used from assembly code as well, so define IOMEM() for
that case.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 include/asm-generic/io.h | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/include/asm-generic/io.h b/include/asm-generic/io.h
index e41b4df40366..51f65ceb0a2e 100644
--- a/include/asm-generic/io.h
+++ b/include/asm-generic/io.h
@@ -442,7 +442,11 @@ static inline void *phys_to_virt(unsigned long phys)
 #endif
 
 #ifndef IOMEM
+#ifndef __ASSEMBLY__
 #define IOMEM(addr)	((void __force __iomem *)(addr))
+#else
+#define IOMEM(addr)	addr
+#endif
 #endif
 
 #define __io_virt(x) ((void __force *)(x))
-- 
2.38.1



