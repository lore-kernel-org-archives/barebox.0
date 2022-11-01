Delivery-date: Tue, 01 Nov 2022 07:28:11 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1opkkt-00APTX-Pj
	for lore@lore.pengutronix.de; Tue, 01 Nov 2022 07:28:11 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1opkks-00020c-Au
	for lore@pengutronix.de; Tue, 01 Nov 2022 07:28:10 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=dCRalzBkU/lJNXdbNMWwR82dg07wNwHHb/oPvKfCtxk=; b=3FhZw/V9kqF43+P7lXQYPU4jHr
	4YPowXN9sTrijw8EQTsSUqga4J0PHxVC2Q6XAdbRkQLTgUi84zP7zvjYkT3AH22RG+L8p+uJNW9B4
	w0bd0sdAcW9ayIwXb/z3wZQvDqpUYj6E0odZGniVjMfWv6dBpnieIMQlMJYVn/I46bhFpLgP6o+Iq
	0FizHPrw6BAu/a4s4w7ETe8AlIegU+zmKeyk6Aj797VMRf1zzbpLVGNtruIAJrINwdnjVFTSrrYzZ
	ZfJuQZi6JvTRN8TpxJiI4JAArODuaD5y43gHIZzjMU+bFQU/Mq+V0tlT69SzCnX/jgGMLu/zE7vt0
	qkAipQEQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opkjb-002Poq-93; Tue, 01 Nov 2022 06:26:51 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opkjW-002Pn6-J0
	for barebox@lists.infradead.org; Tue, 01 Nov 2022 06:26:47 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1opkjU-0001mw-U4; Tue, 01 Nov 2022 07:26:44 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1opkjV-001ciX-55; Tue, 01 Nov 2022 07:26:44 +0100
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1opkjT-00DSKj-9S; Tue, 01 Nov 2022 07:26:43 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue,  1 Nov 2022 07:26:40 +0100
Message-Id: <20221101062642.3207113-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20221101062642.3207113-1-a.fatoum@pengutronix.de>
References: <20221101062642.3207113-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221031_232646_649136_976FF8D1 
X-CRM114-Status: GOOD (  12.94  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master 2/4] ARM: psci: client: match most specific compatible first
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The PSCI client driver will use the barebox compatible to determine
whether it's safe to use the ARM_PSCI_0_2_FN_PSCI_VERSION command.

For this reason, we need to match against the newer PSCI compatibles
first, because otherwise

  compatible = "arm,psci-1.0", "arm,psci-0.2", "arm,psci";

would have us end up with PSCI v0.1 instead.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/cpu/psci-client.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/cpu/psci-client.c b/arch/arm/cpu/psci-client.c
index 7d5b3768b59e..8e151177c2d7 100644
--- a/arch/arm/cpu/psci-client.c
+++ b/arch/arm/cpu/psci-client.c
@@ -176,9 +176,9 @@ static int __init psci_probe(struct device_d *dev)
 }
 
 static __maybe_unused struct of_device_id psci_dt_ids[] = {
-	{ .compatible = "arm,psci",	.data = (void*)ARM_PSCI_VER(0,1) },
-	{ .compatible = "arm,psci-0.2",	.data = (void*)ARM_PSCI_VER(0,2) },
 	{ .compatible = "arm,psci-1.0",	.data = (void*)ARM_PSCI_VER(1,0) },
+	{ .compatible = "arm,psci-0.2",	.data = (void*)ARM_PSCI_VER(0,2) },
+	{ .compatible = "arm,psci",	.data = (void*)ARM_PSCI_VER(0,1) },
 	{ /* sentinel */ },
 };
 
-- 
2.30.2



