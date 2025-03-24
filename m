Delivery-date: Mon, 24 Mar 2025 09:26:28 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1twd8e-003Vp8-2i
	for lore@lore.pengutronix.de;
	Mon, 24 Mar 2025 09:26:28 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1twd8d-0004dj-Kd
	for lore@pengutronix.de; Mon, 24 Mar 2025 09:26:28 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Sag2Biqd24A6QwgPgH/CSyFfZCvQyOOecLYb1Ln1Lho=; b=HF1nJxMUPIB6yJGnpKpSe5pduI
	nTe+xLQTtyrs1BBv9fgVfJcVIDMGAiKibRn5WNbEDByPN0rcFB9wjlUjqxFOR6hlI2oEd7tJLolZ4
	z0rTxOnXbIhE2BH8vP4ESXFB3yR9Jl1zx3VMK4ci0Hgk8jSS7FdVX+X+ntSG8TRJEUqccbWiRPXdM
	X7lr082mwSfE/PvTIlQ4uHZCrbVle0V8IpZr6m14Zcy+t8GyzTOHqZn2x4y3iU3++Bzbz8CpMUAuV
	BelKjuLiZbUU/aPyOvD1WcLlFQmSx5iaxNNu3IxEbOBlLA19Sr/FO5bk4KcIJ7Yatj8hcQLCoJB8N
	tywHtJpw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1twd86-00000002Zmx-2R3H;
	Mon, 24 Mar 2025 08:25:54 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1twd81-00000002ZlT-3m3O
	for barebox@lists.infradead.org;
	Mon, 24 Mar 2025 08:25:52 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1twd80-0004PM-Ja; Mon, 24 Mar 2025 09:25:48 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1twd7z-001NUm-38;
	Mon, 24 Mar 2025 09:25:48 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1twd80-007AG2-13;
	Mon, 24 Mar 2025 09:25:48 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20250312-rpmb-v1-0-0f213382a3f3@pengutronix.de>
References: <20250312-rpmb-v1-0-0f213382a3f3@pengutronix.de>
Message-Id: <174280474832.1707553.5088214962830407332.b4-ty@pengutronix.de>
Date: Mon, 24 Mar 2025 09:25:48 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250324_012549_945977_FCAEAF0B 
X-CRM114-Status: GOOD (  11.06  )
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
Subject: Re: [PATCH 0/9] Add RPMB support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 12 Mar 2025 13:16:15 +0100, Sascha Hauer wrote:
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

[1/9] mci: implement mci_set_blockcount()
      https://git.pengutronix.de/cgit/barebox/commit/?id=b577765789e8 (link may not be stable)
[2/9] mci: export some functions for RPMB support
      https://git.pengutronix.de/cgit/barebox/commit/?id=ee62681f52a2 (link may not be stable)
[3/9] mci: detect RPMB partitions
      https://git.pengutronix.de/cgit/barebox/commit/?id=9f567b2c00e5 (link may not be stable)
[4/9] mci: add RPMB support
      https://git.pengutronix.de/cgit/barebox/commit/?id=2473d46b6616 (link may not be stable)
[5/9] tee: optee: probe successfully even when no devices are found
      https://git.pengutronix.de/cgit/barebox/commit/?id=4e1c1ab58982 (link may not be stable)
[6/9] tee: optee: implement shared mem alloc/free RPC commands
      https://git.pengutronix.de/cgit/barebox/commit/?id=551862642a1d (link may not be stable)
[7/9] tee: optee: implement RPMB support
      https://git.pengutronix.de/cgit/barebox/commit/?id=9a0ccf2424d6 (link may not be stable)
[8/9] tee: optee: implement AVB named persistent values support
      https://git.pengutronix.de/cgit/barebox/commit/?id=bb3a50911a62 (link may not be stable)
[9/9] commands: add avb_pvalue command
      https://git.pengutronix.de/cgit/barebox/commit/?id=67e3c6424ffd (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



