Delivery-date: Mon, 01 Dec 2025 11:13:52 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vQ0um-006mf1-0U
	for lore@lore.pengutronix.de;
	Mon, 01 Dec 2025 11:13:52 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vQ0ul-00056x-Gv
	for lore@pengutronix.de; Mon, 01 Dec 2025 11:13:52 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=FYTA7Ji0CQLVSpQZcWBKxx8+kEo2ZW3wdR9yZdOePKE=; b=bFk9lSo8ihZsD5paMR04Kc08Ig
	sn67N21oYMLby2VIno52gW+ghwSr18T3hieVWuLgQDMprRC/a4BhjjFGUxw4S26DYergyLSgkJ1Ta
	2BlUgXrtNEKiCej5ZUiJui1mdnR2RDx8vfMsenk1L7/Tfc3wzSqiF5Wt2GNflXWNy+BsQiEatzRNn
	AiYwYScPEGExOHVt6lFwydD1P4RE9vNlxhdjl8ZpAWDEGXDtVLOBUm+65lbc6QU8qfmNd/LsZbbWa
	bOva319LlLjNep1OUriXOlLBbyo+5WjDBnG9C6IGJMg22sM4XETjep9rukANsQjSB5x6wt6kWk742
	QrLQHtQQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQ0uO-00000003IRh-1Aym;
	Mon, 01 Dec 2025 10:13:28 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQ0uL-00000003IRC-31vc
	for barebox@lists.infradead.org;
	Mon, 01 Dec 2025 10:13:26 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vQ0uK-00052F-7E; Mon, 01 Dec 2025 11:13:24 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vQ0uK-003QVo-06;
	Mon, 01 Dec 2025 11:13:24 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vQ0uJ-00000000eOI-44XN;
	Mon, 01 Dec 2025 11:13:23 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20251128104040.1491636-1-a.fatoum@pengutronix.de>
References: <20251128104040.1491636-1-a.fatoum@pengutronix.de>
Message-Id: <176458400396.155225.4017148793879503268.b4-ty@pengutronix.de>
Date: Mon, 01 Dec 2025 11:13:23 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251201_021325_785044_D949AE7B 
X-CRM114-Status: UNSURE (   8.07  )
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
X-Spam-Status: No, score=-3.0 required=4.0 tests=AWL,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] mci: am654-sdhci: correctly configure
 SLOTTYPE_EMBEDDED
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 28 Nov 2025 11:40:39 +0100, Ahmad Fatoum wrote:
> struct am654_sdhci_plat::non_removable is set no where, so drop it in
> favor of struct mci_host::non_removable, which is actually populated by
> the MCI core to reflect the non-removable device tree property.
> 
> This aligns us with Linux behavior, but hasn't been tested on real
> hardware.
> 
> [...]

Applied, thanks!

[1/1] mci: am654-sdhci: correctly configure SLOTTYPE_EMBEDDED
      https://git.pengutronix.de/cgit/barebox/commit/?id=1d04259898e9 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



