Delivery-date: Wed, 11 Sep 2024 10:41:05 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1soIuQ-003QTc-06
	for lore@lore.pengutronix.de;
	Wed, 11 Sep 2024 10:41:05 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1soIuO-0000Zt-VV
	for lore@pengutronix.de; Wed, 11 Sep 2024 10:41:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=BMHPaz1ElYkaOXZGDxWfA1agXfHguEqjyPPioX/WohY=; b=PgANql2tf3uabktaRGoN06fXYz
	Z2y+oKLRR2dqaP8+uxNa2FYAzP3TkoDnnpLhgwb6v0tixcl3IYFfkFqrrOAynACmVgF9yTx5B+NoK
	4tjGWI8i5e6bXd+8vLeN+r9xgILDurZqLbHnKToGdCRh52J4m4O6PfnpTpprIumS10BwxMoJtlAO0
	h29FLG8eajYTzzsdzVn4ERITsciM8TIHfmPF+TRiNMMk9ANiYr7vvUSEXYqxtf4WG+zB+vPh6eY/U
	ejeXjhBAZJKZl6JoXcj91KPbEEDu4YJqAnLw5oUOUdscA3HRYbpZ4XVx+rkXiuepCiGOiKd4FriNZ
	yS+EgpEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1soIu0-00000008i42-3tnP;
	Wed, 11 Sep 2024 08:40:40 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1soItO-00000008hsM-1Vxn
	for barebox@lists.infradead.org;
	Wed, 11 Sep 2024 08:40:03 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1soItM-0008QD-FW; Wed, 11 Sep 2024 10:40:00 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1soItM-0075xo-2Z; Wed, 11 Sep 2024 10:40:00 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1soItM-001gON-05;
	Wed, 11 Sep 2024 10:40:00 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240910085253.46286-1-a.fatoum@pengutronix.de>
References: <20240910085253.46286-1-a.fatoum@pengutronix.de>
Message-Id: <172604400002.401248.18227281391577363748.b4-ty@pengutronix.de>
Date: Wed, 11 Sep 2024 10:40:00 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240911_014002_502200_B67F42DF 
X-CRM114-Status: UNSURE (   6.19  )
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
Subject: Re: [PATCH 1/2] lib: drop separate int_sqrt.h header
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 10 Sep 2024 10:52:52 +0200, Ahmad Fatoum wrote:
> Linux defines int_sqrt in linux/math.h and has the implementations in
> lib/math. We have both these locations, so move the existing code over
> to simplify future sync of math functions.
> 
> 

Applied, thanks!

[1/2] lib: drop separate int_sqrt.h header
      https://git.pengutronix.de/cgit/barebox/commit/?id=fec4d36b7d97 (link may not be stable)
[2/2] include: linux/math.h: sync with linux
      https://git.pengutronix.de/cgit/barebox/commit/?id=5f23bceba750 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



