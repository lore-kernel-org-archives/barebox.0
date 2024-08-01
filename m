Delivery-date: Thu, 01 Aug 2024 13:36:40 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sZU6q-0057Do-1f
	for lore@lore.pengutronix.de;
	Thu, 01 Aug 2024 13:36:40 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sZU6p-0004ZT-Vs
	for lore@pengutronix.de; Thu, 01 Aug 2024 13:36:40 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7SE33tccnHF8g9EfvvaJQGsO/SenM7pCWGJHkmlsEXk=; b=pg2qlr7J6MW2gYSCTYQadb/TY8
	cE3RotWA/1X9amlgOLKnJqW7BkT8KP3GJILBV1xzKtkzbkMtxLUeu0Z18QJEHE0I9j2BNT54fDSSb
	KRuPV55FBtg+DAIPwHgEs5rdHwE1PSO0I5kDobtciPVwbIfGK1JQo78lPsI2vzWKVZM0wjNhcB7pD
	0c8O65sxOwCTTebGWs9/1HL6a829qlSzABDAK4tVIf4xd4esI6y9G+1I7Qk423TCKPUW3iiIpDmTU
	63tZDvxk9kORIpP8XsmOEvyF/Jyb0u70Wm+TZofis5T28Ef12JnqmIx6V0qmRMgJpqUKvb5QHxPPU
	v0xHzKPA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZU6M-00000004wOY-2WZ5;
	Thu, 01 Aug 2024 11:36:10 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZU6K-00000004wNj-0eNI
	for barebox@lists.infradead.org;
	Thu, 01 Aug 2024 11:36:09 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sZU6I-0004Vx-GC; Thu, 01 Aug 2024 13:36:06 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sZU6I-003l0w-3D; Thu, 01 Aug 2024 13:36:06 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sZU6I-00FdxF-06;
	Thu, 01 Aug 2024 13:36:06 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240801070918.1667337-1-a.fatoum@pengutronix.de>
References: <20240801070918.1667337-1-a.fatoum@pengutronix.de>
Message-Id: <172251216602.3728454.16879381209590832726.b4-ty@pengutronix.de>
Date: Thu, 01 Aug 2024 13:36:06 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240801_043608_230631_6B4F034A 
X-CRM114-Status: GOOD (  10.76  )
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
Subject: Re: [PATCH] console: honour OF current-speed property if available
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 01 Aug 2024 09:09:18 +0200, Ahmad Fatoum wrote:
> current-speed describes the current baud rate the device operates at.
> It's not used often in DT, but we should honour it if available.
> 
> This gives boards the ability to configure consoles that are activated
> early (e.g. ACTIVATE_ALL) with the correct baud rate from the beginning
> instead of activating it at CONFIG_BAUDRATE and then switching the
> baudrate at environment load time.
> 
> [...]

Applied, thanks!

[1/1] console: honour OF current-speed property if available
      https://git.pengutronix.de/cgit/barebox/commit/?id=345e9f5f0df4 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



