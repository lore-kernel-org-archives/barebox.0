Delivery-date: Thu, 27 Mar 2025 08:45:51 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1txhvz-004mNe-13
	for lore@lore.pengutronix.de;
	Thu, 27 Mar 2025 08:45:51 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1txhvy-0000Se-Oy
	for lore@pengutronix.de; Thu, 27 Mar 2025 08:45:51 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=C1SQ+vSduoYTr/yiw1/C1Z2gkLPFFJMErT1kjHrGSe4=; b=X11pX8bNq6YPVCpLdrDosu4zXK
	9dXnWaZjPbUunfSnxL/05FHc5fM/hTIWZhpdRXRx1LVZGzp6PZXIOoQRj4JuPqAOZytEXrnhQGT0/
	wxUzQBS8i90yo25cjfKL+LBnch8Ay9Fy+1yCVhIbYxmMgqdagWTdIG34QOnViIZ7pi1xgw9Gm9LUc
	lV1xHHXBMPciJx37n/RRdD/RniXlqUvs73uhg7px3HeDjlOfZgbK0FcdsF7+aPjJJ+ZPS+PMfo9ea
	J5cpF6qgc1mwfLJsvU8qKhIVAtBM2mmRj9LMzRdRPZUupdrO2l9FFzBTrW5RFrWbs4tULlOGmIq+m
	J3SCLBww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1txhvY-0000000AMhr-27Yp;
	Thu, 27 Mar 2025 07:45:24 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1txhta-0000000AMGS-3RRE
	for barebox@lists.infradead.org;
	Thu, 27 Mar 2025 07:43:24 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1txhtZ-0008MQ-KS; Thu, 27 Mar 2025 08:43:21 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1txhtZ-001t7d-1P;
	Thu, 27 Mar 2025 08:43:21 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1txhtZ-003Luh-1C;
	Thu, 27 Mar 2025 08:43:21 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Jules Maselbas <jmaselbas@zdiv.net>
In-Reply-To: <20250325155539.32501-1-jmaselbas@zdiv.net>
References: <20250325155539.32501-1-jmaselbas@zdiv.net>
Message-Id: <174306140136.799164.3064845755425951264.b4-ty@pengutronix.de>
Date: Thu, 27 Mar 2025 08:43:21 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250327_004322_861105_968F31BE 
X-CRM114-Status: UNSURE (   7.11  )
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
	autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [PATCH] mtd: spi-nor: add explicit fallthrough
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 25 Mar 2025 16:55:39 +0100, Jules Maselbas wrote:
> Add the fallthrough pseudo keyword: the case sets `need_wren = true;`
> which is used (only read and never written) in the case below.
> 
> 

Applied, thanks!

[1/1] mtd: spi-nor: add explicit fallthrough
      https://git.pengutronix.de/cgit/barebox/commit/?id=323be0d02510 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



