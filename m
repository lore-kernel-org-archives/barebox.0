Delivery-date: Fri, 14 Apr 2023 15:28:21 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pnJTQ-003LeI-Td
	for lore@lore.pengutronix.de; Fri, 14 Apr 2023 15:28:21 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pnJTQ-0007CG-SK
	for lore@pengutronix.de; Fri, 14 Apr 2023 15:28:21 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=69joP2Snn7fAPNNkxmUb1i5DT3tp5ejWVo/09uUuDRQ=; b=vQ8TdbxB/t6b4V3zLP1dths5Qx
	/eV8aCh758h76NxwJArp61XfdqtyXrgdwaGj4D9rNItDv/2/YhNvOGy2ife6z80BWGFZLIzd4k6iv
	3xb6IJruCFEGeYHOOj+G9lFPZHIPjCcjzNIwyMw7O47F+TeyAHRSqlXhe8qnMDEuBCOGCniLImUiH
	UDSvb0rWa5Vk+PPojXdJac6nKHbtStZffW22B4YYMvD1SeixiMXTraW0UR96yNFj6kD/53y9fek7R
	8RH5JWFpMljVpNHeGxmqsf4FcaVK7w0mHbVFIoK1Fi389lGAW0JnrBnLp37+64ua0m/UA1kPmVMne
	rRx4cShA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pnJSF-009fgJ-2q;
	Fri, 14 Apr 2023 13:27:07 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pnJS9-009feH-0e
	for barebox@lists.infradead.org;
	Fri, 14 Apr 2023 13:27:05 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pnJS3-00070s-Ve; Fri, 14 Apr 2023 15:26:56 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pnJS2-00BDAs-Cl; Fri, 14 Apr 2023 15:26:54 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pnJS1-00797b-J0; Fri, 14 Apr 2023 15:26:53 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 14 Apr 2023 15:26:51 +0200
Message-Id: <20230414132651.1703346-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230414_062701_275594_F6A0CE87 
X-CRM114-Status: UNSURE (   7.71  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH master] ARM: i.MX6: fix DEBUG_LL use
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Below mentioned commit added a select DEBUG_IMX_UART for all supported
i.MX variants apart from the i.MX6Q. Let's do likewise there, so
DEBUG_LL may be enabled without errors about missing PUTC_LL definition.

Fixes: 0fff6cb9bb4f ("ARM: i.MX: Only provide PUTC_LL() when activated")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/common/Kconfig b/common/Kconfig
index d951947463a2..ac3df75acbc5 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -1342,6 +1342,7 @@ config DEBUG_IMX53_UART
 config DEBUG_IMX6Q_UART
 	bool "i.MX6Q Debug UART"
 	depends on ARCH_IMX6
+	select DEBUG_IMX_UART
 	help
 	  Say Y here if you want kernel low-level debugging support
 	  on i.MX6Q.
-- 
2.39.2



