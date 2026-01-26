Delivery-date: Mon, 26 Jan 2026 08:57:01 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vkHT4-005TJ0-1F
	for lore@lore.pengutronix.de;
	Mon, 26 Jan 2026 08:57:01 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vkHT3-0008Sa-Ci
	for lore@pengutronix.de; Mon, 26 Jan 2026 08:57:01 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=BlYJvNFMUz0NRq32K0wozHI9ZiW3F9mOmTiBf8fyLSU=; b=ZZmOQjxmdTBctXzgXVEDkVuHZC
	RyPWLIuBLsi8Nsw7ygzrft1CiBgylV8XZ8Fi8kKIwwNJ6DMQqA3ivxg27YK69h1N/K0FTSqaQIwvA
	epPttUn19qkW0U3lyiTN1ZCC5QrMpEeLC1BBD+ynLUqGHydDskss4dSWB4Kn+xqqsmXuiz8zW+t3F
	vE/gehVyPuskRv3fhgYLD/mPqfEZ8ChfXiZ78BZdmjOFsZI61NgCnHcZv9fUGqetcUQ5+zSToRN7u
	0du0zB+RDvqkPgFoRE3Xr3E+2v+zQ/zMTXT6SkPuJBxwt5qLLOjBEkVOVA293/2KBJ8Y1nNH+WBu7
	TCV7liNg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkHSV-0000000C4Hb-2Nq9;
	Mon, 26 Jan 2026 07:56:27 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkHSS-0000000C4Gu-2KbT
	for barebox@lists.infradead.org;
	Mon, 26 Jan 2026 07:56:25 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vkHSR-0008Mp-28; Mon, 26 Jan 2026 08:56:23 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vkHSR-002XoQ-1l;
	Mon, 26 Jan 2026 08:56:22 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vkHSR-00000000jKK-1CuF;
	Mon, 26 Jan 2026 08:56:22 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20251117-soc-uid-v2-0-a2415bf9133d@pengutronix.de>
References: <20251117-soc-uid-v2-0-a2415bf9133d@pengutronix.de>
Message-Id: <176941418281.174063.16419010478973423369.b4-ty@pengutronix.de>
Date: Mon, 26 Jan 2026 08:56:22 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260125_235624_596432_6FB6ECEA 
X-CRM114-Status: UNSURE (   8.39  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 0/9] Unify SoC UID and machine hashable data
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 17 Nov 2025 09:35:33 +0100, Sascha Hauer wrote:
> SoC UID and machine hashable data are both based on the same data but
> are both registered at different places with different functions.
> 
> This series aims to unify this by adding a function which uses the
> passed SoC UID to provide it to the environment and also to register
> machine hashable data.
> 
> [...]

Applied, thanks!

[1/9] introduce SoC UID
      https://git.pengutronix.de/cgit/barebox/commit/?id=c08b9d71cf88 (link may not be stable)
[2/9] soc: imx8mp: Soc ID is 128bit
      https://git.pengutronix.de/cgit/barebox/commit/?id=04cd52b05106 (link may not be stable)
[3/9] ARM: i.MX6: print leading zero for SoC ID
      https://git.pengutronix.de/cgit/barebox/commit/?id=992e3ab97b95 (link may not be stable)
[4/9] nvmem: bsec: call barebox_set_soc_uid()
      https://git.pengutronix.de/cgit/barebox/commit/?id=1a32d891915f (link may not be stable)
[5/9] nvmem: imx-ocotp-ele: call barebox_set_soc_uid()
      https://git.pengutronix.de/cgit/barebox/commit/?id=22eb66644d4d (link may not be stable)
[6/9] nvmem: ocotp: Fix SoC ID reading for i.MX8MP
      https://git.pengutronix.de/cgit/barebox/commit/?id=27d385ec7ef9 (link may not be stable)
[7/9] nvmem: imx-ocotp: call barebox_set_soc_uid()
      https://git.pengutronix.de/cgit/barebox/commit/?id=f2080b0e55bc (link may not be stable)
[8/9] soc: imx8m: register SoC UID
      https://git.pengutronix.de/cgit/barebox/commit/?id=966df836f1c9 (link may not be stable)
[9/9] Documentation: migration: add i.MX8MP SoC UID change note
      (no commit info)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



