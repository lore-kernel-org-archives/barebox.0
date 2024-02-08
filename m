Delivery-date: Thu, 08 Feb 2024 08:20:09 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rXyhb-008GmH-2i
	for lore@lore.pengutronix.de;
	Thu, 08 Feb 2024 08:20:09 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rXyhc-0006oF-GL
	for lore@pengutronix.de; Thu, 08 Feb 2024 08:20:09 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=iQEdMUeTktSSheS3LaIPjCVBv0rnncpQRYbY4NOH1cc=; b=4R3/vj9HvypqDk4HwXV2OBFPMK
	z2dXVr/qWu77I/NfXe9ke70PXutG+SREy6khwuMyQmX1ndTYNxG3iF4pNi5qXxwMAF9ASUFaQlR6m
	HN2PHe80uXYUISF6y3WO3AbCjI6AKrdnXxpbYyeKYP+4WInGValFaTFAm9DT+cJ+25uaK6bkF1rHh
	tHonXYjkWLaz3wkdUQ7C4RQ5UckI/teHePPd+hn1b2TrLH0CSBCh53ZGzwTIMhbzLc8dncflIdqHd
	xLiugEAYIJuEVNdVWxxyLBiJXan+aMNoAftS5Sjvn0Vj6CNYAjsSLkGvKaSVSEpeVLUGEYHlLWtxx
	+ybFobjg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rXyhA-0000000CtNj-31IS;
	Thu, 08 Feb 2024 07:19:40 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rXyh8-0000000CtNP-0deS
	for barebox@lists.infradead.org;
	Thu, 08 Feb 2024 07:19:39 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rXyh6-0006lv-Tj; Thu, 08 Feb 2024 08:19:36 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rXyh6-005AdW-HJ; Thu, 08 Feb 2024 08:19:36 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rXyh6-001WTF-1W;
	Thu, 08 Feb 2024 08:19:36 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20240205074553.2005284-1-s.hauer@pengutronix.de>
References: <20240205074553.2005284-1-s.hauer@pengutronix.de>
Message-Id: <170737677646.363122.7809830724932237834.b4-ty@pengutronix.de>
Date: Thu, 08 Feb 2024 08:19:36 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240207_231938_224529_702DF0AC 
X-CRM114-Status: GOOD (  12.00  )
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
Subject: Re: [PATCH v2 0/8] ARM: i.MX93: TQMA93xx: Add LGA variant
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 05 Feb 2024 08:45:45 +0100, Sascha Hauer wrote:
> The TQ i.MX93 boards come in different variants. This series adds
> support for the LGA variant. Fortunately the TQ boards all have a
> EEPROM equipped from which the variant can be read, so this series
> adds the necessary pieces to to I2C in PBL on i.MX93 and also the
> common EEPROM parsing code.
> The EEPROM parsing code could be reused on other TQ boards barebox
> has support for, like the tqmls1046a, tqma6ul and tqma8mp. Doing so
> is left for the future, for now the code is only used to detect the
> i.MX93 board variant.
> 
> [...]

Applied, thanks!

[1/8] i2c: lpi2c: determine clk rate during probe
      https://git.pengutronix.de/cgit/barebox/commit/?id=b28091f154ea (link may not be stable)
[2/8] i2c: lpi2c: use udelay for timeout loops
      https://git.pengutronix.de/cgit/barebox/commit/?id=8dae33d9a5c0 (link may not be stable)
[3/8] i2c: lpi2c: add PBL support
      https://git.pengutronix.de/cgit/barebox/commit/?id=8f05c6dbc287 (link may not be stable)
[4/8] pbl: eeprom: return error from eeprom_read()
      https://git.pengutronix.de/cgit/barebox/commit/?id=2b273ff6e36d (link may not be stable)
[5/8] common: add TQ EEPROM support
      https://git.pengutronix.de/cgit/barebox/commit/?id=225a2af33cd2 (link may not be stable)
[6/8] ARM: i.MX9: add i2c base address defines
      https://git.pengutronix.de/cgit/barebox/commit/?id=1d3a4574f64b (link may not be stable)
[7/8] ARM: i.MX9: rename TQ i.MX93 board to TQMA93XX
      https://git.pengutronix.de/cgit/barebox/commit/?id=f2c0715a47d1 (link may not be stable)
[8/8] ARM: i.MX: tqma93xx: Add LGA board variant
      https://git.pengutronix.de/cgit/barebox/commit/?id=e5471b2b72fa (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



