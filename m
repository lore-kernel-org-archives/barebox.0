Delivery-date: Mon, 13 Dec 2021 22:11:14 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mwsbK-005g8U-RB
	for lore@lore.pengutronix.de; Mon, 13 Dec 2021 22:11:14 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mwsbI-0003Hy-2O
	for lore@pengutronix.de; Mon, 13 Dec 2021 22:11:14 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+AsSU0KEcxhOrMEa7PfkjNFGL2P5xsdjtTOJBesvojs=; b=0b2S7+mQHEmtz+
	Sqd2FGwZzoD4Q3YqH4kqB4gZdSh9M9EE5UIomjdfD3hi/4QUkGdktOCD2UBb+esNg7qXkDM20dtIK
	rEkd0KOn9n80fDP9aznuDnvdWBFMD4YSDO4c/xaVK54FRdiR+oq1w3n9Gg3QciXMcqzhM5mNxpfKY
	lTqkoxZmuwk9txCEZdEnvQ5bMjAGYKSF7FHxHnj1kiJYm8VansvPwZ5DUzUNB0ybL0cuqoLcIz6Zv
	00XfbhurcqBZY+Aaf/ilM5sTU9tpNB1ZiwY1e9e+KtYhGaD9DlY3uLZtnfIM81YDCKzNTmaAjMUp5
	eUu6D95U4vb+/VGWFwFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mwsZS-00BOtA-AG; Mon, 13 Dec 2021 21:09:18 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mwsZL-00BOoM-NC
 for barebox@lists.infradead.org; Mon, 13 Dec 2021 21:09:13 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mwsZK-0002Sp-5p; Mon, 13 Dec 2021 22:09:10 +0100
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <sha@pengutronix.de>)
 id 1mwsZJ-00EGoZ-3H; Mon, 13 Dec 2021 22:09:09 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon, 13 Dec 2021 22:08:41 +0100
Message-Id: <20211213210905.3399551-2-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211213210905.3399551-1-s.hauer@pengutronix.de>
References: <20211213210905.3399551-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211213_130911_775193_FA7DAB36 
X-CRM114-Status: GOOD (  11.49  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 01/25] efi-devicepath: Make efi_device_path argument const
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

unpack_device_path() must not modify the efi_device_path * argument, so
make that sure by making it const.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/efi-devicepath.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/common/efi-devicepath.c b/common/efi-devicepath.c
index f17b9294cc..92c3ac8cee 100644
--- a/common/efi-devicepath.c
+++ b/common/efi-devicepath.c
@@ -468,9 +468,10 @@ device_path_from_handle(efi_handle_t Handle)
 }
 
 static struct efi_device_path *
-unpack_device_path(struct efi_device_path *dev_path)
+unpack_device_path(const struct efi_device_path *dev_path)
 {
-	struct efi_device_path *Src, *Dest, *new_path;
+	const struct efi_device_path *Src;
+	struct efi_device_path *Dest, *new_path;
 	unsigned long Size;
 
 	/* Walk device path and round sizes to valid boundaries */
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

