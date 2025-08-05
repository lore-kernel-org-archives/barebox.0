Delivery-date: Tue, 05 Aug 2025 11:34:28 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujE3v-007FTQ-2L
	for lore@lore.pengutronix.de;
	Tue, 05 Aug 2025 11:34:27 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujE3u-0003J2-A6
	for lore@pengutronix.de; Tue, 05 Aug 2025 11:34:27 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=XCDiFhg1poejK1UZ2dZ3My9oe1npEqp+hKDJtWzs/mk=; b=Lg3DfAFhQUPk7RkI3CLMJD8AuV
	0Y+b/9yGFmPY464eY/8DuRp3idBtGmZSu+G0Go4ZXM2Atj3pTnI2EwsPs1UJPL3LyPxwvmu5rdYY0
	Jjs4k9XiFJa8MyEjcvOu/Vm3zxbIUTvEy+Zp84ZW4n3tcEYA3wHYIYtDDqV2UDqV7Tnh7Z9MC2Ohb
	m8xwak7vZFE9wqhkrN9nqc8FaWVVbszll8+qRkLAxIMhxhaVm+XXnTsZq6FFCC4T6rO6dtV6K1jLv
	cd0TtTUh7DWfjtpABaKte3cooENctNTRpj9RF+7y1AVE1Skof5lVGf9ilZqDDK/hWoBAXMemETnAz
	IR3IgsZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujE37-0000000CMb2-2Y66;
	Tue, 05 Aug 2025 09:33:37 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujDaK-0000000CIZT-3q0s
	for barebox@lists.infradead.org;
	Tue, 05 Aug 2025 09:03:54 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1ujDaJ-0007d4-F6; Tue, 05 Aug 2025 11:03:51 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1ujDaJ-00C10s-0P;
	Tue, 05 Aug 2025 11:03:51 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1ujDaJ-00Eh85-0D;
	Tue, 05 Aug 2025 11:03:51 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: David Picard <david.picard@clermont.in2p3.fr>
In-Reply-To: <20250704143803.2740813-1-a.fatoum@pengutronix.de>
References: <20250704143803.2740813-1-a.fatoum@pengutronix.de>
Message-Id: <175438463106.3502344.8873229337639153486.b4-ty@pengutronix.de>
Date: Tue, 05 Aug 2025 11:03:51 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250805_020352_959411_D38554FA 
X-CRM114-Status: UNSURE (   6.79  )
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
Subject: Re: [PATCH 0/3] Documentation: devel: add new troubleshooting
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 04 Jul 2025 16:38:00 +0200, Ahmad Fatoum wrote:
> A consequence of running bare metal is that early failures are difficult
> to diagnose. Let's add a troubleshooting section to help users take
> the first step in diagnosing issues.
> 
> Ahmad Fatoum (3):
>   Documentation: devel: porting: split out architecture intro
>   Documentation: devel: architecture: detail first/second stage handling
>   Documentation: devel: troubleshooting: add new chapter
> 
> [...]

Applied, thanks!

[1/3] Documentation: devel: porting: split out architecture intro
      https://git.pengutronix.de/cgit/barebox/commit/?id=217fc53e335f (link may not be stable)
[2/3] Documentation: devel: architecture: detail first/second stage handling
      https://git.pengutronix.de/cgit/barebox/commit/?id=236f29f42d33 (link may not be stable)
[3/3] Documentation: devel: troubleshooting: add new chapter
      https://git.pengutronix.de/cgit/barebox/commit/?id=befb4b9cba53 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



