Delivery-date: Thu, 07 May 2026 12:49:25 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wKwII-001wAd-0u
	for lore@lore.pengutronix.de;
	Thu, 07 May 2026 12:49:25 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wKwIE-0006sX-U2
	for lore@pengutronix.de; Thu, 07 May 2026 12:49:25 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2AjCZXP7toBTmWKUSTwkt1l2P6m+HXk0Rf/WaCh2CEM=; b=yZlStoIocsXVSw2g6931Ho4f3K
	E2FUtCC9J3oD+6JAiRTvH6/m8xO6ewIipMbSp1EA8OdkZwc3OTMFrvJnrLtbZqdSKh9Wm9tUgWb1E
	9Obf3NtaDHoh16Oc1Pus1JEx2wa/2WpxQUeIissQgW98DthM9Cm7gylj1Aub28jOZNYOjGdXJ6eP3
	+YcjiSkL+1SnZCR/8VrnthMn4gtfrKavxc1Wqad9VoqeCF+dh59Mkvl3i6pjXmQukRmLeKmMU0E+2
	vdoo5gVe6Mya9lQ54zL0zUP9f/rkNG6RnTMTi6P8tHX/n3BeU/oKw8XRYWmaZt2ZaCKB4xna8lQ9h
	O7ywEeww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wKwHY-00000003XPQ-2IAG;
	Thu, 07 May 2026 10:48:40 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wKwHX-00000003XPF-2ZyP
	for barebox@bombadil.infradead.org;
	Thu, 07 May 2026 10:48:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=2AjCZXP7toBTmWKUSTwkt1l2P6m+HXk0Rf/WaCh2CEM=; b=cwg3kaQuJA5ZmlFpNeZLSYMZwo
	sT4+PR4tFx7a2VeCrqq2Jye22phyTiYYju7t/08h6yua4kJbZU4kI3AcuBlEpZiCG1XGI/GHM96R5
	l59ZIBD7g8giOllYeyqxlu1LhxvkORDbLEDziXxUBsnvaJBvXzDOOHAOP46JdM9LhQ7ojFL9+BiG6
	Qy2XbFOdjLCwmCCtCTyaD+/+keubQTLD/MlbSxAsWJwk1yANXApUZY0Upy3j+enHaL+Sf5a1fPfoA
	+hWHFY2Mu2lfAvEy7J/rH22t0+B6wmK0xb11P4u5mIyX62rRePbREc5Nsu3BA+2UVVwGJSctttpx/
	InmnXX3g==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wKwHU-00000003Fq0-0Khs
	for barebox@lists.infradead.org;
	Thu, 07 May 2026 10:48:38 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wKwHT-0006Tb-Oi; Thu, 07 May 2026 12:48:35 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wKwHT-000uF5-0Q;
	Thu, 07 May 2026 12:48:35 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wKwHT-0000000Bjwt-2820;
	Thu, 07 May 2026 12:48:35 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Michael Tretter <m.tretter@pengutronix.de>
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>
In-Reply-To: <20260506-socfpga-agilex5-qspi-v1-0-94def85c1b80@pengutronix.de>
References: <20260506-socfpga-agilex5-qspi-v1-0-94def85c1b80@pengutronix.de>
Message-Id: <177815091550.2798217.16515838611946651486.b4-ty@pengutronix.de>
Date: Thu, 07 May 2026 12:48:35 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260507_114836_459514_A3687C07 
X-CRM114-Status: UNSURE (   8.40  )
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
Subject: Re: [PATCH 0/6] arm: socfpga: agilex5: cleanup QSPI flash low
 level code
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 06 May 2026 11:06:06 +0200, Michael Tretter wrote:
> On Agilex 5, barebox runs in the HPS (hard processor system) which needs
> to explicitly request QSPI flash access from the SDM (secure device
> manager). This request may be denied by the SDM. Furthermore, barebox
> needs to store the clock rate reported by the SDM.
> 
> Cleanup and refactor the code that handles the QSPI flash request from
> the SDM. This is a preparation for eventually reading a second stage
> boot loader from QSPI flash.
> 
> [...]

Applied, thanks!

[1/6] arm: socfpga: agilex5: add missing include soc64-regs.h
      https://git.pengutronix.de/cgit/barebox/commit/?id=1f4a856e0936 (link may not be stable)
[2/6] arm: socfgpa: agilex5: remove mailbox_s10 from barebox proper
      https://git.pengutronix.de/cgit/barebox/commit/?id=dc418389064d (link may not be stable)
[3/6] arm: socfpga: agilex5: extract function to request qspi access
      https://git.pengutronix.de/cgit/barebox/commit/?id=87a298eab713 (link may not be stable)
[4/6] arm: socfpga: mailbox_s10: keep clock rate in Hz
      https://git.pengutronix.de/cgit/barebox/commit/?id=2ee06bcf5410 (link may not be stable)
[5/6] arm: socfpga: mailbox_s10: add write_qspi_refclk helper
      https://git.pengutronix.de/cgit/barebox/commit/?id=5998c5c1b3ee (link may not be stable)
[6/6] arm: socfpga: agilex5: extract write_qspi_refclk from mailbox
      https://git.pengutronix.de/cgit/barebox/commit/?id=11daf34fa202 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



