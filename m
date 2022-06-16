Delivery-date: Thu, 16 Jun 2022 15:12:41 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o1pIe-003ueJ-6n
	for lore@lore.pengutronix.de; Thu, 16 Jun 2022 15:12:41 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o1pIe-0001Wd-0y
	for lore@pengutronix.de; Thu, 16 Jun 2022 15:12:40 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GXzBLWT91sGZS3gyLzKPE9ngGOaff1HB1cyU5mh7HmQ=; b=UrzlgfYRlGeWwx
	FtHP9g9Mk5eJaEC6NckVBDIWiEq9ZmgBEEiPOUF+juUMPCkZfzVfd9gSU/Jctev15PPxM6VwvyCdt
	qjj0x/hOJyYr2Lfxp9qCqJruIFuGBlrBjFqw27Cfd28zkR1XoCMko32E8R3QXPzz5QXx5wd9OrjPt
	5SzIrzWpbgdPYV0U2L9coWk34YQJqqbu/YNHy4/uaKTdtwTVZ5DQY6PsUdn7HN9wuph52wB4pI+0+
	pwE8R+h1gqqWw+oKHJeCip+VuT/5iyUMTFhaCUIKyhY5pc5t74QiRUQnATP5ZfE33oZ73XjUtzYuL
	U/jh8EWnymg/g3qYHkxA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1pHK-002Oto-G5; Thu, 16 Jun 2022 13:11:18 +0000
Received: from smtp16.bhosted.nl ([2a02:9e0:8000::27])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1pHD-002OqA-8y
	for barebox@lists.infradead.org; Thu, 16 Jun 2022 13:11:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=protonic.nl; s=202111;
	h=content-transfer-encoding:mime-version:references:in-reply-to:message-id:date:
	 subject:cc:to:from:from;
	bh=GXzBLWT91sGZS3gyLzKPE9ngGOaff1HB1cyU5mh7HmQ=;
	b=Ug1QAob+e6BCScEk4VMqRrM2L3kYvClk96SIOpdiKW/IaBTQuFvPW30OhtFPE0gg+nijBf3grPH/s
	 /Ej2zQoUD44DmtjA9iON/WBfk6A6y/oY8yQgqEqnChyoagPBmT7S+lrwioxOdNSjHYKvkdAq6XVR5A
	 A1t2Ck7o5uwq2jb9PSYA4oRahQDCWw9ZxHs1+Zw+PyMBojT+P2zSwjnBMaEslQNmj3fpyQGvoFZXg3
	 59A2Hb8rXXCLl8AZAaoj4y1wDPBta6tPLAvKhlDWoNeWA6Qm01k9eMixXIdR/QgABLaL8F5rhnLL9g
	 AAdkzJ7/CWM9ghiJyjJhOfPn/1LhxSg==
X-MSG-ID: c99832fe-ed75-11ec-9051-0050569d2c73
From: Robin van der Gracht <robin@protonic.nl>
To: barebox@lists.infradead.org
Date: Thu, 16 Jun 2022 15:11:07 +0200
Message-Id: <20220616131114.214628-3-robin@protonic.nl>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220616131114.214628-1-robin@protonic.nl>
References: <20220616131114.214628-1-robin@protonic.nl>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220616_061111_541218_ECB74F75 
X-CRM114-Status: UNSURE (   9.82  )
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
Cc: Oleksij Rempel <o.rempel@pengutronix.de>, Robin van der Gracht <robin@protonic.nl>, david@protonic.nl
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 2/9] ARM: boards: protonic-imx6: Update comment to match a recent code update
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Fixes: 1e817b64bc45968320597344e6b05463edd9c5e5

Signed-off-by: Robin van der Gracht <robin@protonic.nl>
---
 arch/arm/boards/protonic-imx6/board.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boards/protonic-imx6/board.c b/arch/arm/boards/protonic-imx6/board.c
index 8f8a0c745e..3116f3ac42 100644
--- a/arch/arm/boards/protonic-imx6/board.c
+++ b/arch/arm/boards/protonic-imx6/board.c
@@ -392,7 +392,7 @@ static int prt_imx6_env_init(struct prt_imx6_priv *priv)
 		else
 			priv->usb_delay = 1;
 
-		/* the usb_delay value is used for poller_call_async() */
+		/* the usb_delay value is used for wq_queue_delayed_work() */
 		delay = basprintf("%d", priv->usb_delay);
 		ret = setenv("global.autoboot_timeout", delay);
 		if (ret)
-- 
2.34.1



