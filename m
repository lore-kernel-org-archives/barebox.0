Delivery-date: Mon, 22 May 2023 15:43:42 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q15p9-009hUh-9w
	for lore@lore.pengutronix.de; Mon, 22 May 2023 15:43:41 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q15p6-000752-Qj
	for lore@pengutronix.de; Mon, 22 May 2023 15:43:41 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=QbV4SN+PU1Cevt0VIczBXJQ1fnzUgaVjIVvva7du1j0=; b=D41cmGmfnaw4e9yZl9j0YDyt/S
	IoglIXDvRpK2E/MeK+CskiD49lcbb0bysqi21/v2xf0nMOTBXuLxC/2o/UeKIBiUqxzOUw94K1UM5
	HwCa536q+15GghCiZjvMD3ebynsXd6yjCQPnQ8XpqLOShKH+jKfs1DuQ3MAqn49z0lZLhnfk6vU+f
	1M2zSTA+olBLmMBfVxdD6obMihFrBv/B+UFI7egAh6ogmG/n/1CU7yH4qCJXBZXUbrXQOjHGbVKB3
	UvEqx0AiEbFLSE8I+GefCFQwN7l72PT9KAmnYKDuF+pT1FIxSIAwvgBucpeqORc0Yh0JOD2G10CYk
	VQkh78QQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q15np-006hUO-3C;
	Mon, 22 May 2023 13:42:21 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q15nm-006hSh-1P
	for barebox@lists.infradead.org;
	Mon, 22 May 2023 13:42:19 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1q15ni-0006tQ-IF; Mon, 22 May 2023 15:42:14 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q15nh-0021LK-Ul; Mon, 22 May 2023 15:42:13 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q15ng-00AkOp-U4; Mon, 22 May 2023 15:42:12 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 22 May 2023 15:42:09 +0200
Message-Id: <20230522134210.2561620-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230522134210.2561620-1-a.fatoum@pengutronix.de>
References: <20230522134210.2561620-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230522_064218_470977_B2619EFD 
X-CRM114-Status: UNSURE (   8.22  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH master 2/3] .gitattributes: import diff directives from Linux v6.3
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We have some *.dtso files via upstream device tree repository sync and
we have recently gained Kbuild support to compile them. Have git display
them properly and while at, import the rest of what's in the Linux
top-level .gitattributes file.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 .gitattributes | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/.gitattributes b/.gitattributes
index c24dffe1b2cc..2e0d56fd8daf 100644
--- a/.gitattributes
+++ b/.gitattributes
@@ -1 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
 *.bin -crlf -diff -merge
+*.[ch] diff=cpp
+*.dts diff=dts
+*.dts[io] diff=dts
-- 
2.39.2



