Delivery-date: Tue, 22 Apr 2025 17:49:06 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u7Fru-0046sx-2M
	for lore@lore.pengutronix.de;
	Tue, 22 Apr 2025 17:49:06 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u7Fru-0008HL-7D
	for lore@pengutronix.de; Tue, 22 Apr 2025 17:49:06 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=aY6tFk1j8OPEQO5S+SevlVB8F3MsGDgxBWn4BT8bJvo=; b=Z+YTcHKWg1X9+m65Vmo5269qOF
	lbf0Miw0sgmf+pr1YTNXUGQHuWbP6r06VQCC0CTsTs7Q+EADFh4FxLkqb/NqGDZi6bg7sLEY+vtj4
	xYvUCmElocomWRwL/ncLVcO135LOEogK8YEPe9rceTH2wZsydScng40x3+K6+Q+xD+pezYmGF7/sJ
	r/fmCjyeBmCzlrssRk3svEf5OJ0ljJStuiEgvNz2RzeU8Kph2BY8p6N39ZkoILpdyLrBGAHmVt+14
	IAWrbtjm6Avzqz9mkjcw1wqG1uJTeGRmSHxJwcuP+u1ByVvP2J54G2XaQcQ2j8NDzQ+cyKucUfy6d
	NhXgICAw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u7FrW-00000007n10-07bR;
	Tue, 22 Apr 2025 15:48:42 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u7Ed4-00000007V3F-0Wbh
	for barebox@lists.infradead.org;
	Tue, 22 Apr 2025 14:29:43 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u7Ed3-0007ea-0M; Tue, 22 Apr 2025 16:29:41 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u7Ed2-001ZEH-2c;
	Tue, 22 Apr 2025 16:29:40 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u7Ed2-007Fvh-2J;
	Tue, 22 Apr 2025 16:29:40 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Michael Tretter <m.tretter@pengutronix.de>
In-Reply-To: <20250411152020.2783640-1-m.tretter@pengutronix.de>
References: <20250411152020.2783640-1-m.tretter@pengutronix.de>
Message-Id: <174533218070.1728525.3487731113993054051.b4-ty@pengutronix.de>
Date: Tue, 22 Apr 2025 16:29:40 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250422_072942_163215_6AB2A0C3 
X-CRM114-Status: UNSURE (   7.57  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: rockchip: dmc: fix DRAM for sizes 16+ GiB on
 rk3588
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 11 Apr 2025 17:20:20 +0200, Michael Tretter wrote:
> RK3588 has two known memory gaps when using 16+ GiB DRAM,
> [0x3fc000000, 0x3fc500000) and [0x3fff00000, 0x400000000).
> 
> Skip both gaps when initializing the DRAM on rk3588 to avoid running
> into an exception when running memtest on an rk3588 board with 16+ GiB
> DRAM.
> 
> [...]

Applied, thanks!

[1/1] ARM: rockchip: dmc: fix DRAM for sizes 16+ GiB on rk3588
      https://git.pengutronix.de/cgit/barebox/commit/?id=8592246d5d35 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



