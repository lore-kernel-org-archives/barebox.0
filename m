Delivery-date: Mon, 02 Jun 2025 14:35:07 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uM4Nf-002xcg-14
	for lore@lore.pengutronix.de;
	Mon, 02 Jun 2025 14:35:07 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uM4Ne-0005Y5-QH
	for lore@pengutronix.de; Mon, 02 Jun 2025 14:35:07 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=kqtGFjBoTNk00UJ9o0tRJ5xGkYDp5fIZ/gltG7bVMs8=; b=LlzdwLE1Fc6Md67uW1IEcxSgZQ
	tMlnBsuJTqlrjMeWSfbd+zuljEgU8NHxRTwtRQ6dI64sLtN2mYcWq9cNJ1kraKOxLPv+wsimtSGyp
	d+NjSWwH4hJ8b+cFk6evDS8ZmCNua9kj0cukUOoveWOjQppSopnEjZtMuSYi/SzGFLeEyrYjX21aP
	owTQgJLcYQ16Xgh6MakMlqLpEC154q4XelHuQ5W4BbwPng24jpLCNUbN1dn1IS91jxLtBOJ3Mrg2C
	oy5AS3ptQfk7eR9So/iWWvtC8GDSrhtHx+OPm2T4OQWrOwIVo9AAU8EzBDVel04kFm6d9Xs81LE4H
	I6KBIrGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uM4NF-00000007NGD-1ANb;
	Mon, 02 Jun 2025 12:34:41 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uM4HE-00000007Mkj-2Nz1
	for barebox@lists.infradead.org;
	Mon, 02 Jun 2025 12:28:29 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uM4HD-00038I-1B; Mon, 02 Jun 2025 14:28:27 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uM4HC-001S9b-2k;
	Mon, 02 Jun 2025 14:28:26 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uM4HC-00484X-2W;
	Mon, 02 Jun 2025 14:28:26 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@barebox.org>
In-Reply-To: <20250602100505.830492-1-a.fatoum@barebox.org>
References: <20250602100505.830492-1-a.fatoum@barebox.org>
Message-Id: <174886730677.984091.11683095150632398857.b4-ty@pengutronix.de>
Date: Mon, 02 Jun 2025 14:28:26 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250602_052828_611816_DD3DF414 
X-CRM114-Status: UNSURE (   6.63  )
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
Subject: Re: [PATCH 1/3] libfile: give copy_file a flags parameter
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 02 Jun 2025 12:05:03 +0200, Ahmad Fatoum wrote:
> In preparation for adding an additional flag input to copy_file, let's
> turn the current copy_file verbose parameter in a bitmask.
> 
> 

Applied, thanks!

[1/3] libfile: give copy_file a flags parameter
      https://git.pengutronix.de/cgit/barebox/commit/?id=00a155fc5b52 (link may not be stable)
[2/3] libfile: pass copy_file flags through copy_recursive
      https://git.pengutronix.de/cgit/barebox/commit/?id=42a166ab0df4 (link may not be stable)
[3/3] libfile: add support for not clobbering files in copy_file
      https://git.pengutronix.de/cgit/barebox/commit/?id=45eaed3b1e30 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



