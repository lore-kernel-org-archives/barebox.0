Delivery-date: Wed, 22 Sep 2021 08:58:50 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mSwDS-0005LO-Ll
	for lore@lore.pengutronix.de; Wed, 22 Sep 2021 08:58:50 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mSwDR-0003Nk-5n
	for lore@pengutronix.de; Wed, 22 Sep 2021 08:58:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jWPSgwD6Yr5JrHo8rrEyn/xh1LeU055s4VBKr5rPLec=; b=Cl3JK/VV/0mTG8
	KeLMnx5+cmhZpdR4Vv/zgPzuBZrIfDkg6Rw1GK6fh2negX4rRln7eSaMub09aaEEVrpXE1aqFqCDD
	v0zxBSid/ahuiCI897pZcSXkpeMtCO83WwxqGcFIUo+e+BHL1Q0DaRxPVDGqdiRnP/i3pDOoJMQ4C
	lJ0Uh/QSk+N8OV3MHGmW1tOonnt61fI4inNr2pxGwmdl7a8SULgCa8uX140cH4LuU3GhQXxc2O6OU
	LGuc3Tyur2gJnSJwpDpZL/oV+848oklSvL6VR0OKlmpTBWa5NyJUr+BPTR+tWlAgIVb2BpY+5ip0L
	u0af+x2AaC/F2++qduVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mSwBt-007BfR-Id; Wed, 22 Sep 2021 06:57:14 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mSw5W-0079mD-1w
 for barebox@lists.infradead.org; Wed, 22 Sep 2021 06:50:39 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1mSw5M-0002AO-Ot; Wed, 22 Sep 2021 08:50:28 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1mSw5M-0005Yn-9p; Wed, 22 Sep 2021 08:50:28 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Peter Rosin <peda@axentia.se>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 22 Sep 2021 08:49:58 +0200
Message-Id: <20210922065000.20970-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210922065000.20970-1-a.fatoum@pengutronix.de>
References: <20210922065000.20970-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210921_235038_144579_131AC129 
X-CRM114-Status: GOOD (  10.45  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master 2/5] ARM: at91: at91sam9263ek: add device tree check
 for board code
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Most board code is guarded by a compatible check, but not add_smc_devices().
Remedy this.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/boards/at91sam9263ek/of_init.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm/boards/at91sam9263ek/of_init.c b/arch/arm/boards/at91sam9263ek/of_init.c
index 3cb2fe22c967..92301c80d6c8 100644
--- a/arch/arm/boards/at91sam9263ek/of_init.c
+++ b/arch/arm/boards/at91sam9263ek/of_init.c
@@ -15,6 +15,9 @@
 
 static int add_smc_devices(void)
 {
+	if (!of_machine_is_compatible("atmel,at91sam9263ek"))
+		return 0;
+
 	add_generic_device("at91sam9-smc", 0, NULL, AT91SAM9263_BASE_SMC0, 0x200,
 			   IORESOURCE_MEM, NULL);
 	add_generic_device("at91sam9-smc", 1, NULL, AT91SAM9263_BASE_SMC1, 0x200,
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

