Delivery-date: Fri, 16 Jan 2026 17:07:42 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vgmMQ-00213V-37
	for lore@lore.pengutronix.de;
	Fri, 16 Jan 2026 17:07:42 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vgmMP-0005Wy-4q
	for lore@pengutronix.de; Fri, 16 Jan 2026 17:07:42 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=sXZ94zxN9AWCpNz9c4rbHAh0gFnfTsl5B1WYIEgiAZY=; b=kTwoUcsZKW9HiT54NOfFoiyLO6
	ZIsIGEaWwItJJVRCjDdg0TPx0xRmz0LeafPe3Wmy83ZyeUMkb2VAxMLatxHMXfJa3aTDAYH3HzuIO
	WXp7DajgYJklBhw7ki9X0t/TwAOOhAOrfuXxIC/cHUCR+WJv3xyRMVQI8iMDQ+nSreW+9ZolYJbr/
	jYOglRvLWtaceb12bnebm4Ji49RD7N0GKQyFDY6yQ6GS4IEVLUxURLOOZEI/YW3GDGu9CdZZ6hHym
	4Z4WE8F+Mo6Jm70NS0sxSE/UFkw/sHSY9CnR+geFVvMAKMcRjGUswOr8J9y97anIwlGzuv+Mu+uOx
	qvPiE6mg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgmLq-0000000EQ0R-1mCK;
	Fri, 16 Jan 2026 16:07:06 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgmLm-0000000EPv1-1uAu
	for barebox@lists.infradead.org;
	Fri, 16 Jan 2026 16:07:03 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1vgmLj-0004sd-V1; Fri, 16 Jan 2026 17:07:00 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: David Dgien <dgienda125@gmail.com>,
	Ahmad Fatoum <a.fatoum@barebox.org>
Date: Fri, 16 Jan 2026 17:06:30 +0100
Message-ID: <20260116160654.3981425-8-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260116160654.3981425-1-a.fatoum@barebox.org>
References: <20260116160654.3981425-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260116_080702_484772_D94885A0 
X-CRM114-Status: UNSURE (   8.77  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 07/13] pci: ecam: enable build as module
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The driver would be buildable as module, if only we marked it so in the
Kconfig.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 drivers/pci/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/pci/Kconfig b/drivers/pci/Kconfig
index 8f37805d71ca..f8e60c4ea59e 100644
--- a/drivers/pci/Kconfig
+++ b/drivers/pci/Kconfig
@@ -68,7 +68,7 @@ config PCI_EFI
 	select PCI
 
 config PCI_ECAM_GENERIC
-	bool "Generic ECAM-based PCI host controller support"
+	tristate "Generic ECAM-based PCI host controller support"
 	select OF_PCI
 	select PCI
 	help
-- 
2.47.3



