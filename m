Delivery-date: Tue, 07 May 2024 09:32:12 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s4FJ4-000TXS-2h
	for lore@lore.pengutronix.de;
	Tue, 07 May 2024 09:32:12 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s4FJ0-0002X9-NL
	for lore@pengutronix.de; Tue, 07 May 2024 09:32:10 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7xZ6uWlx1TuXFTmTuL0JjcKd1UWQj23FWDlsuBIwSGc=; b=0lEYuAKseJuxikYcUSpP1ByzE6
	Si+HGmRfSdUCAEvqS04wpQVFSRM45Ghdbj4ZZL7NojBWx5PEWr0OdiqKhu5zCspZ9aI4XLqg2sR0s
	Aqj1pYEnc758G7LHwvcnDxKxDDWg9Z/pwy4OuD3jRU/pcH0A15doY77QV6XjGZrgUXfRDrK8hYt52
	hFCK2F8cWP7lF+x89CosPW5CPhbFVGn6mUrFYMaERMxKyfXOYd3FAWBFsSqeIK5C/wU9bTAHJUDeV
	q7fTYQK27umxiCT0Dwdk2mB7bkICa11yHwH2tySWYT03oUftBAqWmjzLRVcqxguWMWBxapg01NtKO
	XRLueYGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s4FIE-00000009zVs-20ab;
	Tue, 07 May 2024 07:31:18 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s4FIB-00000009zUX-1PnU
	for barebox@lists.infradead.org;
	Tue, 07 May 2024 07:31:16 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s4FI7-0002D9-Sp; Tue, 07 May 2024 09:31:11 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s4FI7-0003O2-GY; Tue, 07 May 2024 09:31:11 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s4FI7-003oRf-1S;
	Tue, 07 May 2024 09:31:11 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, 
 =?utf-8?q?Uwe_Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
In-Reply-To: <20240506144606.1562643-6-u.kleine-koenig@pengutronix.de>
References: <20240506144606.1562643-6-u.kleine-koenig@pengutronix.de>
Message-Id: <171506707144.908862.3537819659737384946.b4-ty@pengutronix.de>
Date: Tue, 07 May 2024 09:31:11 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240507_003115_498289_2C3C66E1 
X-CRM114-Status: UNSURE (   8.14  )
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
Subject: Re: [PATCH v2 0/4] mtd: nand: mxc_nand: Only automatically create
 BBT if NAND seems to be pristine
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 06 May 2024 16:46:07 +0200, Uwe Kleine-König wrote:
> this is v2 of this series. The changes are:
> 
>  - More cleanups
>  - Keep checkbad() function (Sascha)
>  - Check each block if it contains a barebox image or a UBI
> 
> (implicit) v1 available at
> https://lore.barebox.org/barebox/20240430094451.1038256-4-u.kleine-koenig@pengutronix.de/T/#t
> 
> [...]

Applied, thanks!

[1/4] mtd: nand: mxc_nand: Improve comment about vendor BBM and address verschwurbelung
      https://git.pengutronix.de/cgit/barebox/commit/?id=4bad7cc26bbd (link may not be stable)
[2/4] mtd: nand: mxc_nand: Cleanup code creating bad block table
      https://git.pengutronix.de/cgit/barebox/commit/?id=23686460eb8b (link may not be stable)
[3/4] mtd: nand: mxc_nand: Add error message if BBT creation fails
      https://git.pengutronix.de/cgit/barebox/commit/?id=8695b02ffa13 (link may not be stable)
[4/4] mtd: nand: mxc_nand: Only automatically create BBT if NAND seems to be pristine
      https://git.pengutronix.de/cgit/barebox/commit/?id=30130286232a (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



