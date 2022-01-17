Delivery-date: Mon, 17 Jan 2022 23:21:48 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n9aNo-004zGV-4P
	for lore@lore.pengutronix.de; Mon, 17 Jan 2022 23:21:48 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n9aNm-0005Pf-90
	for lore@pengutronix.de; Mon, 17 Jan 2022 23:21:47 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aDqxquVFlF36OgCPEWQBNohHGjONsw9Z77aQT+aCj/4=; b=wHRjnNE0Gl6gla
	J/mNH1Gy7uf9NQm/TJjh4oEx0Da1AtMy9BWppbXlJ0tsA6VIea2NX2spOjFA8Ok748/+wTTSs30a8
	eOe4zy+uhYAvZwxma/j8QLl9cj1K+9uK1fLIk2a7sTLs8dAT39btGWlil7P3KbtdQrs7gAiFnh9Om
	cU0/zMMZkFOT7PI5G6TDI89b+jwBbubUnNtKg33f0RVjcTWT4cW2zNEFM94Tl5kNWlOyq6HlBKmZY
	6rdA90WYns3HwLbD7oyIsZQlcu/PEU8iMj2U/fQ1YlJKQ6reYDz/H2pPSCl8Y+VWySoefbYhcQxY7
	NX92rd09pZzVgkl4KQWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n9aM8-00GT9l-IU; Mon, 17 Jan 2022 22:20:04 +0000
Received: from smtpout30.security-mail.net ([85.31.212.36]
 helo=fx301.security-mail.net)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n9aM2-00GT6e-RU
 for barebox@lists.infradead.org; Mon, 17 Jan 2022 22:20:00 +0000
Received: from localhost (localhost [127.0.0.1])
 by fx301.security-mail.net (Postfix) with ESMTP id E542024BD00D
 for <barebox@lists.infradead.org>; Mon, 17 Jan 2022 23:19:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kalray.eu;
 s=sec-sig-email; t=1642457997;
 bh=nFSdfzK5Zx11UBQ0oDkAgC5K2bOAWPnavtGMDX53TCo=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=ke2B0dJaINhIIcnLfu9cpfOIOsIgw+qxJBSKM1+G/9ci+y5LdKYAC57uU5lHq+UDZ
 XcRWsJYbS1+uYk506Y8aVItsXa9C+P2KvSerBY0ESBOtv6JN+m+zBGhfdgEeJJ1GHH
 me6Tu9v6uVBr/auCiE3nDL2hKsI8G87lLuIIDYeY=
Received: from fx301 (localhost [127.0.0.1])
 by fx301.security-mail.net (Postfix) with ESMTP id 9B6CA24BD05D;
 Mon, 17 Jan 2022 23:19:56 +0100 (CET)
X-Virus-Scanned: E-securemail
Secumail-id: <10945.61e5eb8c.17bad.0>
Received: from zimbra2.kalray.eu (unknown [217.181.231.53])
 by fx301.security-mail.net (Postfix) with ESMTPS id 48AAE24BD03D;
 Mon, 17 Jan 2022 23:19:56 +0100 (CET)
Received: from zimbra2.kalray.eu (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTPS id EEF9527E03E1;
 Mon, 17 Jan 2022 23:19:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id D71BB27E0402;
 Mon, 17 Jan 2022 23:19:55 +0100 (CET)
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbra2.kalray.eu D71BB27E0402
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=32AE1B44-9502-11E5-BA35-3734643DEF29; t=1642457995;
 bh=ty/B/TL3HopKOziOvO+Dit6CjzNLGUc38eQpdOZQrtU=;
 h=From:To:Date:Message-Id;
 b=h/lztIWSIviMg8eQDJYcqjmfYm5dJs0ArMFrBJwdJ3StyfKq6D8SzNRRCizJLCbC/
 4aIb/j+5KVDR65LdwSVxGX9AwfDssGcxu63mATvBs9mIeCCNJR7Zfl/VIKm8L1+3tT
 peh7/xk99yCapqls2N560UuCMS//Y6tHchEDyoAA=
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id 1GJLvijtvB_8; Mon, 17 Jan 2022 23:19:55 +0100 (CET)
Received: from tellis.lin.mbt.kalray.eu (unknown [192.168.36.206])
 by zimbra2.kalray.eu (Postfix) with ESMTPSA id BC0FE27E03E1;
 Mon, 17 Jan 2022 23:19:55 +0100 (CET)
From: Jules Maselbas <jmaselbas@kalray.eu>
To: barebox@lists.infradead.org
Cc: Clement Leger <clement.leger@bootlin.com>,
 Louis Morhet <lmorhet@kalray.eu>, Luc Michel <lmichel@kalray.eu>,
 Yann Sionneau <ysionneau@kalray.eu>, Jules Maselbas <jmaselbas@kalray.eu>
Date: Mon, 17 Jan 2022 23:19:12 +0100
Message-Id: <20220117221917.26970-7-jmaselbas@kalray.eu>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20220117221917.26970-1-jmaselbas@kalray.eu>
References: <20220117221917.26970-1-jmaselbas@kalray.eu>
X-Virus-Scanned: by Secumail
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220117_141959_070395_958BC966 
X-CRM114-Status: UNSURE (   9.28  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 06/11] clocksource: kvx: Register as
 postcore_platform_driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Register the kvx clocksource driver sooner, before probing other device
drivers by using the postcore_platform_driver macro. That way the other
drivers will have a correct timestamp when printing messages.

Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
---
 drivers/clocksource/kvx_timer.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/clocksource/kvx_timer.c b/drivers/clocksource/kvx_timer.c
index 4125ddbee0..2a05d8deed 100644
--- a/drivers/clocksource/kvx_timer.c
+++ b/drivers/clocksource/kvx_timer.c
@@ -55,4 +55,4 @@ static struct driver_d kvx_timer_driver = {
 	.of_compatible = DRV_OF_COMPAT(kvx_timer_dt_ids),
 };
 
-device_platform_driver(kvx_timer_driver);
+postcore_platform_driver(kvx_timer_driver);
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

