Delivery-date: Tue, 06 May 2025 09:19:10 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uCCa6-002inh-2k
	for lore@lore.pengutronix.de;
	Tue, 06 May 2025 09:19:10 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uCCa6-0002Tk-AL
	for lore@pengutronix.de; Tue, 06 May 2025 09:19:10 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=SFwFiJN12XHWwHcHtRpZk4AuW/cZ3gsAai/4OvSRl4U=; b=UeyOQPbO5ZsKfu9rjzwEGnvW3K
	aHiTkm/y78DOI47i7zrDPHYgMPNJ2ThDEvE5+nlyqpn6Zx0Gwph6147PtUe/vbTtsahUn6SFTKtzV
	leQqK8ARsxmdxFj3X1HC3aQlPzSeD58DsxSWn0N5y4LOSPX7Ja6Ovpa1q0ZX4L77Mnb84wPV1W6mw
	K1yEj9Ge34P5AuZJLlC+B0gLH1fjr9JyZ60+oosfP6zUAN91Fp2nX7JOBKe9PfYjqF0Ajs+nCGDgA
	pRw66WfvaS6BlmNIcFAzJt3RagsCwKFWUNG5sEQU7gVbi/6yu0jk2cbwUhaOxDog4nL5O5lXMsebY
	QTI0JYhw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCCZi-0000000At6k-1Q1j;
	Tue, 06 May 2025 07:18:46 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCCZc-0000000At4i-1sCq
	for barebox@lists.infradead.org;
	Tue, 06 May 2025 07:18:44 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uCCZb-0002IN-8p; Tue, 06 May 2025 09:18:39 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uCCZb-001MAj-0F;
	Tue, 06 May 2025 09:18:39 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uCCZb-00DNMX-01;
	Tue, 06 May 2025 09:18:39 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250506061947.3087695-1-a.fatoum@pengutronix.de>
References: <20250506061947.3087695-1-a.fatoum@pengutronix.de>
Message-Id: <174651591900.3188048.10033027141943113052.b4-ty@pengutronix.de>
Date: Tue, 06 May 2025 09:18:39 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250506_001840_485300_3B3132AF 
X-CRM114-Status: UNSURE (   8.56  )
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
X-Spam-Status: No, score=-5.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] PWM: core: fix deep probe for PWM backlight
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 06 May 2025 08:19:47 +0200, Ahmad Fatoum wrote:
> In a deep probe system, resources are probed on demand. This requires
> code that iterates over lists of resources to first call
> of_device_ensure_probed to ensure that the device is probed and added to
> the list.
> 
> This was missing for both PWM and backlights, so add them now.
> 
> [...]

Applied, thanks!

[1/1] PWM: core: fix deep probe for PWM backlight
      https://git.pengutronix.de/cgit/barebox/commit/?id=c50a48332619 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



