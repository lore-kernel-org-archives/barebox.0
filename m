Delivery-date: Tue, 19 May 2026 16:36:50 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wPLYw-001WfB-2v
	for lore@lore.pengutronix.de;
	Tue, 19 May 2026 16:36:50 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wPLYw-0005dn-AG
	for lore@pengutronix.de; Tue, 19 May 2026 16:36:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=XA9B5c1dAAfx+oAvfK4ib/8nIW6xCxOnT8zmI+Ft/Ek=; b=caXQZ+4OwuoQqvmaR04OIM2RWh
	wQVP/dIv8JK+6xRJDhc5xgGAU6sheJJmTttQyws9pVSLM4Q8Gw46/5vWZbZOkEXONMO+QHp1MnQb+
	lm85qZgSub0/Lxu2xpCzkHiQDBXao5yD9CxqEH/eamcnUI4cNClGjk8QtxdLOlhkKMe9UotSOtB84
	2VpoFi9yFKFmbuqOx1s9EsipZFj9rR2HIFhqpsKDgW43bvzUrWN3cyOgE1f0qyGJUGd/+aDFoZ3A6
	XIiG/fIrAGKOJhSbaHeKj3bULQXy3xJ01LNAGNxiq7t1dooANSXdC8VyORgHDjWGIZA841sONjRW1
	4vmENLKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPLXs-00000001qyj-2qSu;
	Tue, 19 May 2026 14:35:44 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPLXk-00000001quk-0ngN
	for barebox@lists.infradead.org;
	Tue, 19 May 2026 14:35:41 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wPLXi-0005SL-JM; Tue, 19 May 2026 16:35:34 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wPLXh-000mMf-39;
	Tue, 19 May 2026 16:35:34 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wPLXi-000000062CK-21MP;
	Tue, 19 May 2026 16:35:34 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
Cc: Sascha Hauer <sascha@saschahauer.de>
In-Reply-To: <20260519141502.1427529-1-s.hauer@pengutronix.de>
References: <20260519141502.1427529-1-s.hauer@pengutronix.de>
Message-Id: <177920133447.1438321.15102870515440506230.b4-ty@pengutronix.de>
Date: Tue, 19 May 2026 16:35:34 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260519_073536_255731_CE2BBE31 
X-CRM114-Status: UNSURE (   5.61  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] mci: sdhci: propagate tuning failures from
 sdhci_execute_tuning()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 19 May 2026 16:15:00 +0200, Sascha Hauer wrote:
> sdhci->tuning_err is set but never used. Drop it and return the tuning
> error directly from sdhci_execute_tuning(). With this we can actually
> return tuning errors instead of silently ignoring them.
> 
> 

Applied, thanks!

[1/2] mci: sdhci: propagate tuning failures from sdhci_execute_tuning()
      https://git.pengutronix.de/cgit/barebox/commit/?id=85995b4d5475 (link may not be stable)
[2/2] mci: sdhci: drop unused re-tuning timer plumbing
      https://git.pengutronix.de/cgit/barebox/commit/?id=e8e06fc1608a (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



