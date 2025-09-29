Delivery-date: Mon, 29 Sep 2025 15:52:01 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v3EIL-002Qud-0Q
	for lore@lore.pengutronix.de;
	Mon, 29 Sep 2025 15:52:01 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v3EIK-0004Go-Kv
	for lore@pengutronix.de; Mon, 29 Sep 2025 15:52:01 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=CPf50psuGWUkxaoMpHe0wrsZ46fhuw0bzpiZVMiN2SA=; b=M77GczlqKE1lL5AI9xwW7eWRhq
	PRFnVDaAhuMFSgwpaG8beO57vRTzX7EjuhfQc2ayspxqDD4PIQYmo22/ydbQ4w+w1mohRPILMh85O
	tQZFcd5I/PKU30FAfXMcPLNNWXD0woBZurc9u0L/9amLT922aW+cq/lzAsatc0ofd2MBA3oPutmdY
	X9aBgOhw0To7Vp6CkJ51HJe3KnIRskEMbQs3dKmE8Xz5YNX/RZuCqxXTUYPLUcg9IDJcnjEZtx0u0
	1jH84zaKR8wnxf/JdDG3pjjOX8oHCoPqLMey7QedX8fUeC3Y5ZoJESJIoVLDlCHzA5IZTV/3ze1iB
	SnCVliXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v3EHc-00000002aVj-1WQ2;
	Mon, 29 Sep 2025 13:51:16 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v3EHZ-00000002aUY-0Iuj
	for barebox@lists.infradead.org;
	Mon, 29 Sep 2025 13:51:14 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1v3EHW-00040h-Kg; Mon, 29 Sep 2025 15:51:10 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1v3EHW-0015T0-0m;
	Mon, 29 Sep 2025 15:51:10 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1v3EHW-0000000DkbA-0i52;
	Mon, 29 Sep 2025 15:51:10 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, 
 Alexander Shiyan <eagle.alexander923@gmail.com>
In-Reply-To: <20250929123239.838390-1-eagle.alexander923@gmail.com>
References: <20250929123239.838390-1-eagle.alexander923@gmail.com>
Message-Id: <175915387016.3277379.11438170659820524492.b4-ty@pengutronix.de>
Date: Mon, 29 Sep 2025 15:51:10 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250929_065113_115870_A8EEBA20 
X-CRM114-Status: UNSURE (   8.82  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] clk: rockchip: Fix CPLL setup on RK3588
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 29 Sep 2025 15:32:39 +0300, Alexander Shiyan wrote:
> This patch fixes the CPLL clock setup issue on RK3588 SoCs by temporarily
> disabling the PLL source during PLL configuration. The fix is ported from
> Rockchip's U-Boot implementation [1].
> 
> The issue occurs because CPLL requires its source to be disabled during
> configuration. We temporarily set the corresponding bit in the CRU
> register before PLL setup and restore it afterwards [2].
> 
> [...]

Applied, thanks!

[1/1] clk: rockchip: Fix CPLL setup on RK3588
      https://git.pengutronix.de/cgit/barebox/commit/?id=8b01023c3c7c (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



