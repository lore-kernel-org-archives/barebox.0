Delivery-date: Fri, 10 Nov 2023 13:59:48 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r1R6y-005rWQ-0w
	for lore@lore.pengutronix.de;
	Fri, 10 Nov 2023 13:59:48 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r1R6v-0003NI-3u
	for lore@pengutronix.de; Fri, 10 Nov 2023 13:59:48 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=sGmq4oxH+TXuhIJQE4zot1ZjKhL2kIp2JF8plj981CM=; b=R5CqBhxGwMxjPuE42hw+NtlDwk
	SwRznM7miFAGQcGRBNG+C1yk2i4KHExOl+oIX0eGqUscRniqlbCxGEbfpXXoPPaTJO8IhvgOaEQ3T
	zvNKszF2ruZE9xuHbAF3wfE7LrNl61sZ2yPTr1mNq3T0uzA/ZmE7zbMn8CxO7hXuXAUfNm33cFztF
	DMoo1VRaKLDA4jOE5Ic24v9psJf2kYOrj/H0AhKAyIJYBntawB/46TdhLDvCVABgeasPXa5/7iJEB
	RVUYTi/BnyGU3Eh7484MrjGv5Fgcg0ysD2FGJk0luOln9HHg2+NF7T279vAY441tHYZWP070eJm+1
	R9Bm++sA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r1R5q-008kME-2R;
	Fri, 10 Nov 2023 12:58:38 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r1R5d-008k3T-03
	for barebox@bombadil.infradead.org;
	Fri, 10 Nov 2023 12:58:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=sGmq4oxH+TXuhIJQE4zot1ZjKhL2kIp2JF8plj981CM=; b=n0c24n0BU9ERD9lV4Uj8AiCJdy
	yjrF/OU6uKiC3ChPv+PHV0Bx3a0ifR+0O+D+u11RwmvuBx8KTwM7isUJCLycr7SIVT0ca/bjZc47H
	x7nMJ4RbBOqbOEvqNYauUcP0xJcOap+KBbH6RBLKigvAWulJzun319+QQIPayh5RSkn65w/7w7CUL
	w/YXZreYG0aWrXdW0bHovGenKqT1jzT6vji4DfY7+73cGUl3v9tzZoDkC709mTvhgSdjIuoJkPQRB
	7hRdnirQiJuJYDNUXsBTpBR0XflkT1hYoV3Fx5v878unfya0gBy2ezRk+4M1HCK2f0c5U3qdYouAX
	Mzj9qw8w==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r1R5Y-00Fbwo-1O
	for barebox@lists.infradead.org;
	Fri, 10 Nov 2023 12:58:23 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1r1R5H-00027R-Sq; Fri, 10 Nov 2023 13:58:03 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1r1R5H-0081Xp-6o; Fri, 10 Nov 2023 13:58:03 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1r1R5H-008s2R-06;
	Fri, 10 Nov 2023 13:58:03 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri, 10 Nov 2023 13:57:57 +0100
Message-Id: <20231110125800.1901232-23-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231110125800.1901232-1-s.hauer@pengutronix.de>
References: <20231110125800.1901232-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231110_125820_610033_8A54B9A8 
X-CRM114-Status: GOOD (  12.33  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 22/25] spi: spi-nxp-fspi: Enable for i.MX9
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The i.MX9 flexspi is compatible to the one on i.MX8mm, just add the
necessary Kconfig dependency.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/spi/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/spi/Kconfig b/drivers/spi/Kconfig
index e37c7821fb..445c756a38 100644
--- a/drivers/spi/Kconfig
+++ b/drivers/spi/Kconfig
@@ -112,7 +112,7 @@ config DRIVER_SPI_STM32
 
 config SPI_NXP_FLEXSPI
 	tristate "NXP Flex SPI controller"
-	depends on ARCH_IMX8M || COMPILE_TEST
+	depends on ARCH_IMX8M || ARCH_IMX93 || COMPILE_TEST
 	help
 	  This enables support for the Flex SPI controller in master mode.
 	  Up to four slave devices can be connected on two buses with two
-- 
2.39.2



