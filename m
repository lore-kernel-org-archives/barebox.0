Delivery-date: Mon, 07 Apr 2025 15:10:18 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u1mF0-009YqH-1w
	for lore@lore.pengutronix.de;
	Mon, 07 Apr 2025 15:10:18 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u1mF0-0002OX-2L
	for lore@pengutronix.de; Mon, 07 Apr 2025 15:10:18 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=cwHE66eLbe5ihFdXUG8wWeykAexx5JpNYD8FDVs/V1U=; b=XMJCz7C1Yhyi4k4xQkHjlGPrJ+
	McGFGWR+M8yv60z09itXTUFhMcJb3fBOKni+lkXlRNv2losPSdpL/3G6yXAqDyjWU7gPh1XMm27kA
	NA35FCGRcX2ejV8P7x9DXCycJnS9sGpi4mLR/QxPNnXLVEAsgHLV+DphEXwR+AAG0Rh0nglXmtrq5
	uROv9JgN/pXp44wBHRDZA7Dz7G0W3leBRCn59AT/NsAvAx/Nz7jFxzDwv7e8AmcW6mv+R06paluM/
	MEoRCFrfDoCRWlTvLU8eMvy/5pj2yLyhXgG32yauHKtELZsV13JOFi1rC6oSX2xsDSGFc8x0APLus
	kAWxefbg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u1mEZ-00000000Qf4-22jl;
	Mon, 07 Apr 2025 13:09:51 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u1mEW-00000000QeD-1H2U
	for barebox@lists.infradead.org;
	Mon, 07 Apr 2025 13:09:49 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u1mEV-0002G4-3h; Mon, 07 Apr 2025 15:09:47 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u1mEU-003lic-2z;
	Mon, 07 Apr 2025 15:09:46 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u1mEU-00CJm6-2k;
	Mon, 07 Apr 2025 15:09:46 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20250407-ratp-fixes-v1-0-4c2501a83bca@pengutronix.de>
References: <20250407-ratp-fixes-v1-0-4c2501a83bca@pengutronix.de>
Message-Id: <174403138685.2935581.16969570098194670219.b4-ty@pengutronix.de>
Date: Mon, 07 Apr 2025 15:09:46 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250407_060948_344989_6EE2878F 
X-CRM114-Status: UNSURE (   6.17  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 0/3] ratp: fixes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 07 Apr 2025 09:29:52 +0200, Sascha Hauer wrote:
> The ratp commands have a wrong alignment on X86 sandbox builds which
> currently breaks the allyes sandbox build. Also the ratp commands are
> placed in a readonly section, but are nevertheless modified. This series
> contains fixes for both issues.
> 
> 

Applied, thanks!

[1/3] ratp: Drop wrong alignment annotation
      https://git.pengutronix.de/cgit/barebox/commit/?id=02b0308c5880 (link may not be stable)
[2/3] ratp: do not export ratp command list
      https://git.pengutronix.de/cgit/barebox/commit/?id=1929b2d0c762 (link may not be stable)
[3/3] ratp: make ratp commands const
      https://git.pengutronix.de/cgit/barebox/commit/?id=e912ead13b75 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



