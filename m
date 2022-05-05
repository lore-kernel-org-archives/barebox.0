Delivery-date: Thu, 05 May 2022 10:05:36 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nmWUS-002UdX-Cg
	for lore@lore.pengutronix.de; Thu, 05 May 2022 10:05:36 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nmWUQ-0000Mn-Pf
	for lore@pengutronix.de; Thu, 05 May 2022 10:05:35 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wmqOpt4sxWeQbGnIjWmNocHDrhfslJk5iNnyfLvbzTg=; b=pkGw9oMQpfjMS1
	oCATMgF6gsQ1rMZ8aLDPJWvnOrsRdEtrP2s4tQQ+sv315S6yuMusFCraZP4vNJooJ1wo1crabTHuI
	qISh3uXmYN5AIiWNZenyUB8iUV76ZUNsycI557xOpTI4ZlAlWWP5mBMue6ztWkf8jo+2mwTvlcmYX
	iT2ioB/EcElLEX0glF5bkIKsWOtIed0lUuTe9U2MrLsXLmSnUAcOT57P2ilhj0YnbdwtSOhALgNAS
	K4qftfhC4SDopqgwEVXSkE5tolwJ0+1cxv6wbYhPbe/gKlSOWDm1UauAmqoVh9LtUN43JMAxEhrVQ
	YHp8WvuiOXGz8LFbjeDQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nmWSp-00EXmI-Uu; Thu, 05 May 2022 08:03:56 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nmWRG-00EWkr-6X
 for barebox@bombadil.infradead.org; Thu, 05 May 2022 08:02:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=iEZBRnmX/1jXJ9ZvefMHdbXfuWGFPCI0z1hx2NWUdv4=; b=XN1l3SkC1GsfJqOCGulsXAELAs
 7S0U+iFfb8cf7zkXoKUVtuvu4l4QOGhhrlMMKhQp62xXmr0XyemipdqDAY9QaT2OchAAWvJTjZi3E
 ZiE9BwT7eSVoDeXKQAqcxUPwfkb9hm3tGvo+AMNB5vAta89pXlfPH0BeDtyYNKZrlQxEB887Zk6gV
 kTSTlqJs+Ysa8R64Y8b4V/jt7qUG3Wn5H8H5Yu/YPAeY/aHQp3rUGSMNqhK1DXH+Evc3l2lzS0NKC
 NlT8TygzhFLmMDdCiHWmi1wXXgSP0nKN2W8RbUHkgR9pNIpZtDcNznT2DoXxqCike9nnr5S2Q+ZBq
 L6rtwA0Q==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nmWRB-00BJaZ-1y
 for barebox@lists.infradead.org; Thu, 05 May 2022 08:02:15 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1nmWQz-0006u8-6i; Thu, 05 May 2022 10:02:01 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1nmWQz-000TOd-KB; Thu, 05 May 2022 10:02:00 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1nmWQv-004hb6-Ej; Thu, 05 May 2022 10:01:57 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: ukl@pengutronix.de, =?UTF-8?q?Daniel=20Br=C3=A1t?= <danek.brat@gmail.com>,
 ore@pengutronix.de, Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu,  5 May 2022 10:01:47 +0200
Message-Id: <20220505080152.1068424-11-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220505080152.1068424-1-a.fatoum@pengutronix.de>
References: <20220505080152.1068424-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220505_090213_685984_94F73552 
X-CRM114-Status: GOOD (  10.12  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 10/15] clocksource: bcm2835: bump below architeced timer for
 AArch64
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We use the ARM architected timer on other ARMv8 platforms as well, so
let's do the same for the 64-bit Raspberry Pi configuration.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/clocksource/bcm2835.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/clocksource/bcm2835.c b/drivers/clocksource/bcm2835.c
index d84341fc4083..d5d3e3477de3 100644
--- a/drivers/clocksource/bcm2835.c
+++ b/drivers/clocksource/bcm2835.c
@@ -28,7 +28,8 @@ static uint64_t stc_read_cycles(void)
 static struct clocksource bcm2835_stc = {
 	.read = stc_read_cycles,
 	.mask = CLOCKSOURCE_MASK(32),
-	.priority = 80,
+	/* Give the architected timer precedence on AArch64 */
+	.priority = IS_ENABLED(CONFIG_CPU_V8) ? 60 : 80,
 };
 
 static int bcm2835_cs_probe(struct device_d *dev)
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

