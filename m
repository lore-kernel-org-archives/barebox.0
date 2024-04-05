Delivery-date: Fri, 05 Apr 2024 12:41:26 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rsh0g-00ChEg-01
	for lore@lore.pengutronix.de;
	Fri, 05 Apr 2024 12:41:26 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rsh0f-0005gj-Ec
	for lore@pengutronix.de; Fri, 05 Apr 2024 12:41:25 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=yuPUwnV+3zb9B+mxliEm7s0UpX7u8jDNzFMLqD/DdU4=; b=UpA/c3jjBuHXhPUcs8Nzp0F3FM
	mheh8+Sd/FDhV1G4GLNH6dPuDlkAyP4jtsRqDGaQ/0aC3vVA2RwhlR1c+l9qRyiDjnqQl44eod3Hn
	2JvRjtwWh3Z16TdHQ+13qEaoW7IT3OEbkQf9kUyi+msUKYoyLMoGD43DZuaVYrS8GHm4/v27fF0tb
	NipaPSDPK41FMu9nwgVodfPsoTqO4TvGf1P4BEqa/t4Fe7lWLhauZ2HvO1kliazHhnWntOOJ/Z506
	afABdHeu36f7WIoBUU9x1CvhnQp/JqUsngCtfvs6SbY307+NdfEPw3S23l78jWb9LSLJiHT3oQDTf
	577jtVDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsh06-00000006TyQ-41eh;
	Fri, 05 Apr 2024 10:40:50 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsh03-00000006TxV-2ErT
	for barebox@lists.infradead.org;
	Fri, 05 Apr 2024 10:40:49 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rsh01-00058Q-Hg; Fri, 05 Apr 2024 12:40:45 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rsh01-00AYAJ-54; Fri, 05 Apr 2024 12:40:45 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rsh01-00CiJ9-0K;
	Fri, 05 Apr 2024 12:40:45 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240404102623.1008974-1-a.fatoum@pengutronix.de>
References: <20240404102623.1008974-1-a.fatoum@pengutronix.de>
Message-Id: <171231364509.3029525.7284825235059762645.b4-ty@pengutronix.de>
Date: Fri, 05 Apr 2024 12:40:45 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240405_034047_625513_674F4A10 
X-CRM114-Status: UNSURE (   9.03  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] ARM: dts: add common bootstate.dtsi
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 04 Apr 2024 12:26:22 +0200, Ahmad Fatoum wrote:
> For use by at least the LXA MC-1, add a bootstate definition with the
> minimal set of variables needed for bootchooser.
> 
> We add this to a generic location, so it may be used by other boards as
> well.
> 
> 
> [...]

Applied, thanks!

[1/2] ARM: dts: add common bootstate.dtsi
      https://git.pengutronix.de/cgit/barebox/commit/?id=1e778c610dd4 (link may not be stable)
[2/2] ARM: stm32mp: lxa-mc1: add state description
      https://git.pengutronix.de/cgit/barebox/commit/?id=9dd40f0d077d (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



