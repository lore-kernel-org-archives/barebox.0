Delivery-date: Fri, 17 Apr 2026 11:08:29 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wDfBd-00D8Hg-1N
	for lore@lore.pengutronix.de;
	Fri, 17 Apr 2026 11:08:29 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wDfBc-0002sT-St
	for lore@pengutronix.de; Fri, 17 Apr 2026 11:08:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=zt7Su9IMS6d+KubfcR3frbeP2DTBSMngKhUGqQ9Dahg=; b=a8FE7i538WhSSEyWWZXScH9nB2
	p5fHeY24rMCDcvfJdzlGwqx0SOt1d9PaMokB9Rq7JYsDnKYi2FIzbElxVKd7kC1ySf3V2a5bBrF/Z
	G7359eMSn528DHF/Vw9JHK8jv0yt6GW2T7bUnO2atB6fvbS65xJZAk8EchsltPGX3Tc1NJALFUir+
	DhEIHV3cl8b3XGXw0VDybuXmCK2c5Xf9nIpK9Kw0l5DwvszWsOfcTkXkhWhY+TZwnlmK4GjeuC2Ar
	oyINAhPXTaSYovSXpKuskjQ0S610OYpwCbXm9ESCkbDWsiWGtU2+sN49YBJdxk1wno262smYiXZHH
	hbf0dKgg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wDfB9-00000003jTn-0XuJ;
	Fri, 17 Apr 2026 09:07:59 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wDfB6-00000003jTQ-17qr
	for barebox@lists.infradead.org;
	Fri, 17 Apr 2026 09:07:58 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wDfB4-0002en-L6; Fri, 17 Apr 2026 11:07:54 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wDfB4-005pAd-1U;
	Fri, 17 Apr 2026 11:07:54 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wDfB4-00000000axx-1eJv;
	Fri, 17 Apr 2026 11:07:54 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, 
 Steffen Trumtrar <s.trumtrar@pengutronix.de>
In-Reply-To: <20260415-v2026-03-1-topic-arkona-at300-v2-0-e5ae4c029193@pengutronix.de>
References: <20260415-v2026-03-1-topic-arkona-at300-v2-0-e5ae4c029193@pengutronix.de>
Message-Id: <177641687438.142088.8362597134362482953.b4-ty@pengutronix.de>
Date: Fri, 17 Apr 2026 11:07:54 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260417_020756_336856_1DF8F437 
X-CRM114-Status: UNSURE (   8.87  )
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
Subject: Re: [PATCH v2 0/2] ARM: ls1046a: add support for Arkona AT300
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 15 Apr 2026 10:13:08 +0200, Steffen Trumtrar wrote:
> This series adds support for a variant of the TQ tqmls1046a SoM.
> The Arkona AT300 is based on the TQ SoM, with mainly different RAM and QSPI setup.
> 
> To help generating the RCW IO-muxing values, add a header and tool to
> generate these values.
> 
> 
> [...]

Applied, thanks!

[1/2] scripts: ls1046a-rcwtool: add functions to generate RCW
      https://git.pengutronix.de/cgit/barebox/commit/?id=507b06a0ada7 (link may not be stable)
[2/2] ARM: tqmls1046a: Add Arkona AT300 support
      https://git.pengutronix.de/cgit/barebox/commit/?id=4c189dce612f (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



