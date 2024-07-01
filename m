Delivery-date: Mon, 01 Jul 2024 11:58:27 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sODnn-000SmP-2x
	for lore@lore.pengutronix.de;
	Mon, 01 Jul 2024 11:58:27 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sODnn-0004pi-CN
	for lore@pengutronix.de; Mon, 01 Jul 2024 11:58:27 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=NLgAcYuhO8SbyynDa+n67bTXDRwf5A/L9Ny9XYDUcmc=; b=xSBS75x4SRymNizI7TqqU2dsGg
	MWfwAxty1MOjRDSwKVSFmTlhJemI/8jVe2Tm/tBCbb6nQP6FHyV2ECZbdhddBA5B2TQTuvOavIsBf
	+NuKsHE0eD5ot9biVVDz3TFVMGrSrfK/i2J9FK6rMHf0VsnzUVB2WVySw8fvwdhmv87EX3hnPjJ4A
	Q3K+Y6bPXuP7NSxcgwShlOHiGhC78/uHu9lPK7uCq0DcHCO9k1yj3GzwcZYsrnswW4H6HEAf4UuAb
	qFUc2I6bK93zvz9NBBL78bn7FDX3K2pfJ9vMvQ9dF4hIyAKwpNCgcYDl2f14MPBJX8Syn55EVdX+C
	xvmFXD8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sODnI-00000002XWZ-1iNL;
	Mon, 01 Jul 2024 09:57:56 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sODnE-00000002XU5-3JjX
	for barebox@lists.infradead.org;
	Mon, 01 Jul 2024 09:57:54 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sODnD-0004jl-AO; Mon, 01 Jul 2024 11:57:51 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sODnC-006LLt-UC; Mon, 01 Jul 2024 11:57:50 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sODnC-00BkNi-2n;
	Mon, 01 Jul 2024 11:57:50 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240701072714.163239-1-a.fatoum@pengutronix.de>
References: <20240701072714.163239-1-a.fatoum@pengutronix.de>
Message-Id: <171982787086.2799849.10345342293254360509.b4-ty@pengutronix.de>
Date: Mon, 01 Jul 2024 11:57:50 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240701_025752_876907_AC0BB4A8 
X-CRM114-Status: UNSURE (   7.53  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH master] video: backlight: make brightness and slew time
 parameters unsigned
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 01 Jul 2024 09:27:14 +0200, Ahmad Fatoum wrote:
> Despite the backlight parameter being registered as uint32,
> backlight_brightness_set took the brightness level as a signed value.
> 
> This can lead to wrap around for very large values of brightness
> supplied as device parameter and if this results in a negative
> brightness, the function appears to hang, because the slew rate loop
> runs for a long time.
> 
> [...]

Applied, thanks!

[1/1] video: backlight: make brightness and slew time parameters unsigned
      https://git.pengutronix.de/cgit/barebox/commit/?id=7b4c629a16ae (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



