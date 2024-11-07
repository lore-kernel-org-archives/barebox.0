Delivery-date: Thu, 07 Nov 2024 10:44:59 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t8z4T-005sF7-38
	for lore@lore.pengutronix.de;
	Thu, 07 Nov 2024 10:44:59 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t8z4U-0003wP-Lp
	for lore@pengutronix.de; Thu, 07 Nov 2024 10:44:59 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=PT7hE1fzjU5/5d+INpwOkP4JxUiZfsSmkOiNrHBMWWY=; b=Z+vEn9peGu1bGnc8A52Zxi79Hd
	UbRc/DHHXTFZHHvo8uaXxZRsx0AIr9nq8vGsUA6UYqrChMlhhr9nDF35t8luFuJLERKsXPqTtLtYa
	BNN0UtY92HXi2w1yhAta0Qru45P5Mlt2kgVNawH16mBm/wHMrTs9HjggbKuHCrYi4qV+waImBh6+A
	zl+1UKzMmibRRdsZba3K8hnkdayTPQyqsQ/GyXfzvijeZkNY8JdVWGibGmw1+mfhwbpNNVblmYUhF
	jAjKOV3YQsFRhZREgHqBUEpJnyfXdmQd+FAqAZ8/p1IlncRX5ueEhAF1fMcKTEIbXU2q2nc6lNp1i
	mg4x4seQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t8z44-00000006LDo-0lrq;
	Thu, 07 Nov 2024 09:44:32 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t8z3r-00000006LC9-3hPx
	for barebox@lists.infradead.org;
	Thu, 07 Nov 2024 09:44:30 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t8z3q-0003qd-Nb; Thu, 07 Nov 2024 10:44:18 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t8z3q-002RJx-1L;
	Thu, 07 Nov 2024 10:44:18 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t8z3q-009576-1A;
	Thu, 07 Nov 2024 10:44:18 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Justin Bronder <jsbronder@cold-front.org>
In-Reply-To: <20241106172521.604842-1-jsbronder@cold-front.org>
References: <20241106172521.604842-1-jsbronder@cold-front.org>
Message-Id: <173097265835.2164597.3348102560242303100.b4-ty@pengutronix.de>
Date: Thu, 07 Nov 2024 10:44:18 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241107_014419_954209_B70C7062 
X-CRM114-Status: UNSURE (   7.86  )
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
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] lib: lz4: use lz4 instead of lz4c
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 06 Nov 2024 12:25:21 -0500, Justin Bronder wrote:
> lz4c has been considered deprecated by upstream since at least 2018 [1]
> and has been disabled by default recently [2].  openSUSE Tumbleweed is
> no longer packaging the deprecated version and others will likely
> follow.
> 
> Going back as far as Ubuntu 16.04/Fedora 25, both lz4 and lz4c are
> installed as part of the same package so switching should be safe.
> 
> [...]

Applied, thanks!

[1/1] lib: lz4: use lz4 instead of lz4c
      https://git.pengutronix.de/cgit/barebox/commit/?id=2a29c0606150 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



