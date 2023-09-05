Delivery-date: Tue, 05 Sep 2023 13:04:24 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qdTr8-004s5B-18
	for lore@lore.pengutronix.de; Tue, 05 Sep 2023 13:04:24 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qdTr6-0003Mk-2p
	for lore@pengutronix.de; Tue, 05 Sep 2023 13:04:24 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=lw7fIf+Lo0RPhO5d11XJ6AJUMuB5Kvq2l1nPVMtxMzA=; b=p29vabxc8VjluV003Y0tH1cv4I
	ftSSTCnwYEM8kZTvWqO5/IUcpss3r5y+MjWcbNrybLYyZLdfzUtY+3Gq5M6bNNmxPOC7/SqMpQQWg
	XB+FSbcA0ds9q6mXkkBFurJ4IzApocPwUUYloJdCfFglL5t/3ODmwyxo768QLF8ZM7P61a2zVJe2A
	JZuVtQWvMFz5VBkqH9De864TJ3dwFqqwmtt3ptWcQR45BL9OhoqCnkF9YaNResun6foRySjd77it4
	GS8Ie21xrpPUozN3lIE7ZgiwpXx3xPozBPBGJCpK6kHLqg9YP188izvVEIrr21rFVV1A/VcxskCSZ
	DVFBF4zQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qdTpb-005s87-1E;
	Tue, 05 Sep 2023 11:02:51 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qdTpY-005s7k-2m
	for barebox@lists.infradead.org;
	Tue, 05 Sep 2023 11:02:50 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1qdTpX-0002OK-Ik; Tue, 05 Sep 2023 13:02:47 +0200
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1qdTpX-004A84-6U; Tue, 05 Sep 2023 13:02:47 +0200
Received: from mfe by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1qdTpW-001b5w-Jm; Tue, 05 Sep 2023 13:02:46 +0200
Date: Tue, 5 Sep 2023 13:02:46 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, bst@pengutronix.de
Message-ID: <20230905110246.a6o2jyatuhisk5mq@pengutronix.de>
References: <20230904154953.2367158-1-a.fatoum@pengutronix.de>
 <20230904154953.2367158-2-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230904154953.2367158-2-a.fatoum@pengutronix.de>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230905_040248_898662_2334064A 
X-CRM114-Status: GOOD (  12.15  )
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
Subject: Re: [PATCH master 2/2] pwm: imx: enable clocks during PWM register
 accesses
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 23-09-04, Ahmad Fatoum wrote:
> This is a port of Linux commit 9f4c8f9607c3147d291b70c13dd01c738ed41faf:
> 
> | Author:     Anson Huang <anson.huang@nxp.com>
> | AuthorDate: Wed Dec 19 05:24:58 2018 +0000
> | Commit:     Thierry Reding <thierry.reding@gmail.com>
> | CommitDate: Mon Dec 24 12:06:56 2018 +0100
> |
> |     pwm: imx: Add ipg clock operation
> |
> |     i.MX PWM module's ipg_clk_s is for PWM register access, on most of i.MX
> |     SoCs, this ipg_clk_s is from system ipg clock or perclk which is always
> |     enabled, but on i.MX7D, the ipg_clk_s is from PWM1_CLK_ROOT which is
> |     controlled by CCGR132, that means the CCGR132 MUST be enabled first
> |     before accessing PWM registers on i.MX7D. This patch adds ipg clock
> |     operation to make sure register access successfully on i.MX7D and it
> |     fixes Linux kernel boot up hang during PWM driver probe.
> |
> |     Fixes: 4a23e6ee9f69 ("ARM: dts: imx7d-sdb: Restore pwm backlight support")
> |     Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> |     Signed-off-by: Thierry Reding <thierry.reding@gmail.com>
> 
> Unlike the Linux version, we make clk_ipg optional to reduce changes for
> older SoCs.
> 
> This fixes system hang during PWM access on i.MX8M and presumably i.MX7.
> 
> Reported-by: Bastian Krause <bst@pengutronix.de>
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>


