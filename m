Delivery-date: Fri, 13 Mar 2026 16:00:03 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w13zf-000FIC-1F
	for lore@lore.pengutronix.de;
	Fri, 13 Mar 2026 16:00:03 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w13ze-0002TT-Pc
	for lore@pengutronix.de; Fri, 13 Mar 2026 16:00:03 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=iisiyVPXjW52ShAkF35xTTg0+9RChtenyfWZNUJLhUk=; b=dqbD3TeWuGKhSX32jypu/+f95y
	Sv14BFwpcSg6Y1r9QPaWAOCxKjDMttR+TO65WWY96s0QXw0St2y7mvkPhbtWH1QbFgEvZFlWpWBMg
	YkQAuS0mTJvWxfsJ9ocXmGf2dCwUhFbP7kBnAcUATxwvWbFyqdCkx+SIJ9/6COaImch4+z4tdeP6y
	tHssJo4qUsPTQMGaIapCLYgKoNKTJuAC18KTQHJI8JtwdQn8A+ngFAo0dEMUU9xhJb8TpKDDKApzJ
	2oTNYgxYHPshoOYeeNmNd8sxksIiyznloNf3ehGid52X45V3KcWK0ctLYSm8iShPQ/61xyt352p7I
	LWX1hPIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w13zE-00000000UON-3XkM;
	Fri, 13 Mar 2026 14:59:36 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w13zD-00000000UOF-2yl5
	for barebox@bombadil.infradead.org;
	Fri, 13 Mar 2026 14:59:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=iisiyVPXjW52ShAkF35xTTg0+9RChtenyfWZNUJLhUk=; b=AYIPef7bK0vwBLNpvFb0MrtR6u
	4SGKTXYo+EinddOi3HQhuElPu1Z/n3Zsd9R2eh3Vru7ssB9vBkSi0knDvlRgXz6bbeFSyCbqABU8A
	cKLpjhdOWMIs4YfC3SpEtUDxnB2+M5+Ljn2XsAFmYj9tlpp949diWNEFo8qSnH5VzxHkDMqNZVRUL
	0Fxn+gXkZPf3F8xC/Px4F4OYQrTbhh8QzjvfabXenif8R0ZP8nOl9Z04lBDf6blsDbFc8dMurtJC6
	NyDE7jPLxYgAb2oqfWPVtVsdO0joO9LuPwI4Uze6LZNH5Cf7HVIUSIHedZa/O8l1SdzunleKmhkB5
	RPtkG7SA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w13z8-00000003bzT-0N4e
	for barebox@lists.infradead.org;
	Fri, 13 Mar 2026 14:59:34 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w13z7-0002LI-LW; Fri, 13 Mar 2026 15:59:29 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w13z7-00063p-1P;
	Fri, 13 Mar 2026 15:59:29 +0100
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w13z7-000000011RN-1aqT;
	Fri, 13 Mar 2026 15:59:29 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, 
 Robin van der Gracht <robin.van.der.gracht@protonic.nl>
Cc: David Jander <david@protonic.nl>
In-Reply-To: <20260310152433.786340-1-robin.van.der.gracht@protonic.nl>
References: <20260310152433.786340-1-robin.van.der.gracht@protonic.nl>
Message-Id: <177341396937.243831.14875159372667577232.b4-ty@pengutronix.de>
Date: Fri, 13 Mar 2026 15:59:29 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260313_145932_241738_D8171961 
X-CRM114-Status: UNSURE (   8.75  )
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
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 0/8] ARM: boards: protonic-mecsbc: Generalization
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 10 Mar 2026 16:24:25 +0100, Robin van der Gracht wrote:
> This patch series makes changes to the existing protonic-mecsbc
> board support. These changes pave the way for supporting multiple
> simular products with the same board support code. We'll be adding
> products with a RK3562 chipset to the mecsbc board code.
> For that we'll change the board name to be more generic: protonic-rk356x
> 
> Regards,
> Robin
> 
> [...]

Applied, thanks!

[1/8] ARM: boards: Rename protonic-mecsbc to protonic-rk356x
      https://git.pengutronix.de/cgit/barebox/commit/?id=577a9815e27f (link may not be stable)
[2/8] ARM: boards: protonic-rk356x: Remove VIN measurement
      https://git.pengutronix.de/cgit/barebox/commit/?id=5a76b17d0686 (link may not be stable)
[3/8] ARM: boards: protonic-rk356x: Use devicetree alias for saradc
      https://git.pengutronix.de/cgit/barebox/commit/?id=538829c279e8 (link may not be stable)
[4/8] ARM: boards: protonic-rk356x: Configure ADC and channels in model data
      https://git.pengutronix.de/cgit/barebox/commit/?id=1fc631f40507 (link may not be stable)
[5/8] ARM: boards: protonic-rk356x: Move mecsbc code to model init function
      https://git.pengutronix.de/cgit/barebox/commit/?id=3c7614aec191 (link may not be stable)
[6/8] ARM: boards: protonic-rk356x: Use rockchip_bbu_mmc_register
      https://git.pengutronix.de/cgit/barebox/commit/?id=cf4595d627e4 (link may not be stable)
[7/8] ARM: boards: protonic-rk356x: Move bbu setup to device late init
      https://git.pengutronix.de/cgit/barebox/commit/?id=907b0d0df8ec (link may not be stable)
[8/8] ARM: boards: protonic-rk356x: Read board serial and MAC address from eMMC
      https://git.pengutronix.de/cgit/barebox/commit/?id=f40b2fdc60b2 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



