Delivery-date: Fri, 14 Jan 2022 17:54:23 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n8PqJ-002DHG-6o
	for lore@lore.pengutronix.de; Fri, 14 Jan 2022 17:54:23 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n8PqH-0004Qq-L9
	for lore@pengutronix.de; Fri, 14 Jan 2022 17:54:22 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gojAvSjod7DUnScel5rjksFYbvAxot1f7MQeh2nPV7w=; b=zJgOeM7B28OjOc
	7Mie0Rp0NJw4pe6luYHaKLgWVroQiA/vX7HTugh+F2zaDhjFaLih1+gEn4oIJtTBEW35cVQXgLJT8
	8iWiOv/DeHcGIMGUulBnEqHBEf7449XTJRCLO+6NH/8p70TIDOEkzSuB461ssafVn5wRvpWjQ8Sq5
	lla4PgpHJ/3zepR6BSLV5iCdi5IWsvbAsy+CGhkkGeRfwiRCvxnmEx2+T7MsrtaKyd1/0jfFxplxC
	3Iny2Ykmjr4+IwG0NwFZIMBX80ugqXjCcFIEerV3cYbK8VdYzuaFZmO0HGvIe3KBvhtF0Ul3pMi1L
	07tgdVTe/tOm7pQ3IXhA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n8Pof-009qMJ-D2; Fri, 14 Jan 2022 16:52:41 +0000
Received: from smtpout30.security-mail.net ([85.31.212.37]
 helo=fx306.security-mail.net)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n8PoR-009qGt-0E
 for barebox@lists.infradead.org; Fri, 14 Jan 2022 16:52:31 +0000
Received: from localhost (localhost [127.0.0.1])
 by fx306.security-mail.net (Postfix) with ESMTP id 11B22399572
 for <barebox@lists.infradead.org>; Fri, 14 Jan 2022 17:52:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kalray.eu;
 s=sec-sig-email; t=1642179145;
 bh=kWhUOm/xy6a3Wt6Uacnpzb05e04HIMfh+zZnnw+4kXc=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=3uUN2XodSJ9kAhB9AUhhqdC3AjYNbaf8mu9cIGHcWwXXonDbouZPGddxoc8WU+oHh
 leqFsPwpMJtzKS0j+I4Xi1DGfohNJoIGw8gEmkW3023J9qkC2WZex1tgeaw6lHjq6T
 VUU0N9fwCbUDg+DKuhZgBKSg9GAWFMk4C6EnbUZ4=
Received: from fx306 (localhost [127.0.0.1])
 by fx306.security-mail.net (Postfix) with ESMTP id 9D7B4399543;
 Fri, 14 Jan 2022 17:52:24 +0100 (CET)
X-Virus-Scanned: E-securemail
Secumail-id: <15c0.61e1aa48.2f1f5.0>
Received: from zimbra2.kalray.eu (unknown [217.181.231.53])
 by fx306.security-mail.net (Postfix) with ESMTPS id 2FD7D399515;
 Fri, 14 Jan 2022 17:52:24 +0100 (CET)
Received: from zimbra2.kalray.eu (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTPS id 1337727E03DD;
 Fri, 14 Jan 2022 17:52:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id F142D27E0341;
 Fri, 14 Jan 2022 17:52:23 +0100 (CET)
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbra2.kalray.eu F142D27E0341
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=32AE1B44-9502-11E5-BA35-3734643DEF29; t=1642179144;
 bh=07coFaaEd6CrvelCYOR5cjaMphMpnNGUZO/RsCl3BtI=;
 h=From:To:Date:Message-Id;
 b=T5DfncHN9wuxfW/ko2SuOE6blId7KCXCPKZCJfLZAWrBUH+pBZi+6AeWCAXjqjiTH
 N1yNwT+Sj3dG9gKNHP9BNWoq8VPGqcufYJpp0OY/iov2wM1XxRrW9tw7puVTruHNVo
 inls5WxGPV9zED47APYiEt6ky6YH4edfqCppqjXU=
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id Eu-hFbYJEqGW; Fri, 14 Jan 2022 17:52:23 +0100 (CET)
Received: from tellis.lin.mbt.kalray.eu (unknown [192.168.36.206])
 by zimbra2.kalray.eu (Postfix) with ESMTPSA id D67E427E03A2;
 Fri, 14 Jan 2022 17:52:23 +0100 (CET)
From: Jules Maselbas <jmaselbas@kalray.eu>
To: barebox@lists.infradead.org
Cc: Clement Leger <clement.leger@bootlin.com>,
 Louis Morhet <lmorhet@kalray.eu>, Luc Michel <lmichel@kalray.eu>,
 Yann Sionneau <ysionneau@kalray.eu>, Jules Maselbas <jmaselbas@kalray.eu>
Date: Fri, 14 Jan 2022 17:52:06 +0100
Message-Id: <20220114165208.9980-8-jmaselbas@kalray.eu>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20220114165208.9980-1-jmaselbas@kalray.eu>
References: <20220114165208.9980-1-jmaselbas@kalray.eu>
X-Virus-Scanned: by Secumail
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220114_085227_254563_D0BEB291 
X-CRM114-Status: GOOD (  11.12  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 07/13] watchdog: kvx: do not disable watchdog on probe
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

From: Louis Morhet <lmorhet@kalray.eu>

As the watchdog may be set by a lower stage in the boot chain, and for
a good reason (precisely to ensure reliable update when something
unexpected happens during the boot chain), it is a bad idea to always
disable it during probe.

We should either have a mechanism to refresh it on a regular basis in
barebox itself and set it to something bigger for Linux, or handle it
transparently and let the previous stage set the global watchdog up to
Linux. This patch assumes for now the latter.

Signed-off-by: Louis Morhet <lmorhet@kalray.eu>
Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
---
 drivers/watchdog/kvx_wdt.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/watchdog/kvx_wdt.c b/drivers/watchdog/kvx_wdt.c
index da19136fda..df9430769b 100644
--- a/drivers/watchdog/kvx_wdt.c
+++ b/drivers/watchdog/kvx_wdt.c
@@ -73,11 +73,9 @@ static int kvx_wdt_drv_probe(struct device_d *dev)
 	wdd->hwdev = dev;
 	wdd->set_timeout = kvx_wdt_set_timeout;
 
-	/* Be sure that interrupt are disable */
+	/* Be sure that interrupt are disabled */
 	kvx_sfr_set_field(TCR, WIE, 0);
 
-	kvx_watchdog_disable();
-
 	return watchdog_register(wdd);
 }
 
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

