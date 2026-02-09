Delivery-date: Mon, 09 Feb 2026 14:49:53 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vpReD-00AZW8-1N
	for lore@lore.pengutronix.de;
	Mon, 09 Feb 2026 14:49:52 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vpReC-0007GE-Fj
	for lore@pengutronix.de; Mon, 09 Feb 2026 14:49:52 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=GF34CtlYgXvx2FGLGkv/IvhFCLXH9Kj0hQKMt2czswQ=; b=HimUsZTe5yqr0IO3XyGj1VIG0r
	7lGlq+2/r8UeGkr6bugzlJ8es+NrqD0JHPlEzPpl7cnxP43vwqLMXIDWlYVuc2eR2EN3WwIO7pqFi
	9YhHh3OWBvU8lqJHb8QN4TjwCle5EshWe8MV5ACFN5ALE9mgNQzMv19bNjAs8TTi6pNTU5h/X6PpR
	T190LbRFA+zkbcwxnWKYtD9P+m/rSszQrzlMn7QMXzdoAxYnmx+apAWKLKfn/uH7S6czC6vRy5ORu
	ZFVVvMylXdcyUzflOXicWqG/BCMYe3ZrAO/8/KbfsWrGThWB+gT1KUEqQKXPI6kQKHBBgoYizwTMA
	YXgYC0LQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpRdp-0000000FSa6-3gle;
	Mon, 09 Feb 2026 13:49:29 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpRdn-0000000FSZl-0ReC
	for barebox@lists.infradead.org;
	Mon, 09 Feb 2026 13:49:28 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vpRdk-0007BR-87; Mon, 09 Feb 2026 14:49:24 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vpRdk-004to7-2M;
	Mon, 09 Feb 2026 14:49:24 +0100
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vpRdj-00000002mqS-48rW;
	Mon, 09 Feb 2026 14:49:23 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Marco Felsch <m.felsch@pengutronix.de>
In-Reply-To: <20260204203955.1716104-1-m.felsch@pengutronix.de>
References: <20260204203955.1716104-1-m.felsch@pengutronix.de>
Message-Id: <177064496397.664407.12006800967714648224.b4-ty@pengutronix.de>
Date: Mon, 09 Feb 2026 14:49:23 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260209_054927_173073_0A9DB415 
X-CRM114-Status: UNSURE (   7.49  )
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
Subject: Re: [PATCH master] bootm: fix initrd pr_info
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 04 Feb 2026 21:39:44 +0100, Marco Felsch wrote:
> The initrd is NULL if provided via a FIT, this leads to unwanted prints
> like:
> 
> | Loaded initrd from Flattened Image Tree <NULL> to 0x0000000043e70000-0x000000004409a38a
> 
> Fix this by checking the initrd and pass an empty sting if not set.
> While on it fix the superfluous newline.
> 
> [...]

Applied, thanks!

[1/1] bootm: fix initrd pr_info
      https://git.pengutronix.de/cgit/barebox/commit/?id=0730f1ea9e49 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



