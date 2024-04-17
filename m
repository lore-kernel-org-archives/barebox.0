Delivery-date: Wed, 17 Apr 2024 08:22:52 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rwyh2-004XjO-2c
	for lore@lore.pengutronix.de;
	Wed, 17 Apr 2024 08:22:52 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rwyh2-0007Eb-9v
	for lore@pengutronix.de; Wed, 17 Apr 2024 08:22:52 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=F12+R6Td6IhidS/qrmT6tzPp9Cm/d6fZgFgfP/USxKc=; b=rX6vzXN+3vqJEiFu5d8TT3h/Vv
	bUpVfuRgXhL0Dl8UAhfORHEKEn9Y3mwoi8eHRNltip1U4LNpQ9Fqu77r8nJqzt9AMJ48zhOtK63G9
	1umqsgnPVK+Wdi7C2ywMb9Jf+nCLNi54E58GS87hczWXBFg7rpdpiPfZ/ZiS96+TJmolJhlgbE2+/
	p1MBNGZXi9pjanAP1ZcIfYxCwSzYJAv+zSehEjkm3jTzMv3BgUVIuN1T8dceqgE/GssZdUpIsTpG5
	K276MOB5LlUcESiC2zlYGuAZF11fvngf7BxBpD+4cZ2dd0P4tJG/w+x4O8ZrOp9DSlze5DDmfCHzK
	M7/TJqwA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwygi-0000000Er5Q-3eAS;
	Wed, 17 Apr 2024 06:22:32 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwyge-0000000Er4j-44qE
	for barebox@lists.infradead.org;
	Wed, 17 Apr 2024 06:22:30 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rwygV-0006gg-Rk; Wed, 17 Apr 2024 08:22:19 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rwygV-00Ck4O-FC; Wed, 17 Apr 2024 08:22:19 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rwygV-00D9oT-0Y;
	Wed, 17 Apr 2024 08:22:19 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20240416060806.1332622-1-s.hauer@pengutronix.de>
References: <20240416060806.1332622-1-s.hauer@pengutronix.de>
Message-Id: <171333493901.3135862.16365393094400095399.b4-ty@pengutronix.de>
Date: Wed, 17 Apr 2024 08:22:19 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240416_232229_045304_68974E16 
X-CRM114-Status: UNSURE (   7.35  )
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
X-Spam-Status: No, score=-5.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] mtd: nand: stm32: fix wrong regmap_bulk_read() usage
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 16 Apr 2024 08:08:06 +0200, Sascha Hauer wrote:
> Compilation of the STM32 NAND driver fails with:
> 
> error: call to '__regmap_bulk_api_changed' declared with attribute error: Last argument is now number of registers, not bytes. Fix it and include <linux/regmap.h instead
> 
> Do exactly this to make the driver compile again
> 
> 
> [...]

Applied, thanks!

[1/1] mtd: nand: stm32: fix wrong regmap_bulk_read() usage
      https://git.pengutronix.de/cgit/barebox/commit/?id=760f14774fcd (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



