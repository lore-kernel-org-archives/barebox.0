Delivery-date: Mon, 01 Dec 2025 11:14:14 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vQ0v8-006mfn-2f
	for lore@lore.pengutronix.de;
	Mon, 01 Dec 2025 11:14:14 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vQ0v8-0005CV-9n
	for lore@pengutronix.de; Mon, 01 Dec 2025 11:14:14 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Brt4dayAIFafaaIpw1MxPru80kdQmj1QJJcotAxQLX0=; b=kuZN60TlTwCVHdjqEWlfsxJjVO
	2YHRnr4z/26RYKJ5O+YB0lAl0aXN+2/xWmlFydvNqf0Ej6Wd+ZQAKD/IGWCe+Cw3PqNkLmkf5GeXN
	MOGWUuemKuoixTzWMMHyR4BjNQA8oD+d1x2cSiRtG4MquLCjluqKmCcwNDBEacCUOri967Ujajd/r
	Q8IynI3mk06S/u6NhLkY2oTb/MXJkxaIk5kZHOA+77slFeqMDu5eu1vAY1xpSGObSaxhihtQx4Mro
	5wQcD0rmHhGeCiU1EDH2vNPey6w9DKQGsJm/TjRPMUG8Yi77LY2KUhEwdQBZ7Hw92FZIHnYZNGkLE
	wrmjidrw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQ0uj-00000003IUn-2Pbr;
	Mon, 01 Dec 2025 10:13:49 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQ0uh-00000003IUG-16U1
	for barebox@lists.infradead.org;
	Mon, 01 Dec 2025 10:13:48 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vQ0uf-00056T-K7; Mon, 01 Dec 2025 11:13:45 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vQ0uf-003QVw-1N;
	Mon, 01 Dec 2025 11:13:45 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vQ0uf-00000000eRc-1XKw;
	Mon, 01 Dec 2025 11:13:45 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20251128105010.2507689-1-a.fatoum@pengutronix.de>
References: <20251128105010.2507689-1-a.fatoum@pengutronix.de>
Message-Id: <176458402536.155443.9262185112934999508.b4-ty@pengutronix.de>
Date: Mon, 01 Dec 2025 11:13:45 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251201_021347_303055_FE75A85E 
X-CRM114-Status: UNSURE (   6.86  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] test: exit directly when invoking QEMU states on
 non-QEMU targets
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 28 Nov 2025 11:50:06 +0100, Ahmad Fatoum wrote:
> Instead of running into a lot of later errors, let's just abort
> immediately when trying to use --interactive with a target that doesn't
> support it.
> 
> 

Applied, thanks!

[1/1] test: exit directly when invoking QEMU states on non-QEMU targets
      https://git.pengutronix.de/cgit/barebox/commit/?id=043af2b68ff5 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



