Delivery-date: Wed, 08 Jun 2022 16:55:45 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nyx61-007aJz-84
	for lore@lore.pengutronix.de; Wed, 08 Jun 2022 16:55:45 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nyx5z-0005WI-VO
	for lore@pengutronix.de; Wed, 08 Jun 2022 16:55:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=IwTc+rSoY0DjeXjr+fgOV3WljXA7aWUKWmv//w+RPeg=; b=IBaPUhbUGUDT/6
	u17mQuO+icjt2juSA2t/kmTrf6QqaZLDu2EsRb6lJkLdsUJZQuy0/iFXsCBSJWdQkvMeYS/emr40K
	NxuNiaZYHQs0dKCKL5DRQP4v8WxdfKWx0j2pLcl05LF4CCQyx+nsQjml3/f8PZ3Yra4E3b84WBvcl
	agUHJ0S8BXdjftWyQIKA+pwMTlQZbT4V0ymM1Mmd62vNBCW33KZOP8RW2i4DtFqReGlhEMvOoql4W
	SKmYQcUB29WsuUWHJTGzbLmM7XaBZWAnFlhJgo4yf2EUBbSsAWQRgh86rpRtfFrdOdBujAYsIsykP
	BfYkXjxWHQmovRhujBug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nyx45-00DobT-JE; Wed, 08 Jun 2022 14:53:45 +0000
Received: from smtpout140.security-mail.net ([85.31.212.146])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nyx0q-00Dmp0-4q
	for barebox@lists.infradead.org; Wed, 08 Jun 2022 14:50:26 +0000
Received: from localhost (localhost [127.0.0.1])
	by fx601.security-mail.net (Postfix) with ESMTP id 4F1D43ACB8D
	for <barebox@lists.infradead.org>; Wed,  8 Jun 2022 16:50:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kalray.eu;
	s=sec-sig-email; t=1654699813;
	bh=0KafZgsOTLmhydWoyjkouHCJ3kPLUe6AbIom2/64RDc=;
	h=From:To:Cc:Subject:Date;
	b=AH9RoSfnlHgffCcnEaEhA8sjphGq/ugdpB86eeQGw3XIAQnX0rTHfTuK7AA3pRpXo
	 wj0fWYLwj308yBMAqxa98YTQag0FqaQ0LVTBpXiuIzF15zcknbWQGv0B1e6ATrUuVw
	 7RjuFrSqW5ZL55VUdYdqn6EJW3j673e0mKRuIESY=
Received: from fx601 (localhost [127.0.0.1])
	by fx601.security-mail.net (Postfix) with ESMTP id E412A3ACD67
	for <barebox@lists.infradead.org>; Wed,  8 Jun 2022 16:50:12 +0200 (CEST)
X-Virus-Scanned: E-securemail
Secumail-id: <f166.62a0b723.a3137.0>
Received: from zimbra2.kalray.eu (unknown [217.181.231.53])
	by fx601.security-mail.net (Postfix) with ESMTPS id 235213ACCCA
	for <barebox@lists.infradead.org>; Wed,  8 Jun 2022 16:50:11 +0200 (CEST)
Received: from zimbra2.kalray.eu (localhost [127.0.0.1])
	by zimbra2.kalray.eu (Postfix) with ESMTPS id 85CE727E04B3;
	Wed,  8 Jun 2022 16:50:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by zimbra2.kalray.eu (Postfix) with ESMTP id 6EEB227E04B5;
	Wed,  8 Jun 2022 16:50:11 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbra2.kalray.eu 6EEB227E04B5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
	s=32AE1B44-9502-11E5-BA35-3734643DEF29; t=1654699811;
	bh=LRoXR18hqTmVVIaYZ6aFwzBfnJWBUyG1b7VFhp3dePo=;
	h=From:To:Date:Message-Id;
	b=ohN9v95HNCyON94GabXZ9rfiAbEQv0gHexsqQmNgazhRT0CwO8dO0gujunoLg7rRC
	 x4jRp2mbbzrdLDzR9EYAsCvACg5z2ABHc2EMvw84tAXnejAwZYfdMxEpp+FSJyaeeA
	 PQW6fr9FV2h/u18WzWxzlAHECSs59apA1DG/Iu+4=
Received: from zimbra2.kalray.eu ([127.0.0.1])
	by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id nHbGdv8z7ngG; Wed,  8 Jun 2022 16:50:11 +0200 (CEST)
Received: from tellis.lin.mbt.kalray.eu (unknown [192.168.36.206])
	by zimbra2.kalray.eu (Postfix) with ESMTPSA id 56C3D27E04B3;
	Wed,  8 Jun 2022 16:50:11 +0200 (CEST)
From: Jules Maselbas <jmaselbas@kalray.eu>
To: barebox@lists.infradead.org
Cc: Jules Maselbas <jmaselbas@kalray.eu>
Date: Wed,  8 Jun 2022 16:50:10 +0200
Message-Id: <20220608145010.12167-1-jmaselbas@kalray.eu>
X-Mailer: git-send-email 2.17.1
X-Virus-Scanned: by Secumail
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220608_075024_391854_A08313DF 
X-CRM114-Status: UNSURE (   5.91  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] serial: ns16550: Remove empty line after return
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
---
 drivers/serial/serial_ns16550.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/serial/serial_ns16550.c b/drivers/serial/serial_ns16550.c
index f93a89ab95..d5ab420a22 100644
--- a/drivers/serial/serial_ns16550.c
+++ b/drivers/serial/serial_ns16550.c
@@ -169,7 +169,6 @@ static inline unsigned int ns16550_calc_divisor(struct console_device *cdev,
 	unsigned int clk = plat->clock;
 
 	return (clk / MODE_X_DIV / baudrate);
-
 }
 
 /**
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

