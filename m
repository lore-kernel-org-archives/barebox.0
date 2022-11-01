Delivery-date: Tue, 01 Nov 2022 07:28:09 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1opkkr-00APT2-H9
	for lore@lore.pengutronix.de; Tue, 01 Nov 2022 07:28:09 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1opkkq-0001zr-AA
	for lore@pengutronix.de; Tue, 01 Nov 2022 07:28:09 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=LeystF1fy/u/zBCViEEy6kDIMbv42Zg2DcOeb+EqLLw=; b=nEsHr1hys3/XesJ98CBuQmLa4y
	QnRQ1XDOdtElBpvqRaM/inwmETGmAwDyY/pie2kGEO0YH4xXQdkK9xygoskKi2PQUczY621lJgqQq
	ptDdsqYyGop+T4bK93njO3R2F2MhkSlUA7iDVwxyrLeR4Q7hhoOiO4es6b5qLkeJHIMhZukLbJF1i
	dDBtE9GxgMg/Vrn8Ucgv/kiWLutTETY9JsM13e+KKPoX02/Vosxy5LfQHtfDFA4BggY/e/ddiUYMj
	YR7lOR63J6fakZ1POWzydupQOFGXXoJXR6fISn/smtunxjZP+Lr/Y+nFjUwO8GubUvzZziXRWN30m
	rsIvMRMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opkjg-002PqX-2d; Tue, 01 Nov 2022 06:26:56 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opkjW-002Pn9-Iz
	for barebox@lists.infradead.org; Tue, 01 Nov 2022 06:26:49 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1opkjV-0001mx-3t; Tue, 01 Nov 2022 07:26:45 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1opkjV-001cia-Dg; Tue, 01 Nov 2022 07:26:44 +0100
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1opkjT-00DSKm-9o; Tue, 01 Nov 2022 07:26:43 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue,  1 Nov 2022 07:26:41 +0100
Message-Id: <20221101062642.3207113-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20221101062642.3207113-1-a.fatoum@pengutronix.de>
References: <20221101062642.3207113-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221031_232646_663227_880E30F7 
X-CRM114-Status: GOOD (  14.23  )
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
Subject: [PATCH master 3/4] ARM: psci: client: always register OF fixup
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We currently only register the device tree fixup if PSCI version in
device tree disagrees with version read from firmware. The barebox
PSCI DT version may differ from the kernel version though, so we
should rather run the fixup always. If the kernel has already an
up-to-date compatible, it won't change. But for cases where firmware is
expected to fill out the correct PSCI version, barebox will do what's
expected.

While at it, move the of_version logic together to make it easier
to follow.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/cpu/psci-client.c | 8 ++------
 1 file changed, 2 insertions(+), 6 deletions(-)

diff --git a/arch/arm/cpu/psci-client.c b/arch/arm/cpu/psci-client.c
index 8e151177c2d7..218170dfa4ba 100644
--- a/arch/arm/cpu/psci-client.c
+++ b/arch/arm/cpu/psci-client.c
@@ -119,10 +119,6 @@ static int __init psci_probe(struct device_d *dev)
 	ulong of_version, actual_version;
 	int ret;
 
-	ret = dev_get_drvdata(dev, (const void **)&of_version);
-	if (ret)
-		return -ENODEV;
-
 	ret = of_property_read_string(dev->device_node, "method", &method);
 	if (ret) {
 		dev_warn(dev, "missing \"method\" property\n");
@@ -139,6 +135,7 @@ static int __init psci_probe(struct device_d *dev)
 	}
 
 
+	of_version = (ulong)device_get_match_data(dev);
 	if (of_version < ARM_PSCI_VER(0,2)) {
 		version = of_version;
 
@@ -155,8 +152,7 @@ static int __init psci_probe(struct device_d *dev)
 	dev_info(dev, "detected version %u.%u\n",
 		 version >> 16, version & 0xffff);
 
-	if (actual_version != of_version)
-		of_register_fixup(of_psci_do_fixup, &version);
+	of_register_fixup(of_psci_do_fixup, &version);
 
 	ret = poweroff_handler_register_fn(psci_poweroff);
 	if (ret)
-- 
2.30.2



