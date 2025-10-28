Delivery-date: Tue, 28 Oct 2025 09:20:22 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vDewI-00Ccg0-2Z
	for lore@lore.pengutronix.de;
	Tue, 28 Oct 2025 09:20:22 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vDewI-0002gT-95
	for lore@pengutronix.de; Tue, 28 Oct 2025 09:20:22 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ro4Lq/FhJ3jkeLlQr1pFWR542qEvzQlDWKYhSq8ctgU=; b=zE6G5m+kIfiyKTIYCajGh3bgEt
	CLbxvn7RPJcJWpxxSiagZSx99edXbT+PRNdBzbZ35XM0Y5jRR+wGou2oD0EU7BddmLcIYl3DUL0J1
	HbFwB91+2My2i9h42H4ReC5ovBWgDC/BtS6af7+AujvjhkBWfgtO6wvSW/c4supVrW7ZXLT2tSIs8
	atyNMvET0zORQyoJpm9OF4j5qYofdmJACKuDpQSzN7ymv1tYoshSQ1EB9bpgmdHOVQjpxRCXx52/5
	7m0aTjhALkwGiPX2AAJI90QKSn2ykw1JI5KaS+RJQanwclBDq8JUUcf3MUfMHoZsvVmRIQEfr8NmJ
	rD9BYM6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDevu-0000000FX4y-0KQM;
	Tue, 28 Oct 2025 08:19:58 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDevs-0000000FX4L-0guy
	for barebox@lists.infradead.org;
	Tue, 28 Oct 2025 08:19:57 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vDevq-0002ZF-Dg; Tue, 28 Oct 2025 09:19:54 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vDevq-005qNo-0m;
	Tue, 28 Oct 2025 09:19:54 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vDevq-0000000BlCi-2d33;
	Tue, 28 Oct 2025 09:19:54 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@barebox.org>
In-Reply-To: <20251027063045.2396578-1-a.fatoum@barebox.org>
References: <20251027063045.2396578-1-a.fatoum@barebox.org>
Message-Id: <176163959417.2802927.1216847691491688382.b4-ty@pengutronix.de>
Date: Tue, 28 Oct 2025 09:19:54 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251028_011956_216247_DAF52D1D 
X-CRM114-Status: UNSURE (   6.38  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/4] sound: pwm-beeper: make duty cycle configurable
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 27 Oct 2025 07:30:36 +0100, Ahmad Fatoum wrote:
> A lower duty cycle may be less jarring to hear, so give users the
> possibility to control it via device parameter attached to the PWM
> beeper device.
> 
> 

Applied, thanks!

[1/4] sound: pwm-beeper: make duty cycle configurable
      https://git.pengutronix.de/cgit/barebox/commit/?id=a1e1f274c4e3 (link may not be stable)
[2/4] param: add support for setting parameters with percentages
      https://git.pengutronix.de/cgit/barebox/commit/?id=4c837b2e1417 (link may not be stable)
[3/4] video: backlight-pwm: switch to gpiod functions
      https://git.pengutronix.de/cgit/barebox/commit/?id=4c7238df6866 (link may not be stable)
[4/4] backlight: support setting brightness as percentage
      https://git.pengutronix.de/cgit/barebox/commit/?id=e6cc85dc1de1 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



