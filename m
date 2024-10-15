Delivery-date: Tue, 15 Oct 2024 09:19:21 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t0bpx-004Zbn-1y
	for lore@lore.pengutronix.de;
	Tue, 15 Oct 2024 09:19:21 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t0bpx-0003As-2X
	for lore@pengutronix.de; Tue, 15 Oct 2024 09:19:21 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=MKY9jjWsNvitxyVDo++NDwzcHW9StBgNW/62wzB16lc=; b=qHKVhFJ4BlWKDy95E8MLO8agcH
	TZp/lMqrvSSFTsK3AQn4mJPWB4TVDHJJdeRGwZjpS/eJELsOJlq1BIPbhiWaRPOjHUoJ5D7EGdWEp
	d/3zktY6INuW+XJVIajkiVYCz3IHNhX+watuRo6pcEu7aUbnJp2vTmVMUHwtjnh09x6cavKTJFvFi
	qyub5ohcROPShfR6vrx/ba9BMLqY78BJj3pyv4l0OV4ULe01g8rdbh3ewXfP/MZDpMqQFMtLxP2XP
	mOdy6OSM8r1gjnUBMoANLDDChmqd9JXSTt70JRDI/uEhZFtRVo7SbTOcKAbVlqM9TlmDW2K7PQyEl
	fZ+vLFGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t0bpT-00000007KHg-0Nbu;
	Tue, 15 Oct 2024 07:18:51 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0bpO-00000007KFI-3OAW
	for barebox@lists.infradead.org;
	Tue, 15 Oct 2024 07:18:49 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t0bpN-00035O-2n; Tue, 15 Oct 2024 09:18:45 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t0bpM-001yXx-Mk; Tue, 15 Oct 2024 09:18:44 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t0bpM-0071Hp-27;
	Tue, 15 Oct 2024 09:18:44 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20241014125047.2047952-1-a.fatoum@pengutronix.de>
References: <20241014125047.2047952-1-a.fatoum@pengutronix.de>
Message-Id: <172897672465.1673109.6690262057538093688.b4-ty@pengutronix.de>
Date: Tue, 15 Oct 2024 09:18:44 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241015_001846_901969_832C628A 
X-CRM114-Status: UNSURE (   7.14  )
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
Subject: Re: [PATCH] ARM: SMCCC: make header usable for compile test
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 14 Oct 2024 14:50:47 +0200, Ahmad Fatoum wrote:
> The only thing truly ARM-specific about the secure monitor
> call calling convention is the use of ARM SMC instructions.
> 
> Let's stub those out, so the rest of the driver can be compile
> tested on other architectures.
> 
> 
> [...]

Applied, thanks!

[1/1] ARM: SMCCC: make header usable for compile test
      https://git.pengutronix.de/cgit/barebox/commit/?id=07dc0b975338 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



