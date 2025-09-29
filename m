Delivery-date: Mon, 29 Sep 2025 09:26:39 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v38HP-002L7I-1L
	for lore@lore.pengutronix.de;
	Mon, 29 Sep 2025 09:26:39 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v38HO-0005VC-TL
	for lore@pengutronix.de; Mon, 29 Sep 2025 09:26:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=bvM3+klsFGOaYVbyBX0jAOWN36kHyw+rxiRI3EKlyQs=; b=1gKoTD28ZQmjvwaJmYUR22OB8E
	EzR7ex1gGAO1eDWMeOLRoXyFQkyrxD/cRw45whvMNxuCinFQ4qiBjUhnkF+yHCSymYE2zdToRxA3h
	yYWGG0Gs7z1Sc7Z1tZUEBkUNtWaKVO8TbOir9iGxT9ulxp+RNHgqDDJaoXQFuMEaStFhcQ9SRhp/k
	EeHMIpfm/o5oeVvYTwexhKNcufenT1L5fwpkwTl0LcRCDiDZ6t7CiQs+9KWSSgsvJxzTv37uZCa6a
	69BOt2pyZ1/6slyj1DqX4qMMzYNZK5tTVMfTiIh5C3FoVdVXxFUBFCA39f/O/peedvkScD3uao2DM
	pxDl63+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v38Gz-00000001bps-1od2;
	Mon, 29 Sep 2025 07:26:13 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v38Gw-00000001bpR-1P9I
	for barebox@lists.infradead.org;
	Mon, 29 Sep 2025 07:26:11 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1v38Gt-0005K9-Ka; Mon, 29 Sep 2025 09:26:07 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1v38Gt-0012Nk-1S;
	Mon, 29 Sep 2025 09:26:07 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1v38Gt-00000000r9e-1ef6;
	Mon, 29 Sep 2025 09:26:07 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Michael Tretter <m.tretter@pengutronix.de>
In-Reply-To: <20250926-bootchooser-doc-v1-1-d07fb39ffacd@pengutronix.de>
References: <20250926-bootchooser-doc-v1-1-d07fb39ffacd@pengutronix.de>
Message-Id: <175913076738.204305.17690537056235990249.b4-ty@pengutronix.de>
Date: Mon, 29 Sep 2025 09:26:07 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250929_002610_375556_7D4F4BAF 
X-CRM114-Status: UNSURE (   8.36  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] doc: bootchooser: use 0 as base for system targets
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 26 Sep 2025 16:07:08 +0200, Michael Tretter wrote:
> Most barebox-state configurations in upstream define the bootchooser
> targets as system0 and system1. The RAUC bootchooser documentation uses
> system0 and system1, too. This is different from the bootchooser
> documentation in barebox, which uses system1 and system2 in its
> examples.
> 
> Change the barebox documentation to be consistent with what most users
> will probably find on their respective systems.
> 
> [...]

Applied, thanks!

[1/1] doc: bootchooser: use 0 as base for system targets
      https://git.pengutronix.de/cgit/barebox/commit/?id=65a86ad2ef88 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



