Delivery-date: Wed, 10 Jun 2026 20:23:34 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wXNaQ-004QjF-2A
	for lore@lore.pengutronix.de;
	Wed, 10 Jun 2026 20:23:34 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wXNaQ-0001ZE-4Q
	for lore@pengutronix.de; Wed, 10 Jun 2026 20:23:34 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=HZ8CrFhToHDYyaZCXuQHgJARN4AY7phDaxLfZNDgE6A=; b=TyWgrVwwbelKQvM1XdMk8FVxNh
	vpTjzzpHu8cyai2DxMT0uwd3XsiC0SET9m0qCP8xOvXDnIfwa/4nKGDnXp6SqwwSxLUa0Y9RwOgwx
	FkyymK5umOBb1NdOMCoVBJ1jm5caT7mZwZPpzR3E6V7qex67qrcbvbTUGS7JgcH0i2E4RpgsZj+rg
	sYw05Etsq8zT7I1mHwwiNj61AvOXdAYd2lqeUqoR4R5EeLwjbBWLIRUnQBAar/CQ8t3nKbmb58iUI
	yPkooEbHMMAI3YpN9xkGjmmTpZHcLrDd0GjzNPpEErXs98dTypH512Xw0EikS9RfDrzW6YUkyHd9u
	OsxH2xrg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXNZ6-00000008EYS-0sfn;
	Wed, 10 Jun 2026 18:22:12 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXNZ3-00000008EXr-2EPx
	for barebox@lists.infradead.org;
	Wed, 10 Jun 2026 18:22:10 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1wXNZ0-0001Km-N3; Wed, 10 Jun 2026 20:22:06 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1wXNZ0-0025mw-29;
	Wed, 10 Jun 2026 20:22:06 +0200
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.98.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1wXNZ0-0000000C2lR-2N2c;
	Wed, 10 Jun 2026 20:22:06 +0200
Date: Wed, 10 Jun 2026 20:22:06 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Bastian Krause <bst@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <q2zttftlihayvgnlfusxokcrby6c4fup3t47djebdzwfn6sacc@dleeabj6r4ex>
References: <20260610174919.3813577-1-bst@pengutronix.de>
 <20260610174919.3813577-2-bst@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260610174919.3813577-2-bst@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260610_112209_566488_326053E8 
X-CRM114-Status: UNSURE (   4.95  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 2/2] ARM: nxp-imx93-frdm: add bbu handler for eMMC
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 26-06-10, Bastian Krause wrote:
> This allows updating barebox via barebox_update as well as via fastboot.
> 
> Signed-off-by: Bastian Krause <bst@pengutronix.de>

Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>


