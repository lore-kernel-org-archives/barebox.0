Delivery-date: Wed, 24 Jul 2024 10:07:52 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sWX2O-002PQW-25
	for lore@lore.pengutronix.de;
	Wed, 24 Jul 2024 10:07:52 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sWX2O-00075D-3T
	for lore@pengutronix.de; Wed, 24 Jul 2024 10:07:52 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=OxrgdmMo7djHxvzatD7X1bGgky0d/W8wkA7AqJCE/eA=; b=u1qr9TFxFSpe5xuh8Xa2MZLA29
	adl5aMMHlhAhRb0RvqK3x+dM2RvApHrab53y3j0CGZUIH+akmiklac4twRIsaIWLi9z2WS9MJQ0jl
	du9QepA9hihpWeu7KPgHui4hefFNP9uBrHyDRhuwUJQDOglULfE9wQy2FFmbAhGHhFzjr6gWxGE1M
	EG9MkKY1EIU6qiQBweY2lBva7Zfxl5xdgSKoTD008YgEEaTBOkuYRNGUMuxXDg+N6aJlInXdUY6HC
	IaqSOf0UrU+tTGECSNb42seUdzT5VvLveIk7Oz+Q2jUJvU6h3N7tCNNgF+B85f+aCUeAEf+fWCyVQ
	qMa0Qthg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sWX1i-0000000Eimz-1LvY;
	Wed, 24 Jul 2024 08:07:10 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sWX1a-0000000EilN-0XTy
	for barebox@lists.infradead.org;
	Wed, 24 Jul 2024 08:07:03 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sWX1Y-0006yJ-MG; Wed, 24 Jul 2024 10:07:00 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sWX1Y-001oQl-9K; Wed, 24 Jul 2024 10:07:00 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sWX1Y-007oQP-0i;
	Wed, 24 Jul 2024 10:07:00 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240722162635.3828172-1-a.fatoum@pengutronix.de>
References: <20240722162635.3828172-1-a.fatoum@pengutronix.de>
Message-Id: <172180842021.1861797.183585960128443072.b4-ty@pengutronix.de>
Date: Wed, 24 Jul 2024 10:07:00 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240724_010702_201507_C3D3A0BE 
X-CRM114-Status: UNSURE (   6.50  )
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
Subject: Re: [PATCH] lib: kasan: kasan_test: hide buggy access after
 xzalloc from compiler
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 22 Jul 2024 18:26:35 +0200, Ahmad Fatoum wrote:
> Commit 187b85361236 ("KASan: test_kasan: hide buggy accesses from
> compiler") used OPTIMIZER_HIDE_VAR() to hide the origin of pointers.
> 
> This became necessary when __alloc attributes were added to malloc().
> We now add the same attributes to xzalloc as well bring back warnings
> for the single xzalloc call in the file.
> 
> [...]

Applied, thanks!

[1/1] lib: kasan: kasan_test: hide buggy access after xzalloc from compiler
      https://git.pengutronix.de/cgit/barebox/commit/?id=f5e54a0274fe (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



