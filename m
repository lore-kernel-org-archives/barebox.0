Delivery-date: Thu, 11 Jun 2026 12:12:24 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wXcOe-004fEI-1w
	for lore@lore.pengutronix.de;
	Thu, 11 Jun 2026 12:12:24 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wXcOb-0003ld-OW
	for lore@pengutronix.de; Thu, 11 Jun 2026 12:12:24 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xzSnozlYsMbLUUk6dJk6he5iTgld7mTPFVaguMismik=; b=A0rCl4d7bR4I0x7XVOo56Z5re/
	KkdHy7iwf/GlwBzOHLYJmnDWaR8kLXhKYePUOdXAwoN4VZW0chdb4q88ePXiNDH7LrfGwtmrQy8pr
	gFsallIsn4ml7Grp1W9AQ1d57rtM+cMghAcEKyDq3glEYumUEeWAbZdyb0tbl+ZhJLty6Ugc/8mI3
	2oRXYyiHbX/nAbwkuWYabji0b3Cnj3DIYff/jiKv+ETKfnHeBOdvnyZFRrI0hRe+ZDHm1DYPsgU1q
	QP6KS7SgDKVIINewEa5NiIXAyux0VeUbN+Al1x0VLVrRU0QRvDmFvR6k70Txhogs7YSepzTA1XS4+
	HZFWATBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXcNI-00000009CIJ-27Tw;
	Thu, 11 Jun 2026 10:11:00 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXcNE-00000009CFf-2pWh
	for barebox@lists.infradead.org;
	Thu, 11 Jun 2026 10:10:58 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wXcNB-0003QP-Hp; Thu, 11 Jun 2026 12:10:53 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wXcNB-002CU7-1c;
	Thu, 11 Jun 2026 12:10:53 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wXcNB-00000002lQH-1oih;
	Thu, 11 Jun 2026 12:10:53 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
Cc: Michael Tretter <mtr@pengutronix.de>
In-Reply-To: <20260609124050.254522-1-s.hauer@pengutronix.de>
References: <20260609124050.254522-1-s.hauer@pengutronix.de>
Message-Id: <178117265342.658909.1719860833490607872.b4-ty@pengutronix.de>
Date: Thu, 11 Jun 2026 12:10:53 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260611_031056_718065_BBE59228 
X-CRM114-Status: UNSURE (   6.50  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: rockchip: tfa: pass NULL fdt when there is none
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 09 Jun 2026 14:40:49 +0200, Sascha Hauer wrote:
> We pass an address to the TF-A even when there is none. The FDT could be
> absent when either CONFIG_ARCH_ROCKCHIP_ATF_PASS_FDT is disabled or
> copying it to the scratch area fails. Instead of passing an invalid FDT
> in this case, explicitly pass a NULL pointer.
> 
> 

Applied, thanks!

[1/1] ARM: rockchip: tfa: pass NULL fdt when there is none
      https://git.pengutronix.de/cgit/barebox/commit/?id=9d178f370b25 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



