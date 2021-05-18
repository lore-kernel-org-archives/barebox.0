Delivery-date: Tue, 18 May 2021 10:38:14 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1livF0-0003Oq-De
	for lore@lore.pengutronix.de; Tue, 18 May 2021 10:38:14 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1livEz-0000as-JN
	for lore@pengutronix.de; Tue, 18 May 2021 10:38:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=c3IrHHrDmLHF5CGQypY0cr4fhxs0mhA5vavoFzg+aeg=; b=axCefAKP7bG5c+bdddXRyz8MZe
	HTT3+B3jwJPjkeTaIaZ1hejQN8rJGeqbHpZGut4SiLHMkE/AFauO+zFiQJKSFM3iMV5F9dpIFBJmF
	MrUVGz3p/J3AnwWOuh/Qclcf6pTQODST9JMhxOHM2RdiT6PZSCZzVLIXZNHbJOVeTrxCTF63Bcd5I
	A5ydi57FEZgsnDZpENJZV+95sj1j7x78Qax6ZmAeHwEV/TrNtYcOuVhx3NZGszvqw2CLl6sfNVGqO
	ypve1WX1fk2qaahzHO8X7FBz0QV+QIUTU8+Eu/w09d3qGoXhBoFNrFDFWUP5YhReneHaZcVMaLYJf
	ol6z2Bhg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1livE7-00HZvd-HL; Tue, 18 May 2021 08:37:19 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1livE0-00HZu2-Ak
 for barebox@desiato.infradead.org; Tue, 18 May 2021 08:37:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=F5cN0WuyLdYGQdpaFEABy0+UCpJW/hnJ4s9SB9ju/Fs=; b=xknFs+oljBOQyr5kX4iQFEZSs/
 c7NwBvnPHZV65kdhLwy12CTqR2LB9rMh2YI0nINocXjcrIqlpQXPCwAaPKFPDzUMs+RALbOx5J4k1
 tRpOmrUpk9Jh2aMeN4ehJuWje3Tx+uPGxIEiragy/zfRjwftwNUFjgANQyXLFPnRr1aFuIl5GQ7jF
 Z+V2HJMxtovxz4z+sXStYB6hnImP+4Lx6+12ijcPS4dqqRpA7mM8QaNXuWTgtF5q/uwPE28gUoWJj
 WFO/FvH6TRhsNIqt8MN4Iqe2bKQGCnwNE4IpJyNdi+aKH1bGjXcha69wRkZe/F5+cUv0/rkKGKxtB
 54KE3LSw==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1livDx-00ET32-TL
 for barebox@lists.infradead.org; Tue, 18 May 2021 08:37:11 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1livDw-0000Nk-Gp; Tue, 18 May 2021 10:37:08 +0200
Received: from ore by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1livDw-000424-8G; Tue, 18 May 2021 10:37:08 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>,
 Robin van der Gracht <robin@protonic.nl>
Date: Tue, 18 May 2021 10:37:07 +0200
Message-Id: <20210518083707.15428-1-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210518_013709_968733_CDBCBA0E 
X-CRM114-Status: GOOD (  11.33  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v1] ARM: protonic: vicut1: disable on-die termination to fix
 PHY bootstrapping
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

If on-die termination is enabled, the RXC pin of iMX6 will be pulled
high. Since we already have an 10K pull-down on board, the RXC level on
PHY reset will be ~800mV, which is mostly interpreted as 1. On some
reboots we get 0 instead and kernel can't detect the PHY properly.

Since the default 0x020e07ac value is 0, it is sufficient to remove this
entry from the affected imxcfg files.

Since we get stable 0 on pin PHYADDR[2], the PHY address is changed from
4 to 0.

Reported-by: Robin van der Gracht <robin@protonic.nl>
Fixes: 00adc1e33ef8 ("ARM: add imx6 based Protonic boads")
Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 arch/arm/boards/protonic-imx6/flash-header-vicut1.imxcfg | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm/boards/protonic-imx6/flash-header-vicut1.imxcfg b/arch/arm/boards/protonic-imx6/flash-header-vicut1.imxcfg
index 9926fbf4a2..54f655c4c2 100644
--- a/arch/arm/boards/protonic-imx6/flash-header-vicut1.imxcfg
+++ b/arch/arm/boards/protonic-imx6/flash-header-vicut1.imxcfg
@@ -114,7 +114,6 @@ wm 32 0x020e001c 0x007f007f
 
 /* RGMII config */
 wm 32 0x020e0768 0x00080000 /* 1V2 DDR IO */
-wm 32 0x020e0788 0x00000200 /* 60 Ohm ODT */
 
 /* Debug */
 wm 32 0x020e023c 0x00000005
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

