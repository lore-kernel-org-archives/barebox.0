Delivery-date: Tue, 06 Aug 2024 07:58:13 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sbDD3-006jSM-1Y
	for lore@lore.pengutronix.de;
	Tue, 06 Aug 2024 07:58:13 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sbDD2-0004Ls-QE
	for lore@pengutronix.de; Tue, 06 Aug 2024 07:58:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=q9vMHsyzjBYts9KHET7UBiU8HYjjTUnao06Qquazdrk=; b=JnBNJJFP0seGbGRWatIBGnFCPA
	bs8Ni83QU+2hBhZ7afq1tdsyB1BpilT6C5EsW3z0AKdjJdRbd0CWq6DFN/FWVELP1u8YR8HvFNgIV
	XfvgBHBJSXhqRivQ8Gj8MiT2R139J4jrlvNCp0D3iomhyjChIdyUNP1lqQKtZC/JGjnf3UIv4RE8u
	vFvGI+MEevq/c2O25qghgACC4zO84MdlAKArcdYgn96HoSdNf4iq1GwVYkOh6bcyNNKkGXpyBii1O
	D8cVd29x96+AOPmvq7YwMM8urObcMVqJ/vbpyqf+NsrAeda1IJQQ7oxmo6BnRL30P5mYBSn8MIimS
	0wU6tkBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sbDCc-00000000cdk-2RON;
	Tue, 06 Aug 2024 05:57:46 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sbDCC-00000000cWW-2kz9
	for barebox@lists.infradead.org;
	Tue, 06 Aug 2024 05:57:22 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sbDCB-0004FU-6w; Tue, 06 Aug 2024 07:57:19 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sbDCA-004sdd-Ps; Tue, 06 Aug 2024 07:57:18 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sbDCA-002jku-2L;
	Tue, 06 Aug 2024 07:57:18 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Stefano Manni <stefano.manni@gmail.com>
In-Reply-To: <20240805140632.1728140-1-a.fatoum@pengutronix.de>
References: <20240805140632.1728140-1-a.fatoum@pengutronix.de>
Message-Id: <172292383872.652477.4573078876084576698.b4-ty@pengutronix.de>
Date: Tue, 06 Aug 2024 07:57:18 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240805_225720_728117_4FE795BD 
X-CRM114-Status: UNSURE (   6.71  )
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
Subject: Re: [PATCH] bootchooser: warn if NV is used instead of
 barebox-state
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 05 Aug 2024 16:06:32 +0200, Ahmad Fatoum wrote:
> I can't think of a reason why the environment would be preferable
> to barebox-state, except for evaluation perhaps.
> 
> Thus warn the user if they configure bootchooser without state.
> 
> 

Applied, thanks!

[1/1] bootchooser: warn if NV is used instead of barebox-state
      https://git.pengutronix.de/cgit/barebox/commit/?id=48091deb4b99 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



