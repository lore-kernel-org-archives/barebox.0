Delivery-date: Thu, 12 Dec 2024 09:36:20 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tLegG-0077Ok-1K
	for lore@lore.pengutronix.de;
	Thu, 12 Dec 2024 09:36:20 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tLegF-00044H-Nq
	for lore@pengutronix.de; Thu, 12 Dec 2024 09:36:20 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=rIPaRCXbRfcb0I6Qdp8wZ/Ma3FsHYZzJuyLjePm6hGw=; b=k3W1p6e+hZ6QfeLLpWc5Q+FnRh
	qscQDd1NlwdXeRQIDmnLxVo/zfMD0TyS4/kJ4TX63ui65nXESO8U4cZkipK5HBGpLklsi9VlY6cLM
	9g+820Vd7PaXjOT8UM3s4W7gyYXsSBjvD1+Iw9qlehldZVCDl7j9J/FJog37MilJNN/PteNWN2VEq
	daUgrO37TOpRV7rAaatUAl0qa8/OFxBqb/AGkxoPvqm86pVGCUCr+jIfocMZ6MgJOpE4namSgDofR
	13dE8OVlRkEMENLmbfUD5H8fVyGqRaDhwl9Q1t6fnB2jEH/amuUemwrDR4QpIvgN5zxbVW0c+TJdQ
	9su4hG3g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tLefo-0000000HKF8-0s1P;
	Thu, 12 Dec 2024 08:35:52 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tLeXm-0000000HIiD-47cz
	for barebox@lists.infradead.org;
	Thu, 12 Dec 2024 08:27:36 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tLeXl-0002aC-Ss; Thu, 12 Dec 2024 09:27:33 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tLeXk-0030E4-2x;
	Thu, 12 Dec 2024 09:27:33 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tLeXl-00DG93-20;
	Thu, 12 Dec 2024 09:27:33 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, 
 Alexander Shiyan <eagle.alexander923@gmail.com>
In-Reply-To: <20241211150002.2993689-1-eagle.alexander923@gmail.com>
References: <20241211150002.2993689-1-eagle.alexander923@gmail.com>
Message-Id: <173399205361.3159477.8801897495455562938.b4-ty@pengutronix.de>
Date: Thu, 12 Dec 2024 09:27:33 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241212_002735_025667_6474A51C 
X-CRM114-Status: UNSURE (   7.00  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: rockchip: dmc fix LPDDR5 bank info for sys_reg
 version 3
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 11 Dec 2024 18:00:02 +0300, Alexander Shiyan wrote:
> This patch add support for additional bank info used by LPDDR5.
> Taken from U-boot code, commit 875bc40 by YouMin Chen <cym@rock-chips.com>
> 
> 

Applied, thanks!

[1/1] ARM: rockchip: dmc fix LPDDR5 bank info for sys_reg version 3
      https://git.pengutronix.de/cgit/barebox/commit/?id=359c7f916325 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



