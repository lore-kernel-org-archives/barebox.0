Delivery-date: Tue, 15 Apr 2025 08:49:30 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u4a6s-000xFL-0Y
	for lore@lore.pengutronix.de;
	Tue, 15 Apr 2025 08:49:30 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u4a6r-0004jl-Iv
	for lore@pengutronix.de; Tue, 15 Apr 2025 08:49:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=jc2pwbAGO1+DVI4OfURJ3BRwx4OK1/0UgotRkowaKtA=; b=4w5TUteeGQAlp9sc29h443hdyE
	YNfXrbT1mk69hNWLW+74kFmzjv+Rw2GwphG1oIRE6DnvG1PYpM+x9Jm5cSWp6ULSQ777ROkrTyRxZ
	laxbP6DUE1U2O639eizThgmSnDm5qELs5vidtZ44j8MC8VQ8Z/8uNkStMRnRUaM7kXf9OGfuf6RNg
	N3AA6bMCX0SM4hZrU4rkisalZ9JFMMj+qU0YyO3KwHJEzM2rVlEECQ3GBv3ZwH55L4aIBl78XszZb
	7jdpJdLZF0gs5aNpaP9vmUQJw9+di6tqQlotxPX8NxO1SS3h6uf4JXcqwa0l84N5WYi7qsA5dO9aG
	aKHsHCvg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4a67-00000004hn7-2spa;
	Tue, 15 Apr 2025 06:48:43 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4a64-00000004hly-2tgP
	for barebox@lists.infradead.org;
	Tue, 15 Apr 2025 06:48:42 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u4a61-0004dP-V7; Tue, 15 Apr 2025 08:48:37 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u4a61-000NEF-2V;
	Tue, 15 Apr 2025 08:48:37 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u4a61-006ofn-2G;
	Tue, 15 Apr 2025 08:48:37 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250414065009.2770749-1-a.fatoum@pengutronix.de>
References: <20250414065009.2770749-1-a.fatoum@pengutronix.de>
Message-Id: <174469971769.1624591.2268001903146064242.b4-ty@pengutronix.de>
Date: Tue, 15 Apr 2025 08:48:37 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250414_234840_733315_41A1BA23 
X-CRM114-Status: UNSURE (   8.63  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/6] ARM: dts: i.MX8MP: drop now upstream
 imx8mp-nominal.dtsi
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 14 Apr 2025 08:50:04 +0200, Ahmad Fatoum wrote:
> This file is now available in Linux since v6.15-rc1, so we do not need
> to duplicate it in barebox for boards to make use of it.
> 
> 

Applied, thanks!

[1/6] ARM: dts: i.MX8MP: drop now upstream imx8mp-nominal.dtsi
      https://git.pengutronix.de/cgit/barebox/commit/?id=9456295e0706 (link may not be stable)
[2/6] ARM: i.MX8MP: skov: decrease VDD_SOC to 850mV
      https://git.pengutronix.de/cgit/barebox/commit/?id=cc8030cbaeb9 (link may not be stable)
[3/6] ARM: i.MX8MP: skov: assert switch reset early
      https://git.pengutronix.de/cgit/barebox/commit/?id=6e95488987cd (link may not be stable)
[4/6] ARM: i.MX8MP: skov: halt startup until power is good
      https://git.pengutronix.de/cgit/barebox/commit/?id=07a459e9eff3 (link may not be stable)
[5/6] ARM: skov-imx8mp: print initial > on every boot
      https://git.pengutronix.de/cgit/barebox/commit/?id=b5cc49835584 (link may not be stable)
[6/6] ARM: i.MX8MP: skov: add new 7" g07017 variant support
      https://git.pengutronix.de/cgit/barebox/commit/?id=7f6ae6b9e39e (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



