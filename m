Delivery-date: Thu, 18 Jun 2026 09:05:23 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wa6oV-007B5Y-0O
	for lore@lore.pengutronix.de;
	Thu, 18 Jun 2026 09:05:23 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wa6oU-0005zp-HW
	for lore@pengutronix.de; Thu, 18 Jun 2026 09:05:23 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+moGlutwxCD6RLcXQe/PNwZ4XwXIhELVSer7LHw51r8=; b=w7wJ9CmJu4EQ+/Egc9dykd7E5v
	CRgE+RuGQDyPcJC5K+t5zgSkT6LXA82sU0KWezFjPflkwKnN8D7k9BGYJ1mw4UAWX3cR7tdDrJcHy
	tEnCfBPu4A8E13Q9oAIBZA+QKrzFE5hU25GSlL1Nbs8N1vBY2fpRc6cmVq+8ZGHXcNmqVvfwbXJxU
	Zixg3kT8zCaJXhRzetxIhl0RAZShIW+kW82ME6EmpyrgIQuKhN0jmJSRV3/nJarqXUtcelTnuqLUL
	IwQ1DuTvNP9VNTSfHfqWny4Iuy8eeOwqQU38FyJvLXgDO/z5f51CDLLZqWosAF6O+zpM5RZ1JWamT
	MOWellrw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wa6nV-00000000jNL-0uii;
	Thu, 18 Jun 2026 07:04:21 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wa6nS-00000000jLs-0iFi
	for barebox@lists.infradead.org;
	Thu, 18 Jun 2026 07:04:19 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 75F3020071A;
	Thu, 18 Jun 2026 09:04:16 +0200 (CEST)
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wa6nQ-003Oqy-1J;
	Thu, 18 Jun 2026 09:04:16 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wa6nQ-0000000D1Bm-1SRZ;
	Thu, 18 Jun 2026 09:04:16 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, 
 Johannes Schneider <johannes.schneider@leica-geosystems.com>
In-Reply-To: <20260617213554.1169678-1-johannes.schneider@leica-geosystems.com>
References: <20260617213554.1169678-1-johannes.schneider@leica-geosystems.com>
Message-Id: <178176625634.3102791.3303388537011402258.b4-ty@pengutronix.de>
Date: Thu, 18 Jun 2026 09:04:16 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260618_000418_369355_88B8BDE6 
X-CRM114-Status: UNSURE (   7.09  )
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
Subject: Re: [PATCH] mci: imx-esdhc-pbl: clear stale INT_STATUS before
 first PBL transfer
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 17 Jun 2026 21:35:54 +0000, Johannes Schneider wrote:
> PBL load_bl33 on i.MX8MM takes roughly three times longer than on
> i.MX8MP for what turned out to be an asymmetric code path in this
> driver rather than a hardware difference. The two PBL load wrappers
> shared imx_esdhc_init() but diverged on whether they issue any
> command before the bulk CMD18:
> 
>   imx8mp_esdhc_load_image() goes through esdhc_bootpart_active()
>   to pick a read offset, which internally issues CMD8 (SEND_EXT_CSD).
>   esdhc_send_cmd() clears SDHCI_INT_STATUS as a side effect.
> 
> [...]

Applied, thanks!

[1/1] mci: imx-esdhc-pbl: clear stale INT_STATUS before first PBL transfer
      https://git.pengutronix.de/cgit/barebox/commit/?id=b023a62e238a (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



