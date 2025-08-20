Delivery-date: Wed, 20 Aug 2025 14:01:16 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uohVE-002bl3-2m
	for lore@lore.pengutronix.de;
	Wed, 20 Aug 2025 14:01:16 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uohVD-0004bL-Ko
	for lore@pengutronix.de; Wed, 20 Aug 2025 14:01:16 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Ph9TS4HCRJ5YyVvwe0W8mWlJtxWpdmfvqkN/mJRCukw=; b=1G+14hFrecPkcPJ3SPPw0Nc+BD
	G+TNtqGRYU9kOW2+OheIbBVWWRBGDrrB2yxvc2BSNWju24VWOpH+9edXvyiidNopbT+/FfBtythL4
	iZvZaciTJO46vbnTswuJrmQnwPoa4ylLZjr5G8OYQxxHK3iz/M+6S+5CEafYxqmSeo2IEPzMFJIOk
	IAKfiL9VPriio4DYfdRFarlANU1cxnVBfOiTThKJYInwbZHHTCVyGfQ1f6xbRqPOFkyQBeLChDDdB
	1qrNvYG6MT7p0FjO5BEHS5fEjOy6wkQQ1qb2l8hsfuv+YViTefcLn9T/+SToVKw1UgO4Adp96pekn
	q/wUSURg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uohUg-0000000DUux-0Ilv;
	Wed, 20 Aug 2025 12:00:42 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uohOl-0000000DTwG-07Jj
	for barebox@lists.infradead.org;
	Wed, 20 Aug 2025 11:54:36 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uohOj-0003NH-6y; Wed, 20 Aug 2025 13:54:33 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uohOj-001EuB-03;
	Wed, 20 Aug 2025 13:54:33 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uohOi-00EzSj-32;
	Wed, 20 Aug 2025 13:54:32 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Marco Felsch <m.felsch@pengutronix.de>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250820-v2024-05-0-topic-fit-overlay-v6-0-9d1b3bab2ee2@pengutronix.de>
References: <20250820-v2024-05-0-topic-fit-overlay-v6-0-9d1b3bab2ee2@pengutronix.de>
Message-Id: <175569087293.3572423.10806227627734972071.b4-ty@pengutronix.de>
Date: Wed, 20 Aug 2025 13:54:32 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250820_045435_084110_A82B2792 
X-CRM114-Status: UNSURE (   7.82  )
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
Subject: Re: [PATCH v6 00/12] Add FIT image overlay support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 20 Aug 2025 11:48:32 +0200, Marco Felsch wrote:
> this series add the support to load FIT image supplied devicetree overlays.
> 
> The overlay loading wasn't coupled to bootm due to the following
> reasons:
>  - Users can add their own overlay filter
>  - By making use of the common overlay handling we can specifiy a
>    different/separate FIT image which provides only overlays.
>  - It should be possible to apply FIT image overlay to the barebox
>    live-tree (not implemented yet).
> 
> [...]

Applied, thanks!

[01/12] FIT: fix missing free in fit_open error path
        https://git.pengutronix.de/cgit/barebox/commit/?id=d7bcb5628f16 (link may not be stable)
[02/12] FIT: fit_open_configuration: add match function support
        https://git.pengutronix.de/cgit/barebox/commit/?id=b80c7482c24d (link may not be stable)
[03/12] of: overlay: make the pattern match function more generic
        https://git.pengutronix.de/cgit/barebox/commit/?id=3e86141707fc (link may not be stable)
[04/12] of: overlay: make search dir more generic
        https://git.pengutronix.de/cgit/barebox/commit/?id=776d75d7fee6 (link may not be stable)
[05/12] of: overlay: refactor of_overlay_global_fixup
        https://git.pengutronix.de/cgit/barebox/commit/?id=47bbe429d2c5 (link may not be stable)
[06/12] FIT: make fit_config_verify_signature public
        https://git.pengutronix.de/cgit/barebox/commit/?id=b09edeeda82f (link may not be stable)
[07/12] of: overlay: add FIT image overlay support
        https://git.pengutronix.de/cgit/barebox/commit/?id=b712498e2e90 (link may not be stable)
[08/12] of: overlay: replace filename with an more unique name
        https://git.pengutronix.de/cgit/barebox/commit/?id=21df8e760d82 (link may not be stable)
[09/12] of: overlay: add more debugging prints to of_overlay_matches_filter
        https://git.pengutronix.de/cgit/barebox/commit/?id=ec5a278c5671 (link may not be stable)
[10/12] FIT: fit_open: canonicalize provided filename
        (no commit info)
[11/12] FIT: fit_open: save the filename
        (no commit info)
[12/12] FIT: add support to cache opened fit images
        https://git.pengutronix.de/cgit/barebox/commit/?id=f3aadb274abe (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



