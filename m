Delivery-date: Tue, 05 Aug 2025 11:36:52 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujE6G-007FYa-0p
	for lore@lore.pengutronix.de;
	Tue, 05 Aug 2025 11:36:52 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujE6F-0004At-H1
	for lore@pengutronix.de; Tue, 05 Aug 2025 11:36:52 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=tWgR4VlHQc+yOdt8Zc14XulEfUcMRVLWytBBX+2HdZ4=; b=uZsIvRoyLafQ1D6QO/ESatOl0N
	Tbkmcwc+WXRw3hmRC9f3XyeOqfkqZYejQFTUEO1wuFFoU4uPTgloz0koL3VYWKExnxkUzjoQ51n0E
	Aiv7kyORiy35F5juy+prEb56JIawTgxME9gurZvSsdvNXHfZTqgy/XhETZIw7eyFrw4tXrT3nTI8A
	ofyiFYH+DTNh5Lmnw77GCO9bX2PZzXA4ljhtPB+SDUJPugyCj9dPOuzx5CchI0vW1lnbp4xm26MjA
	CE93YTqmwCN4HcICrNeEFHsas+uvZPVkCjlw37lhOpAPHEdgTD3Ee6nwEls9fnb6Kdn9NVlFNyGJ7
	mIn4/FqQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujE5n-0000000CO3W-16oT;
	Tue, 05 Aug 2025 09:36:23 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujDvz-0000000CLfh-0oyW
	for barebox@lists.infradead.org;
	Tue, 05 Aug 2025 09:26:16 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1ujDvx-0001mv-99; Tue, 05 Aug 2025 11:26:13 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1ujDvw-00C1Ai-1j;
	Tue, 05 Aug 2025 11:26:12 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1ujDvw-00EjAv-1X;
	Tue, 05 Aug 2025 11:26:12 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@barebox.org>
Cc: Dang Huynh <danct12@riseup.net>
In-Reply-To: <20250708193600.758772-1-a.fatoum@barebox.org>
References: <20250708193600.758772-1-a.fatoum@barebox.org>
Message-Id: <175438597247.3510190.18417908945504738042.b4-ty@pengutronix.de>
Date: Tue, 05 Aug 2025 11:26:12 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250805_022615_241371_FE358CBC 
X-CRM114-Status: UNSURE (   9.76  )
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
Subject: Re: [PATCH 0/4] test: add/document pytest --graphic, --env, --fs
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 08 Jul 2025 21:35:56 +0200, Ahmad Fatoum wrote:
> The --env and --fs options are very useful for passing stuff into QEMU
> without having to assemble images or type stuff into the console.
> 
> Document them and add a new --graphic option that spawns either a Bochs
> ISA, PCI or a ramfb graphic device depending on the target.
> 
> Ahmad Fatoum (4):
>   test: update requirement to Labgrid v25.0
>   test: drop now superfluous extra_args
>   test: document pytest --env and --fs options
>   test: add support for pytest --graphic
> 
> [...]

Applied, thanks!

[1/4] test: update requirement to Labgrid v25.0
      https://git.pengutronix.de/cgit/barebox/commit/?id=382996a55842 (link may not be stable)
[2/4] test: drop now superfluous extra_args
      https://git.pengutronix.de/cgit/barebox/commit/?id=8aa4e85daa4e (link may not be stable)
[3/4] test: document pytest --env and --fs options
      https://git.pengutronix.de/cgit/barebox/commit/?id=4e340a5ea0c7 (link may not be stable)
[4/4] test: add support for pytest --graphic
      https://git.pengutronix.de/cgit/barebox/commit/?id=1481d7be9fc9 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



