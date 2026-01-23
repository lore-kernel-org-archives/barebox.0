Delivery-date: Fri, 23 Jan 2026 12:11:57 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vjF54-004SbO-0Z
	for lore@lore.pengutronix.de;
	Fri, 23 Jan 2026 12:11:57 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vjF53-0005ka-5f
	for lore@pengutronix.de; Fri, 23 Jan 2026 12:11:57 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=haAxfOd21qi19zBCjiswjmbQFHs6ynuBPxC7vAguGtE=; b=UM2HjHSaoBGDjkn+zOOXeeMa04
	N8okRaAWivs6L7gwtWWTwLVuzsUIIB+zcx6mL0B8receyXSVp/ccbwHEJAhgdLXEHTaezZH57cLLf
	rR2ZcwtIRvUeCovORCuJkdpSLDlWJT2Mj87P7bRDzpZWNI0wq6cWJ8T/zmFqzh1yZifp2Zs4hvYP/
	FSf77So7HZFXhNz225Ygeh40orZB90w9I0RwImPBtqOM9Srz6okc9l4+gWSZOcv+G65gCEekOW93+
	C5xuPkFnOP9TVx6HDdLz6yf2yywtiOLuNzR2YAYBKDsr+nAJi2djQkmlLOiY0biGRyuB423FIeXvz
	wPR7jS0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vjF4Y-00000008oXj-0mI4;
	Fri, 23 Jan 2026 11:11:26 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vjF4U-00000008oWz-3ci5
	for barebox@lists.infradead.org;
	Fri, 23 Jan 2026 11:11:24 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vjF4L-0005b3-CT; Fri, 23 Jan 2026 12:11:13 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vjF4L-00259w-2j;
	Fri, 23 Jan 2026 12:11:13 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vjF4L-0000000GOFP-0VBJ;
	Fri, 23 Jan 2026 12:11:13 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Jonas Rebmann <jre@pengutronix.de>
In-Reply-To: <20251218151807.691382-1-a.fatoum@pengutronix.de>
References: <20251218151807.691382-1-a.fatoum@pengutronix.de>
Message-Id: <176916667311.3906298.1932334855899042848.b4-ty@pengutronix.de>
Date: Fri, 23 Jan 2026 12:11:13 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260123_031122_908934_5B56081B 
X-CRM114-Status: UNSURE (   8.38  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2] scripts: add helper for generating Origin-URL
 references
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 18 Dec 2025 16:18:06 +0100, Ahmad Fatoum wrote:
> To improve tracking where code originated from, e.g. when porting from
> Linux or U-Boot, some recent commits have started using Origin-URL
> comments. Add a script that can generate them with the assumption that
> the origin project is checked out at exactly the version the code was
> copied from.
> 
> Examples in Vim:
> 
> [...]

Applied, thanks!

[1/1] scripts: add helper for generating Origin-URL references
      https://git.pengutronix.de/cgit/barebox/commit/?id=d6c5023bc580 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



