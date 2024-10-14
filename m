Delivery-date: Mon, 14 Oct 2024 15:22:47 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t0L27-004Gny-2l
	for lore@lore.pengutronix.de;
	Mon, 14 Oct 2024 15:22:47 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t0L27-0001fl-6W
	for lore@pengutronix.de; Mon, 14 Oct 2024 15:22:47 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=pWmgyMh3/siTJtVbanVmn8novo7lrA5HeWVGkXr+70M=; b=PvQkYFSQ6WR1aQPQeBT6PfPyDO
	r4PFo+xB8tyKGny8lxs9M25LLzPevZHibZhl7EuxiUqiMmWQPujMjqa4Vq1RNhLC+tnoybYW3pZtI
	vXcOvcP4cQta0U7V5Zti8711Y8p7izfJ4S/3ABh5d5uCB4aHQ3svLVtuZHIn6pNWbAmLEIBhOMYbj
	H0CEoLizJmKmLOeVFU31aAvowBhrQYmj0U0qkoSMEswThZNQ9Ed/JjZFFvIw2PD0Ksh3Ec4X7cOpz
	I4V/J3llsiwQ7rLleRdEnMZhNk0gV9gkl+WLPFjOqsC2qHSglzpMsh8jLymkXGx8JxWgeiSQA8iJb
	EPjwWaew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t0L1X-00000005Eto-3p1v;
	Mon, 14 Oct 2024 13:22:11 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0JAB-00000004uQ4-0gxZ
	for barebox@lists.infradead.org;
	Mon, 14 Oct 2024 11:23:00 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t0JA9-0007nP-UV; Mon, 14 Oct 2024 13:22:57 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t0JA9-001mEg-I3; Mon, 14 Oct 2024 13:22:57 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t0JA9-00Gu6z-1W;
	Mon, 14 Oct 2024 13:22:57 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, 
 Michael Grzeschik <m.grzeschik@pengutronix.de>
In-Reply-To: <20241009150159.2597633-1-m.grzeschik@pengutronix.de>
References: <20241009150159.2597633-1-m.grzeschik@pengutronix.de>
Message-Id: <172890497745.4028726.15954508562817226352.b4-ty@pengutronix.de>
Date: Mon, 14 Oct 2024 13:22:57 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241014_042259_239075_432BC164 
X-CRM114-Status: UNSURE (   5.63  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] commands: mmc: write_reliability: bail out early if
 already set
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 09 Oct 2024 17:01:59 +0200, Michael Grzeschik wrote:
> Some cards may have HS_CTRL_REL set as 0. This is obsolete
> per-spec, but seems to indicate that write reliability was
> factory-set. Therefore, just bail out early before checking the
> parm.
> 
> 

Applied, thanks!

[1/1] commands: mmc: write_reliability: bail out early if already set
      https://git.pengutronix.de/cgit/barebox/commit/?id=8a79662c1b46 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



