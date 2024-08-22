Delivery-date: Thu, 22 Aug 2024 14:05:45 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sh6ZV-00CEsq-2I
	for lore@lore.pengutronix.de;
	Thu, 22 Aug 2024 14:05:45 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sh6ZV-0007vr-35
	for lore@pengutronix.de; Thu, 22 Aug 2024 14:05:45 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=M9yhkLxKK1elhqJMyXPHjzJJjems7ud306c/sBxc2ro=; b=TeN4gJC5dgW2Na+XdqUSy2ra6m
	ej1TREAXL2C05ZAFrttqei69klIUu1lGLO3ogQWMqE04if9MdMQbhojXV9vFeU0WML6o2oPZutFtS
	YxGaCOwWb00Y+a0JUuh98SnXwybsTx1EJEy20rOW//bbN3IJ0WA/7A8gWkvHxBsVETEqn6MSsxB1G
	jKnQWDuJiEv0X5vFYyzpSvK5fEdRTq3PEx0C0OlJ6F6LvJJa0IHgiYommnnxInZvVhDemci3jZfr+
	jpZd5MEEJWk6k3t38nu5GL8dKOgmPzCUcjKMjO9jMkvY8DxILlKs6o5PtpFHJWOtjPktlpKWSXgXl
	1Nb10Ivw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sh6Yx-0000000ChPk-45Pi;
	Thu, 22 Aug 2024 12:05:11 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sh6Yj-0000000ChE6-1l13
	for barebox@lists.infradead.org;
	Thu, 22 Aug 2024 12:05:00 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sh6Yh-0007k1-OS; Thu, 22 Aug 2024 14:04:55 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sh6Yh-002F5v-Bd; Thu, 22 Aug 2024 14:04:55 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sh6Yh-007tcA-0x;
	Thu, 22 Aug 2024 14:04:55 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240822115337.1178520-1-a.fatoum@pengutronix.de>
References: <20240822115337.1178520-1-a.fatoum@pengutronix.de>
Message-Id: <172432829529.1882071.13118469512945748365.b4-ty@pengutronix.de>
Date: Thu, 22 Aug 2024 14:04:55 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240822_050457_632382_F12BB0A9 
X-CRM114-Status: UNSURE (   7.01  )
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
Subject: Re: [PATCH master] ci: container: fix CROSS_COMPILE_openrisc to
 point at correct version
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 22 Aug 2024 13:53:36 +0200, Ahmad Fatoum wrote:
> Due to the test failing with the latest 14.2.0 release, we are
> downgrading OpenRISC to the old GCC 13.1.0 version as an interim
> measure. The patch doing this was faulty and while it downloaded
> the older toolchain, the CROSS_COMPILE_openrisc variable still
> referenced the 14.2.0 toolchain breaking MAKEALL.
> 
> 
> [...]

Applied, thanks!

[1/1] ci: container: fix CROSS_COMPILE_openrisc to point at correct version
      https://git.pengutronix.de/cgit/barebox/commit/?id=18a154ce190e (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



