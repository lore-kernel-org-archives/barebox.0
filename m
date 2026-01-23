Delivery-date: Fri, 23 Jan 2026 08:12:13 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vjBL3-004Okb-2c
	for lore@lore.pengutronix.de;
	Fri, 23 Jan 2026 08:12:13 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vjBL2-0002TG-RN
	for lore@pengutronix.de; Fri, 23 Jan 2026 08:12:13 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=bZyMRdShULSdWtsYlENz9K1mh3A284M+qrUy3k4Q9GQ=; b=FU9qGpSinQwiMtPBk8dCpeop39
	ART3e+mGPxcPSJkAW8LFLj1MXrBgdN4dxy6/pmAYTwTfWocWE0osC2JwuG4ZNGcH7L5cxEBNxHhRd
	x75Mx3oE5CFKGbtLuFrPcCXzNaO+0M/mSxb4zgce71Xf81sWSjrypjyPTUuL2zEwdCwD3fux0xU5G
	wywboZ1Ty3TDIvKV8j1cP67hTrolb96+e7YqBymiMas8FZRMwLun88hKlKyaw8p0paF+ed44eGBko
	bNeUPo3wJgcxYqg8FpS2/OO+bKXq7cDeeHS6CyPze4FPUWROSx5mr5b9J0ELswZYe3pJyEwpvcHjb
	WCn4vsCA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vjBKf-00000008Lhj-2EnG;
	Fri, 23 Jan 2026 07:11:49 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vjBKd-00000008LhA-15nF
	for barebox@lists.infradead.org;
	Fri, 23 Jan 2026 07:11:48 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vjBKb-0002L7-NY; Fri, 23 Jan 2026 08:11:45 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vjBKc-0023F6-0f;
	Fri, 23 Jan 2026 08:11:45 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vjBKb-0000000GBm6-21L5;
	Fri, 23 Jan 2026 08:11:45 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20260120155902.2752563-1-a.fatoum@pengutronix.de>
References: <20260120155902.2752563-1-a.fatoum@pengutronix.de>
Message-Id: <176915230547.3858335.519704052450611730.b4-ty@pengutronix.de>
Date: Fri, 23 Jan 2026 08:11:45 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260122_231147_302351_A3B4A761 
X-CRM114-Status: UNSURE (   7.44  )
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
Subject: Re: [PATCH master] pmdomain: rockchip: enable driver by default
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 20 Jan 2026 16:58:59 +0100, Ahmad Fatoum wrote:
> Failure to enable the driver leads to annoying warnings in the best
> case:
> 
>   WARNING: rockchip-dw-pcie 3c0000000.pcie@fe260000.of: power domain not found (ignoring)
> 
> and to hangs in the worst case. The defconfigs already enable the
> device, but it should really be default y whenever CONFIG_ARCH_ROCKCHIP=y.
> 
> [...]

Applied, thanks!

[1/1] pmdomain: rockchip: enable driver by default
      https://git.pengutronix.de/cgit/barebox/commit/?id=15df91cf2dee (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



