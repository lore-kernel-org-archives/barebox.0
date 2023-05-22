Delivery-date: Mon, 22 May 2023 07:23:41 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q0y1G-009IqT-UJ
	for lore@lore.pengutronix.de; Mon, 22 May 2023 07:23:41 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q0y1E-0001RT-JZ
	for lore@pengutronix.de; Mon, 22 May 2023 07:23:41 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=pXxck0qI4CIllyn1/P3HzGEOa2KuUzKHvHq07ZARHyk=; b=k12S+4klbUl+Aq0F6qqyMzJt2k
	9n0Obv2Bhq0Am5B0DXH8UGYwoesCSJpVf/CuigcCGVu0RPH7ksE2LKiw2HwvHxbIJ94L1UpJ0PfDC
	VgelXw4WnYNE7YXmbnStNg7CYA8kFx1JyIWMqHShPeDy/BnZeevokpXFBm3ji5+WaXkXVjJnF2rR2
	ZXp+3rn5vyxlA5xdvQR7urS3NBX6nUo0CfgSgnwBCnPNoXSjoYxevwic93udeQDhKT/Pph+qrljyn
	wOpakeDGFOyd5gKfjqHFsvOCfoMJ6gN8t6pC+eTd48UQ4SjQ8J5pEjp6hR4BI7xRi/sWseKFPcJiw
	5Vy+feBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q0y07-005NB6-1b;
	Mon, 22 May 2023 05:22:31 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q0y02-005N76-0o
	for barebox@lists.infradead.org;
	Mon, 22 May 2023 05:22:28 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1q0y01-000179-2V; Mon, 22 May 2023 07:22:25 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q0y00-001vuP-D9; Mon, 22 May 2023 07:22:24 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q0xzz-004M1U-2T; Mon, 22 May 2023 07:22:23 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 22 May 2023 07:22:20 +0200
Message-Id: <20230522052222.1037931-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230522052222.1037931-1-a.fatoum@pengutronix.de>
References: <20230522052222.1037931-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230521_222226_293335_A45EB172 
X-CRM114-Status: GOOD (  11.77  )
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
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH master 5/7] pbl: have DEBUG_PBL depend only on PBL_CONSOLE
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

PBL_CONSOLE enables use of printf and friends in the prebootloader. The
underlying putc will be what was passed to pbl_set_putc or alternatively
the DEBUG_LL PUTC_LL implementation.

In either case, PBL_CONSOLE is required to get the PBL output useful to
debugging, so let's drop the DEBUG_LL depends, but keep the help text to
lessen user confusion.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/common/Kconfig b/common/Kconfig
index e423b4c33b3e..b9e175045608 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -1636,7 +1636,7 @@ config DEBUG_INITCALLS
 
 config DEBUG_PBL
 	bool "Print PBL debugging information"
-	depends on PBL_CONSOLE || DEBUG_LL
+	depends on PBL_CONSOLE
 	help
 	  If enabled this will enable all debug prints in the prebootloader.
 	  For this to work, a console needs to be configured in the
-- 
2.39.2



