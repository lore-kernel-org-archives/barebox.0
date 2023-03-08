Delivery-date: Wed, 08 Mar 2023 15:40:45 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pZuyC-00DgAG-Va
	for lore@lore.pengutronix.de; Wed, 08 Mar 2023 15:40:45 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pZuyC-0006JN-MO
	for lore@pengutronix.de; Wed, 08 Mar 2023 15:40:45 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=umT1JvpDYcaaiWfoNzj5KMXaEddUjAyuTS9HCoXR1Es=; b=YBqhI//TrcILj/wOd1RTusdvqi
	NVrYkM/NOXPZVJQQi/zBpJNVQUwILruCKhG4gV1rwknmwYsWwzWtBxEnoNZUMLwBh3Ez5Qw3IxXsy
	wnwxlc2yYb2246NqHmEsrA6Hbgcj390JYC+KOhqI7u+SV/qnyZPyIk8IddeXiFt6vL1s3uTwAjqEw
	9QRk+wa8E1ekkUBbtrTrq6z5K+oEReu5ktA7Z04WmuhxU86xsAq19hc4NWU3BgLeemNvWFacgPu4H
	aN5hh5z1cfxyq/DXqU3YAF1jTinjTspJqkkIuDFqjyxRzT90tbkImdR4Gx6ifk8WhT/S+c+M1iQHA
	oj4XEmag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZux0-005WBI-4P; Wed, 08 Mar 2023 14:39:30 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZuww-005W9x-91
	for barebox@bombadil.infradead.org; Wed, 08 Mar 2023 14:39:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=umT1JvpDYcaaiWfoNzj5KMXaEddUjAyuTS9HCoXR1Es=; b=hULLjeNkHaIuW4GJNeTXuQJ4TQ
	DUu1+r6WRqU/nDPUjMt7JFEmABAauM22pslKzbHfArYikq7v6tFFJdveHyWxoBVsvTobo2OxiUSKP
	tThkSw0j0pbF2LAuXbrJPMlF7UywuB88IAmC396N6TUcGPljqE9XCWql8IvhCBsG2AQoWG0VbGaDN
	Zifecez6oZAQ7mPW+VdXi71oHVBXJN46KddYvzkq6NZcX1DAkJECcimXWuGF+tprwGcgqEN3s3AcF
	atyKnGRMDmt1226/QWCwMZUrEPyjAE5hHHX2si7FbDlRxLi8vzQFWidDe/LLnfg+jpheB9T7gNawK
	UnIPxamw==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pZuws-00HPBs-0m
	for barebox@lists.infradead.org;
	Wed, 08 Mar 2023 14:39:24 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pZuwr-0005xF-0t; Wed, 08 Mar 2023 15:39:21 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pZuwq-002jpS-CW; Wed, 08 Mar 2023 15:39:20 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pZuwp-00E8Qx-Ju; Wed, 08 Mar 2023 15:39:19 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed,  8 Mar 2023 15:39:18 +0100
Message-Id: <20230308143918.3368968-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230308_143922_426092_AF932F4B 
X-CRM114-Status: UNSURE (   9.13  )
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] arm: rockchip_v8_defconfig: disable DEBUG_LL
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

DEBUG_LL shouldn't be enabled in a generic defconfig, so disable it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/configs/rockchip_v8_defconfig | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm/configs/rockchip_v8_defconfig b/arch/arm/configs/rockchip_v8_defconfig
index 339247cc1c..0c3c498c03 100644
--- a/arch/arm/configs/rockchip_v8_defconfig
+++ b/arch/arm/configs/rockchip_v8_defconfig
@@ -30,7 +30,6 @@ CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
 CONFIG_STATE=y
 CONFIG_BOOTCHOOSER=y
 CONFIG_RESET_SOURCE=y
-CONFIG_DEBUG_LL=y
 CONFIG_CMD_DMESG=y
 CONFIG_LONGHELP=y
 CONFIG_CMD_IOMEM=y
-- 
2.30.2



