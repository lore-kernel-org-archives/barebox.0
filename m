Delivery-date: Tue, 29 Apr 2025 17:25:18 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u9mpi-000XAu-2r
	for lore@lore.pengutronix.de;
	Tue, 29 Apr 2025 17:25:18 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u9mpi-00037b-7S
	for lore@pengutronix.de; Tue, 29 Apr 2025 17:25:18 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=tUk4SK8pe3CSx9E1Sz3pZedZl4oLJ5YSYPmLJPNO7xc=; b=3eDlu4vebK/NZFCoAQPd9zEfTK
	Hpo6rH7JLTkN//DQUksXd639R5QuWYCSj6gmcR2SNVmbOhubtmZ4rPfL6mqxgSppk5POfmYVOJv1x
	u02z6kxRe0F22IyZSsR+XOQ+8GDxmgZjr//XMKk2ccABSqoZwXpsGkk22CFE/7YPdWKoPYWAqVoEX
	aOCShmi5IKBtYn5jZNOYZXUEwI0BtaSIl2y3O/XOz33wmOSozwP1Y9rH4Ufck4O6XretwwAHV/5+P
	uDqFYt/WD9hRj8qXhv2jmqRRlXG3Ad9jpluvLisEDTAN2fhxGgxKvEO+7QSoaGU8a1GfRS/fzFTnS
	r6ycpRCw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u9mpI-0000000A74B-3gYY;
	Tue, 29 Apr 2025 15:24:52 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u9mOi-0000000A2BZ-0K5E
	for barebox@bombadil.infradead.org;
	Tue, 29 Apr 2025 14:57:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:From:Sender:
	Reply-To:Cc:Content-ID:Content-Description;
	bh=tUk4SK8pe3CSx9E1Sz3pZedZl4oLJ5YSYPmLJPNO7xc=; b=kXYsVsNUoMIsRRsSnPRbvhC87z
	2YCpDdN6+KNCYFE7fRAYLX7EiyipymZpCRcaO3Qe7qTbGGFtZ/TR/Tm6lL2eJzOHwfYPYpk+8IO2z
	3xLpAGtnOPBHLQX+h6wHYSbPkrnZQnMUxY4pJmtikRHMK0lAKlGttYi6Iq/FcQNvEUEjpMEwn+ekd
	pYTrqij5vqZZjsynXxcTvX35aY8xn0giap1Y5b/qP9rmCz8+P1MerEMYN/fXHG5bCEaB4bIbpaNfH
	ujydybyrMNUUkfUPHhiK1jZXxMk6Ds+fhDtWY6xF58PyIV4QUVxglicdXmAHkWyM1hB+L8cVnYkFj
	W9dRAmVQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u9mOe-0000000DQ6J-3J1u
	for barebox@lists.infradead.org;
	Tue, 29 Apr 2025 14:57:23 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u9mOe-000284-6S; Tue, 29 Apr 2025 16:57:20 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u9mOe-000HMz-03;
	Tue, 29 Apr 2025 16:57:20 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u9mOd-00D4cf-34;
	Tue, 29 Apr 2025 16:57:19 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250429075605.3012311-1-a.fatoum@pengutronix.de>
References: <20250429075605.3012311-1-a.fatoum@pengutronix.de>
Message-Id: <174593863994.3115958.14916855584080733153.b4-ty@pengutronix.de>
Date: Tue, 29 Apr 2025 16:57:19 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250429_155721_188506_C4F9C434 
X-CRM114-Status: UNSURE (   7.28  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] lib: random: make srand_xor a no-op in PBL
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 29 Apr 2025 09:56:05 +0200, Ahmad Fatoum wrote:
> We are going to add srand_xor calls at more places in future, so do not
> trigger a BUG() for it on use in PBL. There is still a BUG() call in
> random32 and friends, so use of unseeded PRNG won't get unnoticed.
> 
> 

Applied, thanks!

[1/1] lib: random: make srand_xor a no-op in PBL
      https://git.pengutronix.de/cgit/barebox/commit/?id=f2506fe45d56 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



