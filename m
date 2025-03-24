Delivery-date: Mon, 24 Mar 2025 09:26:29 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1twd8g-003Vpy-18
	for lore@lore.pengutronix.de;
	Mon, 24 Mar 2025 09:26:29 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1twd8f-0004et-48
	for lore@pengutronix.de; Mon, 24 Mar 2025 09:26:29 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=bTbH4RoNtthtQadleen1yqXd5NdFcjjK1PP/gZx4qIw=; b=iouAWg7i7aCBnSm2QJWVty5ta7
	JXBp3lg4j4ktHAo8EZ9mU/MEpjmkkr3D/VMYTvLj1wJuhWlUeRCUkECj60wX3kR9k4mql1qSh4167
	lRKLIP6/SEIA1ftZhEqGc3VGpaTvtLDMbh/uRFFJGl2rc/KeniWbL/A2LgFJ74T+Y7fK00/kJ9ZGa
	KgrgMDkc7uEJxgBKB/A12PuGUPnU3XMeOO/MfqfR1VlfHAGVSDGI3b1l6HM3Lv9bRhmF5GbpquOHy
	7f51cujjSCZGlfrC8UVd3cP70qhpGbujw3REmhNIvOkzfwk6E42wLygzijf1S9gx21efvjDu5NV24
	hXRik4MQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1twd85-00000002ZmZ-2F5s;
	Mon, 24 Mar 2025 08:25:53 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1twd81-00000002ZlV-3lyp
	for barebox@lists.infradead.org;
	Mon, 24 Mar 2025 08:25:51 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1twd80-0004PP-Kb; Mon, 24 Mar 2025 09:25:48 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1twd7z-001NUp-3D;
	Mon, 24 Mar 2025 09:25:48 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1twd80-007AG2-19;
	Mon, 24 Mar 2025 09:25:48 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
Cc: Rouven Czerwinski <r.czerwinski@pengutronix.de>
In-Reply-To: <20250319-rpmb-v2-0-a8801fb35cd4@pengutronix.de>
References: <20250319-rpmb-v2-0-a8801fb35cd4@pengutronix.de>
Message-Id: <174280474835.1707553.3054692315084257990.b4-ty@pengutronix.de>
Date: Mon, 24 Mar 2025 09:25:48 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250324_012549_944899_C922ABC8 
X-CRM114-Status: GOOD (  11.41  )
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
X-Spam-Status: No, score=-4.3 required=4.0 tests=AWL,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 00/10] Add RPMB support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 19 Mar 2025 16:30:51 +0100, Sascha Hauer wrote:
> This series adds the necessary pieces to provide OP-TEE access to RPMB
> partitions under barebox.
> 
> With this OP-TEE can issue RPMB requests to barebox and barebox will
> answer them accordingly.
> 
> OP-TEE will only access the RPMB when triggered by barebox. For this
> purpose I implemented access to the Android Verified Boot (AVB) variable
> store. This is implemented in U-Boot as well and the code is loosely
> based on it. The variables can be read/written using the newly
> introduced avb_pvalue command.
> 
> [...]

Applied, thanks!

[01/10] mci: implement mci_set_blockcount()
        https://git.pengutronix.de/cgit/barebox/commit/?id=b577765789e8 (link may not be stable)
[02/10] mci: export some functions for RPMB support
        https://git.pengutronix.de/cgit/barebox/commit/?id=ee62681f52a2 (link may not be stable)
[03/10] mci: detect RPMB partitions
        https://git.pengutronix.de/cgit/barebox/commit/?id=9f567b2c00e5 (link may not be stable)
[04/10] mci: add RPMB support
        https://git.pengutronix.de/cgit/barebox/commit/?id=2473d46b6616 (link may not be stable)
[05/10] tee: optee: probe successfully even when no devices are found
        https://git.pengutronix.de/cgit/barebox/commit/?id=4e1c1ab58982 (link may not be stable)
[06/10] tee: optee: implement shared mem alloc/free RPC commands
        https://git.pengutronix.de/cgit/barebox/commit/?id=551862642a1d (link may not be stable)
[07/10] tee: optee: implement RPMB support
        https://git.pengutronix.de/cgit/barebox/commit/?id=9a0ccf2424d6 (link may not be stable)
[08/10] tee: optee: implement AVB named persistent values support
        https://git.pengutronix.de/cgit/barebox/commit/?id=bb3a50911a62 (link may not be stable)
[09/10] commands: add avb_pvalue command
        https://git.pengutronix.de/cgit/barebox/commit/?id=67e3c6424ffd (link may not be stable)
[10/10] ARM: omap: remove unused file
        https://git.pengutronix.de/cgit/barebox/commit/?id=62bbd20f95f2 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



