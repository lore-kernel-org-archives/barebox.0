Delivery-date: Wed, 03 Sep 2025 19:16:20 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1utr5p-007j4I-0q
	for lore@lore.pengutronix.de;
	Wed, 03 Sep 2025 19:16:20 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1utr5o-00028l-4X
	for lore@pengutronix.de; Wed, 03 Sep 2025 19:16:20 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=seDN5R58cP/pakZ2iy0el8y+/yh4iezLw7YdQrZadEE=; b=DGQv9nsxpGgYl8xRcTgYdhy/IV
	w6S+lDpOe8vhXUZS+pQaPpoj7PsbkNarUSWzuhJu8+Iri1j6oAOZEMKF6XWhb440S+Md7RbDPYeXy
	gQ32c5fc+U7XPo7SRjIDmaLEn9UC69atvvo21lFWwg8tXR2u7+Q9rjnj1r/XfnuSqJU4wpp15rzd6
	6JQvXN5v2hZDr/5M8K6RwFTv5urBWNL8CO0xlXLzsgzF6SI3YQstkLDrI4BzWGY/jj1QBT02/kV6f
	EK04a6ak6tqXYLbvhEaAxr6N3Oxv2NMdlFN1+X0laTVFuLg9veerVyLn5E/jCBW5gZOEeN3HSHvy1
	gqRHT31g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utr5J-00000007A5d-2KN5;
	Wed, 03 Sep 2025 17:15:49 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utnZ4-00000006bMp-0Cae
	for barebox@lists.infradead.org;
	Wed, 03 Sep 2025 13:30:19 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1utnZ2-0000Gw-BO; Wed, 03 Sep 2025 15:30:16 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1utnZ2-003ZFN-0Y;
	Wed, 03 Sep 2025 15:30:16 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1utnZ2-000000023JL-0Ss2;
	Wed, 03 Sep 2025 15:30:16 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20250903120228.3485457-1-s.hauer@pengutronix.de>
References: <20250903120228.3485457-1-s.hauer@pengutronix.de>
Message-Id: <175690621610.489322.12352776571515641657.b4-ty@pengutronix.de>
Date: Wed, 03 Sep 2025 15:30:16 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250903_063018_087603_62FF21BC 
X-CRM114-Status: UNSURE (   5.63  )
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
Subject: Re: [PATCH] openrisc: fix include file protection
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 03 Sep 2025 14:02:28 +0200, Sascha Hauer wrote:
> Fixes:
> 
> arch/openrisc/include/asm/common.h:3: error: header guard '_ASM_COMMON_H' followed by '#define' of a different macro [-Werror=header-guard]
> 
> 

Applied, thanks!

[1/1] openrisc: fix include file protection
      https://git.pengutronix.de/cgit/barebox/commit/?id=239e6faaa18b (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



