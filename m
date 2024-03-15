Delivery-date: Fri, 15 Mar 2024 08:13:06 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rl1kY-007PPX-2Q
	for lore@lore.pengutronix.de;
	Fri, 15 Mar 2024 08:13:06 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rl1kY-0000qw-88
	for lore@pengutronix.de; Fri, 15 Mar 2024 08:13:06 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=MQ+lP0qjI49e+HZggi50Zz+WvBIuTNIRcN3Sggy8rR0=; b=xhMsrZUS0IjlSnSm5VobHT5Wg9
	Suw5baziGIN4eTJsuB66eIMzSd6FWV3XFPSnYmf9NcvOS3CSSaBCF1PxSID2MMi9oXn9JX5CzY2y9
	0v/nfI9eCDvn4Zo2S/fTn/d0b6uYZmitdOifu4QiTZQUrt8/9Jdet+8hGzFmhEy5TvINndFNsKwmz
	FfLpXQNk84erdqKT01ahtHcKJHHMSbDfa1pnhVwh98nK4pvqenk6qXZsdLDF/1n6qmSPJDgGWHjKt
	LX9N6ETfVJUl12ALCLHSXoq3Vn/SiRStwhJ7g1H4IIdtfpwPs/yPGpqtMIybFFZtk/je6e0nQEK8q
	tabxJ+MA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rl1k9-0000000GvQJ-01S1;
	Fri, 15 Mar 2024 07:12:41 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rl1k5-0000000GvOy-11Gm
	for barebox@lists.infradead.org;
	Fri, 15 Mar 2024 07:12:38 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rl1k4-0000XA-1A; Fri, 15 Mar 2024 08:12:36 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rl1k3-006Sdr-Ka; Fri, 15 Mar 2024 08:12:35 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rl1k3-0088Jd-1p;
	Fri, 15 Mar 2024 08:12:35 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240313180026.3202602-1-a.fatoum@pengutronix.de>
References: <20240313180026.3202602-1-a.fatoum@pengutronix.de>
Message-Id: <171048675556.1938498.17509480167150999578.b4-ty@pengutronix.de>
Date: Fri, 15 Mar 2024 08:12:35 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240315_001237_314989_58D1DC9C 
X-CRM114-Status: UNSURE (   7.96  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] ARM: i.MX: define MUX_MODE_SION for use in board code
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 13 Mar 2024 19:00:27 +0100, Ahmad Fatoum wrote:
> While we set SION for all I2C pinmux configurations, board code may
> need to set SION for other pads as well. Provide a MUX_MODE_SION
> definition that can be OR-d into the pinmux argument of
> imx8mm_setup_pad().
> 
> 

Applied, thanks!

[1/1] ARM: i.MX: define MUX_MODE_SION for use in board code
      https://git.pengutronix.de/cgit/barebox/commit/?id=4ff51eb1816d (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



