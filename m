Delivery-date: Tue, 05 Aug 2025 11:34:25 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujE3t-007FRu-36
	for lore@lore.pengutronix.de;
	Tue, 05 Aug 2025 11:34:25 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujE3q-0003Fg-Mo
	for lore@pengutronix.de; Tue, 05 Aug 2025 11:34:25 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=oZM/r5ZhDpBhqKLxK9x6z8ohYiCF4taoZ3+y+ZRKv7o=; b=5Eikq1B52HfvXkj7VQHh4iz6I1
	l5r9YBHwgsocm6W9yrndNqIGuY4/fu+jHeADVuCZtyTTMbmIg2lSfWgJezU9lK0opCXPk8USjQRch
	8s66gXbbtf+5lZIlNipJ8hFvtdnrzwl582k9z8wEJrRgf9MTtXLn8diFqrqqFENi1KdympwpR7I/N
	PRY+HyJvmVJSDyR/J5JOY54W7QgI4HrR3I3CzyZeSg2qeGh8lgB4Pis5PCMmIJgn0BbXlexcx6ZB0
	CqtCatwZ34N+yN/4iGhhjqGbJDkSKK3N8Gg0168ejU3abduCcF6CBw8SUanWh4CrXtGoDtyXgbjFP
	1MRZNulQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujE3B-0000000CMe9-1sP0;
	Tue, 05 Aug 2025 09:33:41 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujDgh-0000000CJlD-0oCc
	for barebox@lists.infradead.org;
	Tue, 05 Aug 2025 09:10:28 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1ujDgg-0000Gt-2k; Tue, 05 Aug 2025 11:10:26 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1ujDgf-00C17J-2u;
	Tue, 05 Aug 2025 11:10:25 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1ujDgf-00EiAY-2i;
	Tue, 05 Aug 2025 11:10:25 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 =?utf-8?q?Ulrich_=C3=96lmann?= <u.oelmann@pengutronix.de>
In-Reply-To: <20250711064232.403961-1-u.oelmann@pengutronix.de>
References: <20250711064232.403961-1-u.oelmann@pengutronix.de>
Message-Id: <175438502584.3506339.18149337735674878045.b4-ty@pengutronix.de>
Date: Tue, 05 Aug 2025 11:10:25 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250805_021027_235735_F0AE7DAA 
X-CRM114-Status: UNSURE (   4.98  )
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
Subject: Re: [PATCH] ARM: i.MX: Kconfig: fix typos
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 11 Jul 2025 08:42:32 +0200, Ulrich Ölmann wrote:
> 


Applied, thanks!

[1/1] ARM: i.MX: Kconfig: fix typos
      https://git.pengutronix.de/cgit/barebox/commit/?id=0cc4e584f082 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



