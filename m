Delivery-date: Tue, 26 Apr 2022 08:48:30 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1njEzv-00FbNg-Jy
	for lore@lore.pengutronix.de; Tue, 26 Apr 2022 08:48:30 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1njEzt-0007W9-7H
	for lore@pengutronix.de; Tue, 26 Apr 2022 08:48:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qNtvhHbTLeThr8Rf2c3ZZC5GU6q20xg+OgPQJZgrLYM=; b=fAJ010/Mq+Lq4j
	3SedLculcbZiY/UmzltY4Lpk9Ac/D+4hkqDh8lzQ0pbzKvJihWyKykp2rwoiwddC3EVjpvCgnRVMv
	ZpNjjWrnYwK89sBgyjVybKSmYQkjoP699YNCRqv8KI1k3KBYMbSZcJPpf+/C8gXTEqKUUWQ+C9gdw
	PrD85SnBfTle51yJUZCcR0BZ5NOC+8fFRRVNP+6naAwIINVOCbJLGrdawJwxwqG+j92q/9Sb8G2Ej
	u/lMp/9f7vki9HT7IdszKz+MXYxqasgx3tIuNZi4ZKwiEQz7wIyQbzhROq68wm6+Kibsr13Cnrowm
	6mZMCv/upCOAvcXTnE6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1njEyg-00CoBM-Lv; Tue, 26 Apr 2022 06:47:14 +0000
Received: from relay12.mail.gandi.net ([2001:4b98:dc4:8::232])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1njEyZ-00Co8Z-Gs
 for barebox@lists.infradead.org; Tue, 26 Apr 2022 06:47:09 +0000
Received: (Authenticated sender: ahmad@a3f.at)
 by mail.gandi.net (Postfix) with ESMTPSA id ECFF3200007;
 Tue, 26 Apr 2022 06:47:02 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <ahmad@a3f.at>
Date: Tue, 26 Apr 2022 08:46:58 +0200
Message-Id: <20220426064658.423912-1-ahmad@a3f.at>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220425_234707_742030_A27E56E0 
X-CRM114-Status: UNSURE (   7.32  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] Documentation: remote-control: be explicit about python2
 requirement
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This should help users a bit when using the tool.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 Documentation/user/remote-control.rst | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/user/remote-control.rst b/Documentation/user/remote-control.rst
index c8b7442f175a..43f1fb3118ea 100644
--- a/Documentation/user/remote-control.rst
+++ b/Documentation/user/remote-control.rst
@@ -54,7 +54,7 @@ account via:
 
 .. code-block:: sh
 
-  pip install --user crcmod enum enum34
+  python2 -m pip install --user crcmod enum enum34
 
 configuring bbremote
 ^^^^^^^^^^^^^^^^^^^^
-- 
2.34.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

