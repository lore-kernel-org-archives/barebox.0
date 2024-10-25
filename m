Delivery-date: Fri, 25 Oct 2024 08:34:42 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t4DuD-000WK6-0j
	for lore@lore.pengutronix.de;
	Fri, 25 Oct 2024 08:34:42 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t4DuD-0002rV-VF
	for lore@pengutronix.de; Fri, 25 Oct 2024 08:34:42 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=lvPiadjGzfpjJCVMFXT3kidibP14O9NnT7o1nPquzuw=; b=MOWri8GCr+D0iOs1guyLKMa4sY
	JfS4JUCeqpfFBc5pkhbdTwSwlrnTFEPPp//mCK+lPtzOENNpZ5m5KDF9iiFH0ImojHyLGnHSUQMMj
	erl6FnmOkZMjag69NDUwnWZoHClcAOxECdFiXQrkM8l2zHm0n1LrBSBtoj5xiQsF26TNy/gyoh/oE
	Uccd/wMfFePiufxdX9q2Ih5F8hmei0fuQNEFq25lTZT1e2lanTfBR/IwwraXGt3UnIf96GyAzo2Ls
	2/izP+RYKZvIPSeaZWWH7yGWE9iqHpmcm7ejxmeSiNIr3NN9W5acEcnjV04zPRRLgQIgs+q7gPHE2
	D1Ksx/0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t4Dtn-00000002h3L-2voV;
	Fri, 25 Oct 2024 06:34:15 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t4Dta-00000002h14-2fVH
	for barebox@lists.infradead.org;
	Fri, 25 Oct 2024 06:34:13 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t4DtZ-0002lS-Ej; Fri, 25 Oct 2024 08:34:01 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t4DtZ-000Jpz-0s;
	Fri, 25 Oct 2024 08:34:01 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t4DtZ-005qTH-0i;
	Fri, 25 Oct 2024 08:34:01 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20241023134307.4159483-1-s.hauer@pengutronix.de>
References: <20241023134307.4159483-1-s.hauer@pengutronix.de>
Message-Id: <172983804122.1393235.4041497576657894361.b4-ty@pengutronix.de>
Date: Fri, 25 Oct 2024 08:34:01 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241024_233402_709316_B85B5FEB 
X-CRM114-Status: UNSURE (   6.16  )
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
Subject: Re: [PATCH] ARM: rockchip_v8_defconfig: Enable VOP2 driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 23 Oct 2024 15:43:07 +0200, Sascha Hauer wrote:
> Enable VOP2 driver to get some compilation coverage for this driver.
> 
> 

Applied, thanks!

[1/1] ARM: rockchip_v8_defconfig: Enable VOP2 driver
      https://git.pengutronix.de/cgit/barebox/commit/?id=4e6deea4a1e5 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



