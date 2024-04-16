Delivery-date: Tue, 16 Apr 2024 12:24:59 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rwfzn-003DEt-2Q
	for lore@lore.pengutronix.de;
	Tue, 16 Apr 2024 12:24:59 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rwfzn-0002sk-6T
	for lore@pengutronix.de; Tue, 16 Apr 2024 12:24:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=zfZzirAiH1OqgKrYBs+cZVugJSEzlULYsqOvg4QOSAQ=; b=Wa8cFHcMhYSZv31gVyEH6GAlG8
	FNNXJgLtND4qa6Rm0zM66oFW87H/d51toV9VJeV1z1Ns0uc5G6IX/ZU3sslyZpE8dxsU6tUs+ksPS
	5fIUwYGE4nH7Hjrrf6mii67NJcSM54EZCPt5715Al5dHAxjx5I1uoXZqywch8WLrBoUcxn38tAAqz
	4aHliL8NOCbVt/4czlxxpNqM+fympBZrxg27oVYjODoy2J/MiJWOEs81kVwyQl1xGVINkjvAhcOZG
	RnuP1VK64LLWYOE9FdDBa3IQZq0zlJDsN4Wxl4cL3zB5vrBt7EknUhJuXKzeDBvL+YPd09hgHuZsy
	U30iiu2g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwfzL-0000000Bldv-1AeH;
	Tue, 16 Apr 2024 10:24:31 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwfzG-0000000Blcr-04wc
	for barebox@lists.infradead.org;
	Tue, 16 Apr 2024 10:24:29 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rwfzE-0002EN-RR; Tue, 16 Apr 2024 12:24:24 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rwfzE-00Caj2-F9; Tue, 16 Apr 2024 12:24:24 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rwfzE-00AN3i-1K;
	Tue, 16 Apr 2024 12:24:24 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240415053137.368391-1-a.fatoum@pengutronix.de>
References: <20240415053137.368391-1-a.fatoum@pengutronix.de>
Message-Id: <171326306440.2471835.4588635887684866367.b4-ty@pengutronix.de>
Date: Tue, 16 Apr 2024 12:24:24 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240416_032426_125141_E46333C7 
X-CRM114-Status: UNSURE (   9.54  )
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
X-Spam-Status: No, score=-6.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH master] gpio: rockchip: fix support for RK3588/RK3566
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 15 Apr 2024 07:31:37 +0200, Ahmad Fatoum wrote:
> The GPIO controller on newer Rockchip SoCs isn't compatible with the
> older ones. Back when GPIOv2 support was added, RK3568 was the only
> SoC supported using it, but since then support for the very similar
> RK3566 as well as the newer RK3588 has followed, but the driver wasn't
> extended to support them.
> 
> As GPIOv2 controllers have an identification register, start checking it
> like Linux does and use that to detect whether we have a GPIOv2 or GPIOv1.
> 
> [...]

Applied, thanks!

[1/1] gpio: rockchip: fix support for RK3588/RK3566
      https://git.pengutronix.de/cgit/barebox/commit/?id=ff8547d924aa (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



