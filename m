Delivery-date: Wed, 03 Sep 2025 08:20:36 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1utgrE-007Y6H-2r
	for lore@lore.pengutronix.de;
	Wed, 03 Sep 2025 08:20:36 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1utgrD-0007k8-OB
	for lore@pengutronix.de; Wed, 03 Sep 2025 08:20:36 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=q542scCBSfk7t4UQbCxyV8hQ0kjK/tp9Vu23xWEo3n8=; b=GTEO/G6SBlryaxeMx1+yoKDi27
	LkOFSyDhzhIJwy3wzQpVc6Juid95sus+wtsARqDaS1YOFum+d/BmUBEeJGSEkvEy5zqsgbhqkIIh2
	wdTvja+jL3BRNuhmc81/57vk8Jia0LxJByu6nJRUT9T3JnX/L8ElBw/D2gpat2/bNyrXeGDFZSamJ
	/HxuDffjHScRORLw/i0nqsvUY4KTM98p8ZRSdbtBIlXe10YkiY9vYDv8CajxEAWHCxhXxpnf32ff9
	GjPukgcFgHYNFgPULtG/NkmIbvfQd2ydugnnyEBJOrO/OofI0BlkEdrNTYPJ9ajed2CXm374ikqMF
	EvHCqAsw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utgqn-00000004ZOP-4AWw;
	Wed, 03 Sep 2025 06:20:09 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utgql-00000004ZKk-0bLt
	for barebox@lists.infradead.org;
	Wed, 03 Sep 2025 06:20:08 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1utgqj-0007TZ-Vs; Wed, 03 Sep 2025 08:20:06 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1utgqj-003VyJ-2Q;
	Wed, 03 Sep 2025 08:20:05 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1utgqj-00000009kry-2u0s;
	Wed, 03 Sep 2025 08:20:05 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
Cc: Matthias Zoechmann <matthias.zoechmann@ife-doors.com>
In-Reply-To: <20250901-imx6-usb-uuu-v1-0-1194bb6135ae@pengutronix.de>
References: <20250901-imx6-usb-uuu-v1-0-1194bb6135ae@pengutronix.de>
Message-Id: <175688040568.2325051.2900386092353743016.b4-ty@pengutronix.de>
Date: Wed, 03 Sep 2025 08:20:05 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250902_232007_192074_4DDDBF6C 
X-CRM114-Status: GOOD (  12.11  )
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
Subject: Re: [PATCH 0/3] i.MX6 uuu support for signed images
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 01 Sep 2025 09:35:28 +0200, Sascha Hauer wrote:
> So far uploading signed images via USB on i.MX6 requires using the
> barebox included imx-usb-loader. This series adds a new image target for
> i.MX6 which generates images compatible with NXPs uuu tool.
> 
> Background is that our signed USB images contain a DCD table to setup
> DRAM. We interpret the DCD table on the host and setup the DRAM using
> register-write commands. The DCD table in the image must then be zeroed
> so that the i.MX6 ROM doesn't execute it again (thus disabling DRAM
> during that process). To overcome the signature check we must sign the
> image with a zeroed DCD table.
> 
> [...]

Applied, thanks!

[1/3] scripts: imx: fix string in further auth block
      https://git.pengutronix.de/cgit/barebox/commit/?id=8a8dffde3e6f (link may not be stable)
[2/3] scripts: imx-image: support DCD_WRITE on closed dev
      https://git.pengutronix.de/cgit/barebox/commit/?id=c722f8cf4369 (link may not be stable)
[3/3] mach-imx: Kconfig: add option for image with dcd auth block
      https://git.pengutronix.de/cgit/barebox/commit/?id=296dcc40ea2b (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



