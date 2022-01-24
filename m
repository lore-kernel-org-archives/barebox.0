Delivery-date: Mon, 24 Jan 2022 16:20:11 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nC18d-00C18r-Lg
	for lore@lore.pengutronix.de; Mon, 24 Jan 2022 16:20:11 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nC18b-0000tl-EJ
	for lore@pengutronix.de; Mon, 24 Jan 2022 16:20:11 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Cito7eikkWkMAq/cIfq1b6fxWRZVG0W8tmnTLX0z+JU=; b=brdTOmz3Wf/yHE
	+KzxlYoq0Iye3Yi9mR70ZEkBbGOTaPOhhm2hS840+dT21QmyAJ+UagJJ0CSmJW3TuWSAdeQZSMQ63
	BdRV4LSS8NdQMY7yc2HbC89v2nu0i0jNZm5nJfUcL1fe1tKkIAKSaQ3/6gI/4/SQBLkiEmbAvy86X
	Dle+9f+8Zu9iJoGyHnUkZtczWIwJqf5UXZx2Xgz/BhikJVoadm1HS0toTwhTXJ1vW99nuAUZzdRjG
	8GBXdAnQ0YAQrOIhuwajya0kaNbJq3DOAHr4dEZckO5qOakDGk0ukQgDxI7NhAUHeWAKLeRft0rZe
	Upzrp3AKDMBRU5sVgCug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nC17E-003o70-Rh; Mon, 24 Jan 2022 15:18:44 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nC172-003o3X-DO
 for barebox@lists.infradead.org; Mon, 24 Jan 2022 15:18:35 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1nC16y-0000Zh-N2; Mon, 24 Jan 2022 16:18:28 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1nC16y-00Du71-82; Mon, 24 Jan 2022 16:18:28 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 24 Jan 2022 16:18:22 +0100
Message-Id: <20220124151827.3313412-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220124_071832_525784_F049480A 
X-CRM114-Status: UNSURE (   9.72  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/6] Documentation: user: introduction: update with
 lore/matrix/libera info
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The Website already points at Libera instead of Freenode. Update the
intro section, so the docs are correct as well.

While at it, mention lore and matrix.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Documentation/user/introduction.rst | 13 +++++++++++--
 1 file changed, 11 insertions(+), 2 deletions(-)

diff --git a/Documentation/user/introduction.rst b/Documentation/user/introduction.rst
index 8a980a70abc7..523fe288f9fe 100644
--- a/Documentation/user/introduction.rst
+++ b/Documentation/user/introduction.rst
@@ -24,6 +24,15 @@ discussion of barebox takes place here:
 
 http://lists.infradead.org/mailman/listinfo/barebox/
 
-There's also an IRC channel:
+Mails sent to the barebox mailing list are archived on
+`lore.barebox.org <https://lore.barebox.org/barebox/>`_.
 
-IRC: #barebox (Freenode)
+Patch series sent there can be fetched with `b4 <https://pypi.org/project/b4/>`_ ::
+
+   git config b4.midmask https://lore.barebox.org/%s
+   git config b4.linkmask https://lore.barebox.org/%s
+   b4 am https://lore.barebox.org/$messageid # replace with link
+
+There's also an IRC channel, which is
+`bridged to Matrix  <https://app.element.io/#/room/#barebox:matrix.org>`_:
+#barebox on Libera Chat
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

