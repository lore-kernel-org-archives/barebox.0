Delivery-date: Sat, 05 Nov 2022 13:14:33 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1orI4H-00G6gf-U1
	for lore@lore.pengutronix.de; Sat, 05 Nov 2022 13:14:33 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1orI4G-0003pz-RL
	for lore@pengutronix.de; Sat, 05 Nov 2022 13:14:33 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=zwHPUkRHJQaRZnLr9hVtEtVVgDwgvV3/0MVbwjb38Uw=; b=Xkn40hIMZosZcojQupEhlGDdvD
	WddFKjR8R6e6e35fnr9fGdO6JbnaWWECkhbb6r+hbaCICwv//8XzRWOvm5101GqbJNs/M9pEUnuAP
	X0QjMoTxFlZFJPnB9DBsyY41QNcJFXcu+B1gLJi66zkN7Unc6GAUQIIS9PAc8kednbmoLGHYB1g3j
	7gUG5NB4+EQ/qh7A/NCuM246h28OwXh5Sy7rBuK0Xn3US1PzaI0ODSUqoJxdV4zeXfh/ZrItMPKmK
	FW6Tbx8UPPBhF21qqNiwOA+rPyjkQFuVD+I7NOd7VQuialp9B1gWn2545hYiFL1wq6v0LTvRaO47G
	/9tTwwSA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1orI22-006U8w-VO; Sat, 05 Nov 2022 12:12:15 +0000
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1orI1x-006U7X-VL
	for barebox@lists.infradead.org; Sat, 05 Nov 2022 12:12:11 +0000
Received: (Authenticated sender: ahmad@a3f.at)
	by mail.gandi.net (Postfix) with ESMTPSA id 49C18FF807;
	Sat,  5 Nov 2022 12:11:59 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <ahmad@a3f.at>
Date: Sat,  5 Nov 2022 13:11:54 +0100
Message-Id: <20221105121154.3716964-2-ahmad@a3f.at>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20221105121154.3716964-1-ahmad@a3f.at>
References: <20221105121154.3716964-1-ahmad@a3f.at>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221105_051210_175962_7F105C96 
X-CRM114-Status: UNSURE (   9.90  )
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
X-Spam-Status: No, score=-5.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master v2 2/2] ARM: psci: client: don't hardcode method smc in fixup
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

When barebox is booted as QEMU -kernel, PSCI will have method = "hvc",
because QEMU will act as Hypervisor. barebox handles this correctly and
will use hvc instead of smc, but of_psci_fixup() always fixes up
method = "smc" thereby breaking kernel boot.

Fix this by forwarding the method read from barebox DT into the kernel
DT.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
v1 -> v2:
  - instead of avoiding fixup, just do it with the method read from DT
  - Drop the other patches. There are nice to have, but can follow
    later
---
 arch/arm/cpu/psci-client.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/cpu/psci-client.c b/arch/arm/cpu/psci-client.c
index 613280ad3f23..f9b1c684bfe5 100644
--- a/arch/arm/cpu/psci-client.c
+++ b/arch/arm/cpu/psci-client.c
@@ -108,9 +108,9 @@ static u32 invoke_psci_fn_smc(ulong function, ulong arg0, ulong arg1, ulong arg2
 	return res.a0;
 }
 
-static int of_psci_do_fixup(struct device_node *root, void *context)
+static int of_psci_do_fixup(struct device_node *root, void *method)
 {
-	return of_psci_fixup(root, *(u32 *)context, "smc");
+	return of_psci_fixup(root, version, (const void *)method);
 }
 
 static int __init psci_probe(struct device_d *dev)
@@ -156,7 +156,7 @@ static int __init psci_probe(struct device_d *dev)
 		 version >> 16, version & 0xffff);
 
 	if (actual_version != of_version)
-		of_register_fixup(of_psci_do_fixup, &version);
+		of_register_fixup(of_psci_do_fixup, (void *)method);
 
 	ret = poweroff_handler_register_fn(psci_poweroff);
 	if (ret)
-- 
2.37.2



