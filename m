Delivery-date: Wed, 13 May 2026 07:52:36 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wN2WK-0019Q0-2R
	for lore@lore.pengutronix.de;
	Wed, 13 May 2026 07:52:36 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wN2WG-0004AX-DX
	for lore@pengutronix.de; Wed, 13 May 2026 07:52:36 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=jym+MgXd1iqGzMbJ8CKZHtp6Y6VsItZh3V2CBe9F1QI=; b=1j5QF33cs3+c90scvHHa1ti7vy
	DuSDzmq05S1bIvH2a/8tx2SKxvb22QA8UUA5on+H0Q8YdVfirqAxPc+5Bkd8DsBYZtlXAsRIwdSeJ
	Q06xiuHCJCR6divpuhIjMQzvo8aP1euuLobKkrFYzPKLDf1HmeRxyzowly5WiXKjQKebxEH0+7T6k
	T/u2nyuyzPQ+uFbsLHYp6JQD106hPM7BHV4QLqybRJ1bCSKf4c/sNb/YY8KX/yQ31v0+B7AdZ80Uh
	xatq0p0evzfyqkQ00v71eclz0qZZoLizZUjakbXvFeO5e1udbOyxYs3uZ65seb3HS8vgpgyuRBYMb
	Uw7oTgaQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wN2Uv-00000001NJN-04mx;
	Wed, 13 May 2026 05:51:09 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wN2Up-00000001NHX-2KCp
	for barebox@lists.infradead.org;
	Wed, 13 May 2026 05:51:07 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wN2Ul-0003mA-K2; Wed, 13 May 2026 07:50:59 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wN2Ul-000YF7-1L;
	Wed, 13 May 2026 07:50:59 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wN2Ul-0000000Gd96-1Kuz;
	Wed, 13 May 2026 07:50:59 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Michael Tretter <m.tretter@pengutronix.de>
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>
In-Reply-To: <20260512-socfpga-agilex5-dwmac-v2-1-f1008a19eb27@pengutronix.de>
References: <20260512-socfpga-agilex5-dwmac-v2-1-f1008a19eb27@pengutronix.de>
Message-Id: <177865145931.3963705.12960466146667035651.b4-ty@pengutronix.de>
Date: Wed, 13 May 2026 07:50:59 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260512_225103_592789_A9DBDD42 
X-CRM114-Status: UNSURE (   7.47  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2] ARM: dts: socfpga: AXE5-Eagle: fix phy reset
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 12 May 2026 14:42:55 +0200, Michael Tretter wrote:
> The snps,reset-gpio is a property of the Synopsys DesignWare MAC and
> belongs into the gmac node. However, this property is deprecated and
> shall be replaced by regular gpio reset at the phy.
> 
> Switch the PHY to a proper reset-gpios property.
> 
> While at it, move the reset-gpios property below the reg property.
> 
> [...]

Applied, thanks!

[1/1] ARM: dts: socfpga: AXE5-Eagle: fix phy reset
      https://git.pengutronix.de/cgit/barebox/commit/?id=320919909fd7 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



