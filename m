Delivery-date: Tue, 05 Aug 2025 12:01:19 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujETv-007G3M-1D
	for lore@lore.pengutronix.de;
	Tue, 05 Aug 2025 12:01:19 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujETu-0006ZV-PM
	for lore@pengutronix.de; Tue, 05 Aug 2025 12:01:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=AY3t2uGXXm9u/uLpu2LEVHfOyUJJx5d/8BLU/kO7ij8=; b=dnans3edGjLx0+moD7ICm27pP2
	CNF4+l+XhNzgDFL0etfZGBMAqbj+QARR/3Usmf90QwKyT9hBPWjrtCJSbSpSDPx9dobdBpViU+S0k
	WhcuoNSgz+z4A8tYJuDYNGaEFh+KgDB9ioFFqxC56VAjO06aFClj87Ae+6bfvZF3Qpah8uou6aUi1
	V/viur5UkAs06ODv008CpsXmja1sNagIL7SfmIWO2DRivmi1CZk/b73ALrF6A3EcDbQqLlFc2U3Yr
	vm0xquaLMSwQToYlawzntBdUYDr4VJ5aNldCvSRAgQrWh3li4DA7dnMOfRDR0JdMmbSzTIc7gciBv
	Oh0js+0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujETL-0000000CRCs-0JDU;
	Tue, 05 Aug 2025 10:00:43 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujE3Y-0000000CN1Y-23Rz
	for barebox@lists.infradead.org;
	Tue, 05 Aug 2025 09:34:07 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1ujE3W-0002m5-Hz; Tue, 05 Aug 2025 11:34:02 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1ujE3V-00C1CN-3C;
	Tue, 05 Aug 2025 11:34:02 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1ujE3V-00EjUP-30;
	Tue, 05 Aug 2025 11:34:01 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, 
 Gwenhael Goavec-Merou <gwenj@trabucayre.com>
Cc: Gwenhael Goavec-Merou <gwenhael.goavec-merou@trabucayre.com>, 
 Ahmad Fatoum <a.fatoum@pengutronix.de>, 
 Johannes Roith <johannes@gnu-linux.rocks>, 
 Sascha Hauer <sha@pengutronix.de>
In-Reply-To: <20250707055331.2355809-1-gwenj@trabucayre.com>
References: <20250707055331.2355809-1-gwenj@trabucayre.com>
Message-Id: <175438644192.3511396.4404667642500132320.b4-ty@pengutronix.de>
Date: Tue, 05 Aug 2025 11:34:01 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250805_023404_694398_5FF62609 
X-CRM114-Status: UNSURE (   7.91  )
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
Subject: Re: (subset) [PATCH 1/3]
 arch/arm/boards/avnet-zedboard/zedboard.zynqcfg: removed everything but
 stop instruction to fix barebox boot
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 07 Jul 2025 05:53:29 +0000, Gwenhael Goavec-Merou wrote:
> From: Gwenhael Goavec-Merou <gwenhael.goavec-merou@trabucayre.com>
> 
> As mentionned in [1,2] sequence present in arch/arm/boards/avnet-zedboard/zedboard.zynqcfg
> causes boot failure without any messages.
> 
> This patch removes all instructions but the last one allowing to have
> access to the barebox prompt
> 
> [...]

Applied, thanks!

[2/3] arch/arm/boards/avnet-zedboard/lowlevel.c: added SDIO clk frequency configuration
      https://git.pengutronix.de/cgit/barebox/commit/?id=74d4f36f9d9a (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



