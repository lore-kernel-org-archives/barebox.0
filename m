Delivery-date: Mon, 18 Sep 2023 18:19:36 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qiGyH-002F29-Uq
	for lore@lore.pengutronix.de; Mon, 18 Sep 2023 18:19:36 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qiGyE-0005ew-PV
	for lore@pengutronix.de; Mon, 18 Sep 2023 18:19:36 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=mo5UyMXeJ5OS0+hKrf3n/0MMPBHeGtjeFtfCF0tU9ro=; b=HkjELNBfIsqltvH7hrfrt3IIOh
	8wuz7xZj9sbu48VJWrv+MgULLiX039r+IZ2V4ZIy95iSrf1Qq4Hi0orR+kddw0YQMWn3cBdA1frH/
	KFtcrdxD4jq3U6SanDHMRDh9adpjlUYKQ7UvoV6SyzZuUtsyfUCJa9G0/25QMKlMw+NopY+l9SgC2
	gipasHbpPbNpUjDlaFr47RpeZSFusI43BrG4bPoraAoJCKy+V+GmmaccYUs+eUJ0o3w/maxhpffaW
	h7b13yHgPI2hyqGK5XzYishgyfcUthPuFKgQVOkr8MdVa4ssYKPXsbpu/fAIxV6XFlxMTDR9D6VqV
	YgYVSyEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qiGwh-00FqiP-0Y;
	Mon, 18 Sep 2023 16:17:59 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qiGwc-00Fqfq-3D
	for barebox@lists.infradead.org;
	Mon, 18 Sep 2023 16:17:57 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qiGwY-0003F0-KJ; Mon, 18 Sep 2023 18:17:50 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qiGwY-007GJm-7q; Mon, 18 Sep 2023 18:17:50 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qiGwY-0004jL-0Z;
	Mon, 18 Sep 2023 18:17:50 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 18 Sep 2023 18:17:49 +0200
Message-Id: <20230918161749.18170-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230918_091755_049014_2421A898 
X-CRM114-Status: UNSURE (   8.12  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master] Documentation: remove info about bridging to matrix
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The matrix bridge has been temporarily suspended last month and is not
back up again. Remove reference it in the documentation to avoid
confusion until it's back up.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Documentation/user/introduction.rst | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/Documentation/user/introduction.rst b/Documentation/user/introduction.rst
index e7388b8bc95e..ceafcbb6d7ec 100644
--- a/Documentation/user/introduction.rst
+++ b/Documentation/user/introduction.rst
@@ -35,6 +35,4 @@ Patch series sent there can be fetched with `b4 <https://pypi.org/project/b4/>`_
    git config b4.linkmask https://lore.barebox.org/%s
    b4 am https://lore.barebox.org/$messageid # replace with link
 
-There's also an IRC channel, which is
-`bridged to Matrix  <https://app.element.io/#/room/#barebox:matrix.org>`_:
-#barebox on Libera Chat
+There's also an IRC channel: #barebox on Libera Chat
-- 
2.39.2



