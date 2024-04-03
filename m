Delivery-date: Wed, 03 Apr 2024 14:26:47 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rrzhX-00684l-2w
	for lore@lore.pengutronix.de;
	Wed, 03 Apr 2024 14:26:47 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rrzhX-0003v9-9T
	for lore@pengutronix.de; Wed, 03 Apr 2024 14:26:47 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=GrhznvfrLMcXR6xeicMiopGhg/FErnTCQDTmx/Yga6Y=; b=FmOWcoRiFHrHKi4ygkBAJFlHPe
	yzGkDh9NrUyeVMJnQLqYgFB+hVOAieFy04jwgLCLf2y31IQhkmbJWNvWtbAaf+LInz4WzpLG4hgUM
	3iemri9PynR3CWtjIy+RMfIVhyeU8uKLkt79JfonyAKQSaV6BGWr25UcIVogGgWg5g/7VAYq5XZ3V
	R0L0lumtwwRIaN6r3FRZdeGGJjQ7AdBvJsNQDohTObVvG/JSTEb7/7PVik/LVYZUThHO+3nfbuu4H
	hFZj1mzqysOpFSQ/xPd9zMeBhLXqmRW1Mn5LX0tv4fpGzh5u1p3+Vrhkr35s+6F/xTHXbYIS6QBOh
	j62N6AMw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rrzh8-0000000Fw9p-04IP;
	Wed, 03 Apr 2024 12:26:22 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rrzh3-0000000Fw8J-1kIN
	for barebox@lists.infradead.org;
	Wed, 03 Apr 2024 12:26:19 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rrzh1-0003Tc-GO; Wed, 03 Apr 2024 14:26:15 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rrzh1-00AAq5-4B; Wed, 03 Apr 2024 14:26:15 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rrzh1-007COj-0D;
	Wed, 03 Apr 2024 14:26:15 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240403090602.2978695-1-a.fatoum@pengutronix.de>
References: <20240403090602.2978695-1-a.fatoum@pengutronix.de>
Message-Id: <171214717506.1715898.15692945804643195444.b4-ty@pengutronix.de>
Date: Wed, 03 Apr 2024 14:26:15 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240403_052617_548807_29FF077B 
X-CRM114-Status: UNSURE (   6.70  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: rpi: detect mci1 as well when searching for
 environment
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 03 Apr 2024 11:06:02 +0200, Ahmad Fatoum wrote:
> On Raspberry Pi 4, which lacks aliases like other Raspberry Pis,
> the SD-Card is named mci1, while mci0 is the SDIO card.
> 
> Therefore detect both mci0 and mci1 in hope that one of them will
> provide disk0. This is safe to do as barebox will now gracefully
> skip SDIO cards during probe.
> 
> [...]

Applied, thanks!

[1/1] ARM: rpi: detect mci1 as well when searching for environment
      https://git.pengutronix.de/cgit/barebox/commit/?id=8f1923ac8ff6 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



