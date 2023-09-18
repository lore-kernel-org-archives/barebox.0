Delivery-date: Mon, 18 Sep 2023 18:21:50 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qiH0R-002FDd-Ay
	for lore@lore.pengutronix.de; Mon, 18 Sep 2023 18:21:50 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qiH0P-0000AZ-BX
	for lore@pengutronix.de; Mon, 18 Sep 2023 18:21:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Wa5Yc6NW4C6DI8p578FWOxHaFsimOncXprvNmYosA6A=; b=2db104njeIdRH5A45OCxZgD1WC
	53E8Vvv14JazGZrvfYhma2BwEFVeHKROKTrjqbgne1cst7hPVUWbS3XYF7/uXqyoN3ov/77jUTiQI
	70T9uoAYBowECObRtb5wnIpqWb7gnWfD9Mgz8dxKVahPqz4E6eOuEYMnYAi7+2sT2sgo6e3TQtyVc
	IjAVxJluQW9yMRH07EMmiOdV5SHXUAAWw4fsXiIGtOsPbzuX//Br5Z8179+C0hcSLRAJvFuw61Kc0
	Rki8e8Jt5SHBMIFQIpeLdlCgqTFLmL5XiZ2tfHk6pOMUxFuApiVedYk/cIfmaGkoE0H1p+WkTB1sD
	8rK1r3ag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qiGzH-00FrNg-3B;
	Mon, 18 Sep 2023 16:20:39 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qiGzE-00FrMd-21
	for barebox@lists.infradead.org;
	Mon, 18 Sep 2023 16:20:38 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qiGzD-00071g-Fe; Mon, 18 Sep 2023 18:20:35 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qiGzD-007GK1-3C; Mon, 18 Sep 2023 18:20:35 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qiGzD-000575-0A;
	Mon, 18 Sep 2023 18:20:35 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 18 Sep 2023 18:20:33 +0200
Message-Id: <20230918162033.19642-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230918_092036_667098_6252613C 
X-CRM114-Status: GOOD (  10.44  )
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
Subject: [PATCH] Documentation: user: introduction: suggest b4 shazam
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

b4 am requires manual application of the patch. b4 shazam -M fetches the
series into a branch (FETCH_HEAD) and has a useful heuristic for when
the base the patch applies on is unknown.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Documentation/user/introduction.rst | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/user/introduction.rst b/Documentation/user/introduction.rst
index e7388b8bc95e..25fed6c53c4d 100644
--- a/Documentation/user/introduction.rst
+++ b/Documentation/user/introduction.rst
@@ -29,11 +29,11 @@ http://lists.infradead.org/mailman/listinfo/barebox/
 Mails sent to the barebox mailing list are archived on
 `lore.barebox.org <https://lore.barebox.org/barebox/>`_.
 
-Patch series sent there can be fetched with `b4 <https://pypi.org/project/b4/>`_ ::
+Patch series sent there can be applied with `b4 <https://pypi.org/project/b4/>`_ ::
 
    git config b4.midmask https://lore.barebox.org/%s
    git config b4.linkmask https://lore.barebox.org/%s
-   b4 am https://lore.barebox.org/$messageid # replace with link
+   b4 shazam -M https://lore.barebox.org/$messageid # replace with link
 
 There's also an IRC channel, which is
 `bridged to Matrix  <https://app.element.io/#/room/#barebox:matrix.org>`_:
-- 
2.39.2



