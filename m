Delivery-date: Wed, 03 Sep 2025 08:20:16 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1utgqv-007Y4v-0X
	for lore@lore.pengutronix.de;
	Wed, 03 Sep 2025 08:20:16 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1utgqt-0007Y7-Hm
	for lore@pengutronix.de; Wed, 03 Sep 2025 08:20:16 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=D4A+wihoijfq/fXd6f7gRyb+YxJRjQU2MPJVg8njuoc=; b=HvhDgzMJiStw8d/+lJ6UANjpGp
	q+FlfzflQzcljJppAw9pBqtWaGWgjaxatkJ5U83ksiobNDZV3f3ZIXf9ZhYTNOnw7bpUbcDqGHYzy
	jrkNPqVhAPOuIPMivnjzkWo12/qLJZkQzd2RwsXZne0GxrxAFqqAEM/kDwtyeFm3XSflKHovWR47T
	finizLHNEnIzE6luGYzjjM66mQdV54bqjHOZiJuyqAd9YuZDXZTAEmrExWEp2peBZm7ysrUgmTDyR
	4XMZTuQgheazz4/VeONTtldjSihQ6rR2tF6Tozmj0C1C0+asy1338D4etQe3qYFQA26MsXcIxeLxU
	TpC5xEUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utgqS-00000004Z3W-35eN;
	Wed, 03 Sep 2025 06:19:48 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utglM-00000004WPy-3tJq
	for barebox@lists.infradead.org;
	Wed, 03 Sep 2025 06:14:34 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1utglL-0006BG-MY; Wed, 03 Sep 2025 08:14:31 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1utglL-003VxL-1e;
	Wed, 03 Sep 2025 08:14:31 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1utglL-00000009kZP-1tro;
	Wed, 03 Sep 2025 08:14:31 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250901113808.2487894-1-a.fatoum@pengutronix.de>
References: <20250901113808.2487894-1-a.fatoum@pengutronix.de>
Message-Id: <175688007144.2323910.17125508414747697936.b4-ty@pengutronix.de>
Date: Wed, 03 Sep 2025 08:14:31 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250902_231432_967670_37F731C4 
X-CRM114-Status: UNSURE (   7.51  )
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
Subject: Re: [PATCH] fs: jffs2: silence false positive by always
 initializing variable
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 01 Sep 2025 13:38:07 +0200, Ahmad Fatoum wrote:
> buffer is not initialized when pointed is true, but that can't
> happen, because, unlike Linux, we hardcode the value at 0.
> 
> clang warns about that though, so fix the warning by always
> initializing buffer.
> 
> 
> [...]

Applied, thanks!

[1/1] fs: jffs2: silence false positive by always initializing variable
      https://git.pengutronix.de/cgit/barebox/commit/?id=6d778f786e7f (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



