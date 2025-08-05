Delivery-date: Tue, 05 Aug 2025 09:41:52 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujCIy-007Dcv-2g
	for lore@lore.pengutronix.de;
	Tue, 05 Aug 2025 09:41:52 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujCIy-0006Sa-Ax
	for lore@pengutronix.de; Tue, 05 Aug 2025 09:41:52 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xYnq+KcJ6kzav8m5H3zZgJ+dl5nal3vy9/HBErFktZI=; b=F43yFxSYwkEfoAXn5lVrfAJjLm
	wM+e0+0GxosNbaNLOBsHGmkHiIYMOCrc1EMk+fyZRs8sCUbZOZvzfzx/83qOYdvkeqNRXWRYG0mIs
	EQbZfJiStGdbRZ7ZUzWu99wjn0aL2IzX58oE3S39aVpxYOgOZO1e5jW2j9VTwBtv8uVcu/Hvf2qQH
	XDjWWT4Srn8KB9TPT244+s/tGmWqd2Pa6q1Hsz8FyrZLjARL+gtL0Yetg1baRyqpCWNSsY+YtgoTe
	agz2zQkD96adwutgtahkCaz5FQbUL+5H6DryhO05xfNna4eXO0Ci6FH5iBcFovtMLiAZdbYm1wUmo
	S2ol91bQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujCIa-0000000C2uo-2EBR;
	Tue, 05 Aug 2025 07:41:28 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujCIX-0000000C2uK-2uNo
	for barebox@lists.infradead.org;
	Tue, 05 Aug 2025 07:41:26 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1ujCIW-0006I3-H6; Tue, 05 Aug 2025 09:41:24 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1ujCIW-00C0L4-16;
	Tue, 05 Aug 2025 09:41:24 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1ujCIW-00Ed3y-0v;
	Tue, 05 Aug 2025 09:41:24 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Michael Tretter <m.tretter@pengutronix.de>
In-Reply-To: <20250729135924.122052-1-m.tretter@pengutronix.de>
References: <20250729135924.122052-1-m.tretter@pengutronix.de>
Message-Id: <175437968428.3486733.11896734678075856380.b4-ty@pengutronix.de>
Date: Tue, 05 Aug 2025 09:41:24 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250805_004125_739902_558B2F34 
X-CRM114-Status: UNSURE (   9.94  )
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
Subject: Re: [PATCH] commands: mmc_extcsd: fix calculation of RPMB size
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 29 Jul 2025 15:59:24 +0200, Michael Tretter wrote:
> EXT_CSD_RPMB_SIZE_MULT contains the number of 128 KB blocks in the RPMB.
> While the calculated RMPB is labeled as KB, it actually contains the
> size in bytes.
> 
> Fix the calculation to report the RPMB size in KB.
> 
> An alternative would have been to change the label to bytes, but since
> the RPMB size is at least in an order of magnitude of KB, changing the
> label is not intuitive.
> 
> [...]

Applied, thanks!

[1/1] commands: mmc_extcsd: fix calculation of RPMB size
      https://git.pengutronix.de/cgit/barebox/commit/?id=88b5cfb580fe (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



