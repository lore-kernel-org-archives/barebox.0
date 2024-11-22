Delivery-date: Fri, 22 Nov 2024 17:23:52 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tEWRk-0054xE-1f
	for lore@lore.pengutronix.de;
	Fri, 22 Nov 2024 17:23:52 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tEWRj-0003P6-VY
	for lore@pengutronix.de; Fri, 22 Nov 2024 17:23:52 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=WlPk5tH4oIcbSgq+BCw4eIbDQQh/Eec02DcDx9naIn8=; b=wm3AorCvzgN8GzixR9JjItrf0l
	zDAQm6zCnUb33CDABgZiv3D20EjyXnOPOYQsK21qU4itbxfSltN1k4lawj+ctvd3HuCeM9ZzjpcNw
	mnTYmjOcdqv1v1leuOqHEyuxVoz1fgPw4ZQqSdXFnhuldXd3V1YE0IfDiDJFsoXjmPaMKrCx8YZhw
	MsYBYs9M45/65GWFlAlYJlTTt6eLK6/Bkd8qS/pba+hpWS5H8W7ZoIlp8uPxX1TG4cDwdbDBA8yiB
	W/Mim2WdqV2g3gj5BRXhZCBTlP7PZO0O1YBGnaK4pcW1aEFbnxWS9hFSDo9l77UiqUIdb6nCRgQ+h
	sfhzriHg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tEWRK-00000002q2w-1LYQ;
	Fri, 22 Nov 2024 16:23:26 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tEWRH-00000002q1k-3VOP
	for barebox@lists.infradead.org;
	Fri, 22 Nov 2024 16:23:24 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tEWRG-0003Dj-C1; Fri, 22 Nov 2024 17:23:22 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tEWRG-0026Fb-0c;
	Fri, 22 Nov 2024 17:23:22 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tEWRG-00GPX2-0I;
	Fri, 22 Nov 2024 17:23:22 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: bst@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 22 Nov 2024 17:23:20 +0100
Message-Id: <20241122162321.3909910-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241122_082323_871779_F74673BD 
X-CRM114-Status: GOOD (  10.13  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master v2 1/2] sandbox: noshell_defconfig: set CONFIG_CONSOLE_DISABLE_INPUT=y
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We are currently disabling CONFIG_DISABLE_INPUT, which is non-existent
option. It makes sense to _enable_ the option though after fixing the
typo, to get more coverage.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - no change
---
 common/boards/configs/noshell.config | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/common/boards/configs/noshell.config b/common/boards/configs/noshell.config
index 4696a1b3f971..3a91187f9188 100644
--- a/common/boards/configs/noshell.config
+++ b/common/boards/configs/noshell.config
@@ -1,2 +1,2 @@
 CONFIG_SHELL_NONE=y
-# CONFIG_DISABLE_INPUT is not set
+CONFIG_CONSOLE_DISABLE_INPUT=y
-- 
2.39.5



