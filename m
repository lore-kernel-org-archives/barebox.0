Delivery-date: Mon, 13 May 2024 11:26:44 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s6RxE-00CMo1-0O
	for lore@lore.pengutronix.de;
	Mon, 13 May 2024 11:26:44 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s6RxD-0007Uj-Jn
	for lore@pengutronix.de; Mon, 13 May 2024 11:26:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+A7GlUDvluP7A78/L0/anFO+P2U6uq46c1ZXhxtODLM=; b=rqZ5oT8dzWK+2cxmVk1uju+YOP
	jSoGHmVIAvnSEp90y0y2fNkJ6dzHg0MhXaZ9iVdnKlW0+VwWKOMDTddFSylhNDxNRPI0mLBQAOkw5
	W/Vdmn8zwmmDPddeX34xhtFqnnEO2XWvQNfHcCV1//Dgsr/LKnjbpPZf2JjrG/9T2sJ7rT9vw+Fs0
	vcuQDUxPpY6+Jo+GjHZlJg8LJhXF/5vmfhkE+6ztGp9tkXEWfu5P/Z44BYa9zjXqxbuy22CqANNDQ
	oAhEAnM7l0mYFWmNPL5828JATlveFljoaa+ao7apYE8HfdVWVCHf4EQNrKId7L7/GSdJEZOng1o6U
	i61Rb0Vw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s6Rwi-0000000CO5k-21St;
	Mon, 13 May 2024 09:26:12 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s6Rwf-0000000CO4g-14VP
	for barebox@lists.infradead.org;
	Mon, 13 May 2024 09:26:10 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s6Rwd-0007Jg-Sa; Mon, 13 May 2024 11:26:07 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s6Rwd-0018tm-9c; Mon, 13 May 2024 11:26:07 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s6Rwd-00EvOI-0k;
	Mon, 13 May 2024 11:26:07 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Antony Pavlov <antonynpavlov@gmail.com>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240509093548.52130-1-antonynpavlov@gmail.com>
References: <20240509093548.52130-1-antonynpavlov@gmail.com>
Message-Id: <171559236722.3557185.7216231984792959653.b4-ty@pengutronix.de>
Date: Mon, 13 May 2024 11:26:07 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240513_022609_355352_24FB5787 
X-CRM114-Status: UNSURE (   4.05  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] Documentation: devel: project-ideas: fix typo
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 09 May 2024 12:35:48 +0300, Antony Pavlov wrote:
> 


Applied, thanks!

[1/1] Documentation: devel: project-ideas: fix typo
      https://git.pengutronix.de/cgit/barebox/commit/?id=f15f63ae50d1 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



