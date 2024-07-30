Delivery-date: Tue, 30 Jul 2024 11:33:08 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sYjEC-004Q4x-1D
	for lore@lore.pengutronix.de;
	Tue, 30 Jul 2024 11:33:08 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sYjEB-0004dl-QD
	for lore@pengutronix.de; Tue, 30 Jul 2024 11:33:08 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=cFkq2gHhIKe0XIENGoW4fioNvBfzxHpCwilRirWQIVo=; b=uGQL4tqxIasqHE7KBWp5/VlYbD
	wVLRaLuOZPT1H5pkkRtjtut8CSUEPnopy1QZIByNnR9bZD0PsdMm1bgctc8Btwf8o2AR0N7VYORT7
	Bx3Ev7RKmJQxqgCWJy5sgfYz8fFY5vCCwRakeiyh0+Pd8VJ/hehqSSZfLefHd2deB2VC+/3om9Xai
	gTXpLolmEzJCLUbM6MntQ/CQ1rgb4PYQwLU+tk/PQpEtt7EFKFFDKc024cIU6u9pEmsxEqZ17J78C
	lURBgb3Ks5UeV4tBPdQELD+q+OWurrOetwDk+heRHUn/3LLomaplVyAx+JsTIWl/i1ADXSd1Qj7eE
	b5NzYtaA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYjDm-0000000EXR9-2G4p;
	Tue, 30 Jul 2024 09:32:42 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYjDj-0000000EXPo-2e1P
	for barebox@lists.infradead.org;
	Tue, 30 Jul 2024 09:32:41 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sYjDi-0004SI-30; Tue, 30 Jul 2024 11:32:38 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sYjDh-003Fhz-Gy; Tue, 30 Jul 2024 11:32:37 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sYjDh-005nlm-1T;
	Tue, 30 Jul 2024 11:32:37 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Richard Weinberger <richard@nod.at>
Cc: upstream+barebox@sigma-star.at
In-Reply-To: <20240702194427.936-1-richard@nod.at>
References: <20240702194427.936-1-richard@nod.at>
Message-Id: <172233195745.1382929.12988670780161115293.b4-ty@pengutronix.de>
Date: Tue, 30 Jul 2024 11:32:37 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240730_023239_707889_7952E88D 
X-CRM114-Status: UNSURE (   8.62  )
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
Subject: Re: [PATCH] ext4: Fix integer overflow in ext4fs_read_symlink()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 02 Jul 2024 21:44:27 +0200, Richard Weinberger wrote:
> While zalloc() takes a size_t type, adding 1 to the le32 variable
> will overflow.
> A carefully crafted ext4 filesystem can exhibit an inode size of 0xffffffff
> and as consequence zalloc() will do a zero allocation.
> 
> Later in the function the inode size is again used for copying data.
> So an attacker can overwrite memory.
> 
> [...]

Applied, thanks!

[1/1] ext4: Fix integer overflow in ext4fs_read_symlink()
      https://git.pengutronix.de/cgit/barebox/commit/?id=a2b76550f7d8 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



