Delivery-date: Mon, 15 Dec 2025 08:16:31 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vV2op-00Beo5-2h
	for lore@lore.pengutronix.de;
	Mon, 15 Dec 2025 08:16:31 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vV2op-00017D-0F
	for lore@pengutronix.de; Mon, 15 Dec 2025 08:16:31 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=k2gGwExpKFjmGxTXkqFYYHL/dbETu7XbYHAv5nm0h/o=; b=K9j7oVAfS6k+DMCpSBjgAY1X0R
	4LVJXYmIJf7sGZ8GZYQmGAu5DxA/u+lwwQzk+OBvsyMSKt/IWV/NpB6XAPd2nkwOVywuaG7puvtMw
	Ch4Udhai5p2hhOM2RQFbCTMM+G7rcbfIEzAEz7yX3AA0zWvjMNaeDeo1DzKessx4vDs4O31DzMeRR
	izbOk5l+WzTkShYrDtjaxU2YS/3bBo5ubZigYFCg5g6TTCaWdT2/kxDpZF+yTeL+My8Q0CVGV5y9l
	n4VvY3Lru1YNtykRLGqko97bb7x71EZqKN93tVyDmG0V/mtrmrn8o0hkGK06cJ+hHPL3QoF4lc1cL
	u03CYkEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vV2oF-00000003BjL-2igN;
	Mon, 15 Dec 2025 07:15:55 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vV2oD-00000003Biq-398X
	for barebox@lists.infradead.org;
	Mon, 15 Dec 2025 07:15:54 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vV2oC-0000zr-5h; Mon, 15 Dec 2025 08:15:52 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vV2oB-005k16-3C;
	Mon, 15 Dec 2025 08:15:52 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vV2oB-00000001117-3uNZ;
	Mon, 15 Dec 2025 08:15:51 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20251211203455.2300589-1-a.fatoum@pengutronix.de>
References: <20251211203455.2300589-1-a.fatoum@pengutronix.de>
Message-Id: <176578295192.242227.15152540116075097029.b4-ty@pengutronix.de>
Date: Mon, 15 Dec 2025 08:15:51 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251214_231553_794466_D2FC7373 
X-CRM114-Status: UNSURE (   5.97  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: mmu: include <asm/io.h> from <mmu.h>
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 11 Dec 2025 21:34:54 +0100, Ahmad Fatoum wrote:
> To make sure virt_to_phys() is always defined, include the relevant
> header.
> 
> 

Applied, thanks!

[1/1] ARM: mmu: include <asm/io.h> from <mmu.h>
      https://git.pengutronix.de/cgit/barebox/commit/?id=4f82342bc0df (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



