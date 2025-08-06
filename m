Delivery-date: Wed, 06 Aug 2025 06:55:42 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujWBi-007Wot-0a
	for lore@lore.pengutronix.de;
	Wed, 06 Aug 2025 06:55:42 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujWBh-000559-Iy
	for lore@pengutronix.de; Wed, 06 Aug 2025 06:55:41 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=jYfu1uJhqCvfVGlNlPMJ789LAPUhwcccCifgfSDaVZQ=; b=nnppFPKzE/EjBoXlMIByCBaKiL
	eJek4drNawETIFusPbaEL67fQZOtuDRUFPj6K2e9NCHupcuXqZ0aSbSY7j+/l3N+M6R5VLF9wiFid
	O26ey12yL1iBn4AN7y4jsn727lXj2TWNWmeDG3JZBe2wFmwl3dWbVax0PdccEZbj+7NuCy6bOk+Tg
	/ZS/vqI8yyWTE7QmvqzgqRtBFPhdZbvxdVGA6qjR2bE2KwFSDf63UHdiihRnLOWSbdVSstFTn58eH
	4nx6FGqBc3Xswnt9UX6AFMfee4ysBq07ZpTL3o6osZDAq1HGcodjz9WhKhpnLflpwlGZVTFPMtExw
	JRdUEfXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujWB3-0000000EIPL-21Wb;
	Wed, 06 Aug 2025 04:55:01 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujWB0-0000000EIOf-0dsF
	for barebox@lists.infradead.org;
	Wed, 06 Aug 2025 04:54:59 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1ujWAy-0004zr-Df; Wed, 06 Aug 2025 06:54:56 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1ujWAy-00C9Wg-0l;
	Wed, 06 Aug 2025 06:54:56 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1ujWAy-000eXs-0W;
	Wed, 06 Aug 2025 06:54:56 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Stefano Manni <stefano.manni@gmail.com>
In-Reply-To: <20250805134530.14763-1-stefano.manni@gmail.com>
References: <20250805134530.14763-1-stefano.manni@gmail.com>
Message-Id: <175445609615.155543.16555139228231809666.b4-ty@pengutronix.de>
Date: Wed, 06 Aug 2025 06:54:56 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250805_215458_193510_BB6C3B6D 
X-CRM114-Status: UNSURE (   4.74  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] mtd: nand: add manufacturer ISSI
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 05 Aug 2025 15:45:29 +0200, Stefano Manni wrote:
> 


Applied, thanks!

[1/1] mtd: nand: add manufacturer ISSI
      https://git.pengutronix.de/cgit/barebox/commit/?id=16c355edf21d (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



