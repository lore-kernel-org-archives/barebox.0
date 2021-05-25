Delivery-date: Tue, 25 May 2021 07:51:30 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1llPyU-0007Oq-54
	for lore@lore.pengutronix.de; Tue, 25 May 2021 07:51:30 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1llPyS-00014D-Ow
	for lore@pengutronix.de; Tue, 25 May 2021 07:51:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=8BOCZ+mXRSRRPIOgC/tPzsGVtH7DEAPY0JxdgZPmcTA=; b=0fdNim5EO6BOvo
	2dlewEceeKbMR4Pd3IpGEw8PTPGG2s3ek1DmvQWTCdslDgnxvSgZ7ig8KoMz37mD+DRXctMtO3GDQ
	9KCtaIUBpG2oKcPOYZcyaxRbIjMcnMSqed+wjoQgu62zPMgbdhIIKFEWD33nKxP1G4Vq+//6ugqfj
	VhcD2dBlXw1STqYEpqbXuU/oRfCLuOkTA8sdkTsxJfIHkBxbHyg86QRZuSJ/Ja2Mb4RG6yAa3jQ4r
	M6wSwMVLS+Slgg8cgzVE5bZdokcAwQjTZt5tQzIxILPUPau2LtW6oWCaKItRUKHeny611rXqX2qvR
	Ahz3eMY4VZBeDhfG+HVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1llPxK-003U0K-RL; Tue, 25 May 2021 05:50:18 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1llPxF-003TzW-K1
 for barebox@lists.infradead.org; Tue, 25 May 2021 05:50:14 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1llPxE-0000nf-C4; Tue, 25 May 2021 07:50:12 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1llPxE-0002PI-3P; Tue, 25 May 2021 07:50:12 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 25 May 2021 07:50:07 +0200
Message-Id: <20210525055007.9207-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210524_225013_679897_946A15B6 
X-CRM114-Status: UNSURE (   9.43  )
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
Cc: Michael Olbrich <m.olbrich@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: i.MX: nitrogen6x: delete wrong memory node from dts
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The nitrogen6x comes in different memory configurations. Remove the
hardcoded 1G memory node from the upstream device tree.
This fixes booting the 2G variants which otherwise complain with:

CRITICAL: mmu: Critical Error: Can't request SDRAM region for ttb at 8ffe4000

Reported-by: Michael Olbrich <m.olbrich@pengutronix.de>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Tested-by: Michael Olbrich <m.olbrich@pengutronix.de>
---
 arch/arm/dts/imx6q-nitrogen6x.dts | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/dts/imx6q-nitrogen6x.dts b/arch/arm/dts/imx6q-nitrogen6x.dts
index e4a6a6c29e..14f7ba2190 100644
--- a/arch/arm/dts/imx6q-nitrogen6x.dts
+++ b/arch/arm/dts/imx6q-nitrogen6x.dts
@@ -14,3 +14,5 @@
 #include <arm/imx6q-nitrogen6x.dts>
 #include "imx6q.dtsi"
 #include "imx6qdl-nitrogen6x.dtsi"
+
+/delete-node/ &{/memory@10000000};
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

