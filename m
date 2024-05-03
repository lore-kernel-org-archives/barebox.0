Delivery-date: Fri, 03 May 2024 08:51:35 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s2mlb-00Glaq-0Y
	for lore@lore.pengutronix.de;
	Fri, 03 May 2024 08:51:35 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s2mla-00048Z-J7
	for lore@pengutronix.de; Fri, 03 May 2024 08:51:35 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=5jhzcA8nxDJbQ+/OMkGKlO/8fmHz1ibN+drrdFXri2g=; b=Tfv67M3BaCVct7HECBlUKlVG8H
	qEj5SBJxP4db2hvJjLzaJhgn4Z66LuJY1dh3nf98jSzI8tkpRfGtk48zr0DJRaeUQpTXHkgMRsTsb
	JH9KdZOE1VA+ZRotXxD6xECHzDQEBV3FilsaHIOq2Ax6X2ab4rSLMYwo89/mCUOOWJjSzA3SW4dM1
	CIB8WegCgY0ILgLHp5P0CwBAkxA09ogTEL2kbK1y6Ik+ZslCp4K2jyC2YnPXsUsFbq3XykpFwMD7f
	UOehf/rf5ZgTOq/mAcTR0wNQrTjR6LCn6J6yBRvykONvZo0nFjJzAqyt/AFVPZSrwZfjkh8leoa3U
	EmRIQA9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2mkv-0000000FMfZ-32ek;
	Fri, 03 May 2024 06:50:53 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2mkq-0000000FMeB-1za4
	for barebox@lists.infradead.org;
	Fri, 03 May 2024 06:50:51 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s2mkl-0003ve-QP; Fri, 03 May 2024 08:50:43 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s2mkl-00Fef6-D5; Fri, 03 May 2024 08:50:43 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s2mkl-0003BF-16;
	Fri, 03 May 2024 08:50:43 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240502151757.3964461-1-a.fatoum@pengutronix.de>
References: <20240502151757.3964461-1-a.fatoum@pengutronix.de>
Message-Id: <171471904333.12156.15682184984126685414.b4-ty@pengutronix.de>
Date: Fri, 03 May 2024 08:50:43 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240502_235048_709046_531FCD48 
X-CRM114-Status: UNSURE (   7.92  )
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
X-Spam-Status: No, score=-5.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/3] net: dsa: ksz9477: always toggle reset gpio if
 available
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 02 May 2024 17:17:55 +0200, Ahmad Fatoum wrote:
> The barebox driver currently only ensures that the switch is out of
> reset, but doesn't actually trigger a reset pulse.
> 
> The Linux driver, on the other hand, holds reset active for 10ms and
> then waits a whopping 100ms after reset deassertion.
> 
> This seems excessive by a thousandfold for at least KSZ9893R[1], whose
> datasheet states:
> 
> [...]

Applied, thanks!

[1/3] net: dsa: ksz9477: always toggle reset gpio if available
      https://git.pengutronix.de/cgit/barebox/commit/?id=372d21e79e30 (link may not be stable)
[2/3] net: dsa: ksz9477: report 0 as value when returning error
      https://git.pengutronix.de/cgit/barebox/commit/?id=6d42b2827243 (link may not be stable)
[3/3] net: dsa: ksz9477: return negative error codes on PHY access failures
      https://git.pengutronix.de/cgit/barebox/commit/?id=eefd990b4cfd (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



