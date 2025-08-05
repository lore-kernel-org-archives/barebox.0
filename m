Delivery-date: Tue, 05 Aug 2025 11:34:28 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujE3w-007FU7-2b
	for lore@lore.pengutronix.de;
	Tue, 05 Aug 2025 11:34:28 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujE3v-0003LA-Pc
	for lore@pengutronix.de; Tue, 05 Aug 2025 11:34:28 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=bQ5F1I7j8CCnpesXJtYsMaOeqVZ5Z09l/ZJvEJ2gEGQ=; b=T4JLc38FLSteqjHiRLpY2ibs/m
	c7SJTImzJkhYpQ0PgklvQ6Yfb/vgBMP2TLG7ie0xdjzyeCClfTRYOFn0YHYM1RF6gg2ZN4blsU2ZR
	NectW9YOoOyE/brQr2lnP01K+uBR0V2Zh89HWKhs9XFKMy39vWSaEeImXwcJARG6cAvvINrOlKEfl
	QNqMahOKG+hP/WnSKa8kQUs6IFZ5Z6aGaVwVpqY6V8PdqP2ahZag/bbTEBTwQREX5PM6HdJoQfezy
	y5IIDCfj2yCYd9E0nBb4L4janVjFg3SlkYyOLZYmENBya/NeJiYXjfX9iWZISzp7bUYEofJ/32zIY
	r4wU8l/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujE3A-0000000CMd4-0nYF;
	Tue, 05 Aug 2025 09:33:40 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujDfY-0000000CJbb-0Yvd
	for barebox@lists.infradead.org;
	Tue, 05 Aug 2025 09:09:17 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1ujDfW-0000BK-MR; Tue, 05 Aug 2025 11:09:14 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1ujDfV-00C176-1H;
	Tue, 05 Aug 2025 11:09:13 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1ujDfV-00Ei5l-0a;
	Tue, 05 Aug 2025 11:09:13 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@barebox.org>
Cc: Gwenhael Goavec-Merou <gwenhael.goavec-merou@trabucayre.com>
In-Reply-To: <20250714071249.2428110-1-a.fatoum@barebox.org>
References: <20250714071249.2428110-1-a.fatoum@barebox.org>
Message-Id: <175438495317.3506046.496678187098836874.b4-ty@pengutronix.de>
Date: Tue, 05 Aug 2025 11:09:13 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250805_020916_174618_54E91E5B 
X-CRM114-Status: UNSURE (   7.18  )
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
Subject: Re: [PATCH 1/2] serial: cadence: support console= and earlycon=
 fixups
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 14 Jul 2025 09:12:48 +0200, Ahmad Fatoum wrote:
> If we tell the serial driver core about the names of the Linux
> console and earlycon driver, barebox can fix up the console= and
> earlycon= arguments without having to hardcode Linux boot arguments.
> 
> 

Applied, thanks!

[1/2] serial: cadence: support console= and earlycon= fixups
      https://git.pengutronix.de/cgit/barebox/commit/?id=567798b79c93 (link may not be stable)
[2/2] ARM: zynq: drop the board-specific environment
      https://git.pengutronix.de/cgit/barebox/commit/?id=12f788fa2440 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



