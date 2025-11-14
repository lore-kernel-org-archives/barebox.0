Delivery-date: Fri, 14 Nov 2025 14:00:40 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vJtPs-000uZ2-0c
	for lore@lore.pengutronix.de;
	Fri, 14 Nov 2025 14:00:40 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vJtPr-0007tP-LY
	for lore@pengutronix.de; Fri, 14 Nov 2025 14:00:40 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Syc9jkZUP1aiq9o7WSQ1kSzF17Umkmg4oVEhA3+yKPM=; b=ZyQJC8+Uh1X6RHoNySepLWgqnq
	29YlKpaSPCBtbJql6tomoz3MW1H+iQuagRkbfgckcNmwv+3mxin1b7q9quStjgfjU4I1f3DF+Cn6c
	SeQ4qbexsjgzp4R2MO7Oyj36RtKZRkRWrvl+5ifUxe0ogBBiFLgfnqE8WgNSxRMtCpFjsAKYl2aoD
	3dFXjf/b28B0LQdPMIdTfw3B4CrRH4lC8nCAA0fO0rIjvAOXErX9oXeJqYAE/M3+Aa8tIyjBIoSKb
	XuIuvbFwA6lo8aGhAED3ZfeZ/NrogKPQ1Rm+CVl5yIR/RxEvcl+zjK+96PO8hrhB4dBADPpBat2Jy
	Zbspn4ow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJtP1-0000000CDgs-2yiB;
	Fri, 14 Nov 2025 12:59:47 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJtOz-0000000CDfr-0A3b
	for barebox@lists.infradead.org;
	Fri, 14 Nov 2025 12:59:46 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vJtOv-0007ZH-SA; Fri, 14 Nov 2025 13:59:41 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vJtOv-000QQN-29;
	Fri, 14 Nov 2025 13:59:41 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vJtOw-0000000Gh0I-01E1;
	Fri, 14 Nov 2025 13:59:41 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
Cc: Michael Tretter <mtr@pengutronix.de>, 
 Alexander Shiyan <eagle.alexander923@gmail.com>
In-Reply-To: <20251028072625.2781087-1-s.hauer@pengutronix.de>
References: <20251028072625.2781087-1-s.hauer@pengutronix.de>
Message-Id: <176312518155.3977625.17978250835273333874.b4-ty@pengutronix.de>
Date: Fri, 14 Nov 2025 13:59:41 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251114_045945_080934_8D01AB08 
X-CRM114-Status: UNSURE (   8.54  )
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
Subject: Re: [PATCH v2] clk: rockchip rk3588: configure CPLL in driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 28 Oct 2025 08:26:25 +0100, Sascha Hauer wrote:
> The rk3588 CPLL should be configured to 1.5GHz and 09c87c85e0 ("ARM:
> dts: rockchip: Set CPLL frequency for RK3588") does this. It does it
> however after the assigned-clocks/assigned-clock-rates properties of the
> "rockchip,rk3588-cru" node have been evaluated which contain a setting
> of CLK_150M_SRC which is a child clock of the CPLL.  Configuring the
> CPLL after CLK_150M_SRC alters the setting of the just configured 150M
> clock again.
> 
> [...]

Applied, thanks!

[1/1] clk: rockchip rk3588: configure CPLL in driver
      https://git.pengutronix.de/cgit/barebox/commit/?id=45b4b47cc650 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



