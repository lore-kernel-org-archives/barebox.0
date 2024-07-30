Delivery-date: Tue, 30 Jul 2024 12:18:25 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sYjw1-004Qn0-0q
	for lore@lore.pengutronix.de;
	Tue, 30 Jul 2024 12:18:25 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sYjw0-0000Cp-MJ
	for lore@pengutronix.de; Tue, 30 Jul 2024 12:18:25 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ZdzWPzNN1ktnLUeX4fDnTNEeLqHTmGI+Hbbd1ekUR2c=; b=YQb3Cz6yYVqgbsuDg2CARZrKRR
	qe8jJxqnwy2mhikpoGyADSGFAoMvg3eoeJNNdbHQOWujpnYGjQl6YaoavuCOA1S2+LHzQ6sACzna7
	K9BlAAoMmZL4MxP0qFWtjJuzY4lBi0choYG3pwJx5f5kWXXZWlHkRJTkBJ9bf6GCxk3ZBp6DvWuKf
	U2hRD4UFe2vvcbOmdAN/qygdw9K+lZT2dha747XnO357XqOu+2yhcvQpD7paDCdX5EFpYwO4/8J3B
	CB5lGKJXrO7qqMvoucgCKOKG4CeB5LUvp8CiJ+mHRQuxGWbkjrFPPRGD5bLSDH6SS8V0TwpxHnT74
	qQLvXkeQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYjvV-0000000EgkK-2MNH;
	Tue, 30 Jul 2024 10:17:53 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYjvR-0000000Egir-0e10
	for barebox@lists.infradead.org;
	Tue, 30 Jul 2024 10:17:51 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sYjvO-0008UF-R2; Tue, 30 Jul 2024 12:17:46 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sYjvO-003GCq-Cj; Tue, 30 Jul 2024 12:17:46 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sYjvO-009yjq-12;
	Tue, 30 Jul 2024 12:17:46 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240730083451.2203330-1-a.fatoum@pengutronix.de>
References: <20240730083451.2203330-1-a.fatoum@pengutronix.de>
Message-Id: <172233466631.2378343.8900994932274321429.b4-ty@pengutronix.de>
Date: Tue, 30 Jul 2024 12:17:46 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240730_031749_231898_9165AFF7 
X-CRM114-Status: UNSURE (   8.81  )
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
Subject: Re: [PATCH v3 1/2] console: add new CONSOLE_ACTIVATE_ALL_FALLBACK
 option
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 30 Jul 2024 10:34:50 +0200, Ahmad Fatoum wrote:
> We already have three CONSOLE_ACTIVATE options and every one of them has
> drawbacks:
> 
>   - ACTIVATE_ALL: May write barebox log to external devices like MCUs
>     that don't expect it
> 
>   - ACTIVATE_FIRST: Not applicable for most systems that probe from
>     device tree, where the order of probe is not necessarily fixed,
>     so what console is first may change over updates
> 
> [...]

Applied, thanks!

[1/2] console: add new CONSOLE_ACTIVATE_ALL_FALLBACK option
      https://git.pengutronix.de/cgit/barebox/commit/?id=6b01a6c7d14d (link may not be stable)
[2/2] common: clarify help text for CONFIG_CONSOLE_ACTIVATE_* options
      https://git.pengutronix.de/cgit/barebox/commit/?id=eb00dd84d698 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



