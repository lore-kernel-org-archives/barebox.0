Delivery-date: Thu, 15 Feb 2024 17:45:18 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1raerO-007dm1-0A
	for lore@lore.pengutronix.de;
	Thu, 15 Feb 2024 17:45:18 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1raerN-0006tT-Cg
	for lore@pengutronix.de; Thu, 15 Feb 2024 17:45:17 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Mx0DRu38oSN0mNuosGtLVhWmNc9ZkJRFVJOy2BCMnJ8=; b=yoNXm9GcPW0weFd1i/1/g631a+
	oJNaGdTvVD9yRjlrt9YKf0bDlIXypRqxNhpOzqPtbHVjmY+dLNSbFk5A6ew6rbyA06lklIWxTYNdz
	67Im246yhuYG8FrEZ+DVUaDpU9dphCPCHdjyt2VHXeq+TeRaKkID9eZs2KCH7FDid4y9DqTCPqtXW
	rIrRsZFFLLcOYxckJDrDkrL6mU8MnIiHa6L1MHpQLxiq+u8jfSfYsox3wOv5sY1wmfrW4Lz1GCioz
	dkNsVKQg1RdkHq/OchQXnfU75Jb0q5vQmzZS0hh4OOG8u3xDFopDIqRlGyd9iXxFPWzNXjrx7srSE
	CVxTiwaQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1raequ-0000000H1gZ-36cH;
	Thu, 15 Feb 2024 16:44:48 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1raeqp-0000000H1cV-30SQ
	for barebox@lists.infradead.org;
	Thu, 15 Feb 2024 16:44:45 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1raeqo-0006dG-JI; Thu, 15 Feb 2024 17:44:42 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1raeqo-000v4B-5Z; Thu, 15 Feb 2024 17:44:42 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1raecn-009YG0-1d;
	Thu, 15 Feb 2024 17:30:13 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Sam Ravnborg <sam@ravnborg.org>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 15 Feb 2024 17:30:07 +0100
Message-Id: <20240215163009.2172795-14-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240215163009.2172795-1-a.fatoum@pengutronix.de>
References: <20240215163009.2172795-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240215_084443_791746_0E4637D1 
X-CRM114-Status: UNSURE (   9.60  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v3 13/15] ARM: at91: skov-arm9cpu: configure more appropriate hostname
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The default logic would set the hostname to arm9-cpu, which isn't very
descriptive. Set our own hostname that contains the vendor name.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v3:
  - new patch
---
 arch/arm/boards/skov-arm9cpu/board.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/boards/skov-arm9cpu/board.c b/arch/arm/boards/skov-arm9cpu/board.c
index 1d0ecb247d8e..db6813c0e726 100644
--- a/arch/arm/boards/skov-arm9cpu/board.c
+++ b/arch/arm/boards/skov-arm9cpu/board.c
@@ -56,6 +56,8 @@ static int mem;
  */
 static int skov_arm9_probe(struct device *dev)
 {
+	barebox_set_hostname("skov-arm9cpu");
+
 	add_generic_device("at91sam9-smc", 0, NULL, AT91SAM9263_BASE_SMC0, 0x200,
 			   IORESOURCE_MEM, NULL);
 	add_generic_device("at91sam9-smc", 1, NULL, AT91SAM9263_BASE_SMC1, 0x200,
-- 
2.39.2



