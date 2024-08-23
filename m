Delivery-date: Fri, 23 Aug 2024 10:09:45 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1shPMf-00CW9R-0h
	for lore@lore.pengutronix.de;
	Fri, 23 Aug 2024 10:09:45 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1shPMe-0000o9-Kq
	for lore@pengutronix.de; Fri, 23 Aug 2024 10:09:45 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=dokTPWD6oPDF543LV0QQ7iB4u28hWqj/gWC/DOCe/Fg=; b=bRq6Ycdm3GjdutpTwel7cLUeI4
	8jbmZcTvoDR4wPF7Uz5VHXdX2eOiih0gtwbrK78TnB2e2586+r3e+sxfuZ0BlQZOAE8A/Hapfe1S5
	Zp1i+L+1a5I8JmniGUObWeuiRqx3zw4lfGq4oLHHCSg/3X6r64AVe3KOYmCOOrgc+0qp7RhqueBBc
	SvFcIcvYjzxcRfE2n8C97XD7Qlo9yllYwkAO0jkRxhp7NYTYmfgOff6k3mVJwoXHMZiGjgFI7xyuu
	sy1lJhs4z/uj9Wae8nSVc3JTLA8lzwd1/BsECielRd883nlVpl3oEKTGVQ5qpLLPcVs8AnYYUsCEo
	UIZeyY0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shPMD-0000000FmcY-0ahr;
	Fri, 23 Aug 2024 08:09:17 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shPIg-0000000FlAI-46bL
	for barebox@lists.infradead.org;
	Fri, 23 Aug 2024 08:05:41 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1shPIf-0008PE-HB; Fri, 23 Aug 2024 10:05:37 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1shPIf-002RDv-3s; Fri, 23 Aug 2024 10:05:37 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1shPIf-008tSM-0C;
	Fri, 23 Aug 2024 10:05:37 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240822115701.1184099-1-a.fatoum@pengutronix.de>
References: <20240822115701.1184099-1-a.fatoum@pengutronix.de>
Message-Id: <172440033706.2119773.2177121005353753152.b4-ty@pengutronix.de>
Date: Fri, 23 Aug 2024 10:05:37 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240823_010539_152309_1BFC35B7 
X-CRM114-Status: UNSURE (   8.01  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 1/3] MIPS: dts: add /chosen/stdout-path where it is
 missing
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 22 Aug 2024 13:56:59 +0200, Ahmad Fatoum wrote:
> A number of MIPS boards don't have a stdout-path set and instead rely on
> CONFIG_CONSOLE_ACTIVATE_ALL/FIRST to enable a console.
> 
> This can get problematic if more consoles are added in future, or
> CONFIG_CONSOLE_ACTIVATE_NONE is to be used. So on systems that currently
> have a single console, let's have /chosen/stdout-path point at it.
> 
> [...]

Applied, thanks!

[1/3] MIPS: dts: add /chosen/stdout-path where it is missing
      https://git.pengutronix.de/cgit/barebox/commit/?id=74d57cd67b21 (link may not be stable)
[2/3] MIPS: qemu-malta: explicitly set stdout-path
      https://git.pengutronix.de/cgit/barebox/commit/?id=bd4479498829 (link may not be stable)
[3/3] test: mips: use new qemu-maltael_defconfig
      https://git.pengutronix.de/cgit/barebox/commit/?id=7f7bec8ebb95 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



