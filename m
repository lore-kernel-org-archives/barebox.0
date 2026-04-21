Delivery-date: Tue, 21 Apr 2026 10:46:42 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wF6kk-00EetE-2c
	for lore@lore.pengutronix.de;
	Tue, 21 Apr 2026 10:46:42 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wF6kk-000644-9B
	for lore@pengutronix.de; Tue, 21 Apr 2026 10:46:42 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=ls2VOB6g3eVwcV9XmMRXdv/9KPygPzrJPHFP7dapqkY=; b=Bb3dCcIJ2BHc7TCPNY53tCt8jj
	1oaIze1LGNfF6IpSV6pANjM3q/Q2licRF9LkpMNb2F/2W2BrIvLW0vKWg6a4fD0k7vIl9F++zcY/f
	1/1y9g/1M9lxQ/j2PavsXCzFvqapV3qoiDI3NXo21FNruAo8M/wAu0U9VtJ4yyLO7FttkoLaK9uZo
	5mCvIyR8PnRLISnYHrIDWcy9l7AMcfug86/YjzcdWQk/XJsgOEURCw5G4jv8MXjkJqG81kvNWQbCw
	OYt13mefyLzrsk0AYzg4OMxMNKGSCT6OyT4K7G7Q+wr68DsG+JDP+NSxlOAoaeb5FkRhXuKAotcFL
	t3RtvOvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wF6kE-00000008Gon-2SJ9;
	Tue, 21 Apr 2026 08:46:10 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wF6kC-00000008GoI-0WRm
	for barebox@lists.infradead.org;
	Tue, 21 Apr 2026 08:46:09 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wF6kA-0005yD-7X; Tue, 21 Apr 2026 10:46:06 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wF6k9-006TT9-34;
	Tue, 21 Apr 2026 10:46:05 +0200
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wF6k9-0000000950C-3ZSc;
	Tue, 21 Apr 2026 10:46:05 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>,
	Jonas Rebmann <jre@pengutronix.de>
Date: Tue, 21 Apr 2026 10:46:02 +0200
Message-ID: <20260421084603.2161981-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260421_014608_159565_583E7E7D 
X-CRM114-Status: GOOD (  10.07  )
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
Subject: [PATCH] Documentation: user: use matrix.to instead of element.io link
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Element is a client for the Matrix protocol and users may want to use a
different client.

Use the generic matrix.to link instead to point at our channel.

Suggested-by: Jonas Rebmann <jre@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Documentation/user/introduction.rst | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/user/introduction.rst b/Documentation/user/introduction.rst
index 378cca45a0f9..e62d8787f776 100644
--- a/Documentation/user/introduction.rst
+++ b/Documentation/user/introduction.rst
@@ -32,7 +32,7 @@ Mails sent to the barebox mailing list are archived on
 `lore.kernel.org <https://lore.kernel.org/barebox/>`_.
 
 There's also an IRC channel, which is
-`bridged to Matrix  <https://app.element.io/#/room/#barebox:matrix.org>`_:
+`bridged to Matrix  <https://matrix.to/#/#barebox:matrix.org>`_:
 #barebox on Libera Chat.
 
 .. _feedback:
-- 
2.47.3



