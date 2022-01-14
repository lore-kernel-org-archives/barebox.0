Delivery-date: Fri, 14 Jan 2022 17:54:26 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n8PqM-002DIz-FE
	for lore@lore.pengutronix.de; Fri, 14 Jan 2022 17:54:26 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n8PqK-0004Ss-KK
	for lore@pengutronix.de; Fri, 14 Jan 2022 17:54:26 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aDqxquVFlF36OgCPEWQBNohHGjONsw9Z77aQT+aCj/4=; b=t6TCDO7mrB1pJD
	H7XikPXj0FcVz/390bw8R/tXWWfxFewKtJAOLgSP81hNIghFVaj138LOj0aG9kISE+YRq5PByiuYu
	yata1JlD+bh6/0jkBIqiPBD8LT0lCnjDgaG5z9VLB3691hZ2qdGEazGGygvZ0kp5+iR6tJWMZ2UXu
	2M/a/itrpBYkYWjVhCH0eNfNWenlijZwnI1sP8ZeprSdgvpqiSizdQ3jDsm0yXkqYm8XpNi5jy3aE
	pR6qRJOa22ZEFDxxPXPtVG+3L4JQz+R2NN+TxbLGpSig9xTCOpgcibrU8SkFpGlMLG5/8ZWZ7H9ik
	q4N0dA860afuR1Z8QF5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n8PoZ-009qLC-TB; Fri, 14 Jan 2022 16:52:36 +0000
Received: from mxout.security-mail.net ([85.31.212.48]
 helo=fx304.security-mail.net)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n8PoR-009qGu-0J
 for barebox@lists.infradead.org; Fri, 14 Jan 2022 16:52:29 +0000
Received: from localhost (localhost [127.0.0.1])
 by fx304.security-mail.net (Postfix) with ESMTP id 1389D627DE
 for <barebox@lists.infradead.org>; Fri, 14 Jan 2022 17:52:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kalray.eu;
 s=sec-sig-email; t=1642179145;
 bh=nFSdfzK5Zx11UBQ0oDkAgC5K2bOAWPnavtGMDX53TCo=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=JrHPknbolDrNc7k72H6hwg8xFYLE6Q70hSRNV1+BfRny04gmMuvYIWBcJeXIVqfCi
 7yb7zfOpdC1hmCjTx+0Mc9AqViNqsXwoG9vbkwGYVFKXUhNVh6KJbQLsO4MBMMN7G9
 1LHBntOZ6lu3TljJtAXp8XsG9I64gN44jsHMg3+o=
Received: from fx304 (localhost [127.0.0.1])
 by fx304.security-mail.net (Postfix) with ESMTP id 6E46D6284E;
 Fri, 14 Jan 2022 17:52:24 +0100 (CET)
X-Virus-Scanned: E-securemail
Secumail-id: <a215.61e1aa48.23080.0>
Received: from zimbra2.kalray.eu (unknown [217.181.231.53])
 by fx304.security-mail.net (Postfix) with ESMTPS id 2382A62844;
 Fri, 14 Jan 2022 17:52:24 +0100 (CET)
Received: from zimbra2.kalray.eu (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTPS id 0741B27E03F5;
 Fri, 14 Jan 2022 17:52:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id E408827E03DD;
 Fri, 14 Jan 2022 17:52:23 +0100 (CET)
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbra2.kalray.eu E408827E03DD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=32AE1B44-9502-11E5-BA35-3734643DEF29; t=1642179143;
 bh=ty/B/TL3HopKOziOvO+Dit6CjzNLGUc38eQpdOZQrtU=;
 h=From:To:Date:Message-Id;
 b=blIT1HqXGb/qj36ty81B3AKjHL8UCBj2S7eZ4C1rSkKFrM7/SSewhsfH+L6b/WyYx
 NASdmqtUZet2+Ih1ZKEWAOfPAuikav5iW5Y9aNAu5vzu2DN9wHp2azTbfqBVAp1DyB
 q9W/Bi4CtqMHxCz8DxNNHfqiYNKFxd2xjMBBID3U=
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id bYApfYUOhHRb; Fri, 14 Jan 2022 17:52:23 +0100 (CET)
Received: from tellis.lin.mbt.kalray.eu (unknown [192.168.36.206])
 by zimbra2.kalray.eu (Postfix) with ESMTPSA id C995727E03FE;
 Fri, 14 Jan 2022 17:52:23 +0100 (CET)
From: Jules Maselbas <jmaselbas@kalray.eu>
To: barebox@lists.infradead.org
Cc: Clement Leger <clement.leger@bootlin.com>,
 Louis Morhet <lmorhet@kalray.eu>, Luc Michel <lmichel@kalray.eu>,
 Yann Sionneau <ysionneau@kalray.eu>, Jules Maselbas <jmaselbas@kalray.eu>
Date: Fri, 14 Jan 2022 17:52:05 +0100
Message-Id: <20220114165208.9980-7-jmaselbas@kalray.eu>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20220114165208.9980-1-jmaselbas@kalray.eu>
References: <20220114165208.9980-1-jmaselbas@kalray.eu>
X-Virus-Scanned: by Secumail
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220114_085227_261328_511558CF 
X-CRM114-Status: UNSURE (   8.76  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 06/13] clocksource: kvx: Register as postcore_platform_driver
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

