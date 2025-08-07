Delivery-date: Thu, 07 Aug 2025 09:27:05 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujv1l-007uhG-1Q
	for lore@lore.pengutronix.de;
	Thu, 07 Aug 2025 09:27:05 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujv1k-0000H5-TB
	for lore@pengutronix.de; Thu, 07 Aug 2025 09:27:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=BhIMcH8p15cDQ5P90nNJbwv6qnmScTLuk/k0Cndv9XE=; b=y2z+jfpFWnl5rlJyzt7x7IjS8P
	N2ZZe7ye/dfXzPUOT+uxFCjGcScChE6QgHl4IHzk+QU943kJ4LRk54XNY+x5DEXTpEuxuD9eCzM+r
	MOFOSbdEWxoGF8a4xY9AmyohzBS9hIAun+cxz9q4zovfmfpc1f+Gsu3LJ+QvSzZYnObH+Syctfgqf
	YKm2pJ7B+3FmWxiRWAjR+cHQoqNsyLYcN0XedAcR0/QCpc0m8rQxdHlGyGVKWSg5SmOx4mNi9yFCZ
	pjMhUTDbSVFC4mxGY192I2RxeR6CBybwi2WzZCOF9X9bO8yXI+4ahiHb4Fm5FsKOZNKJTkvwFNmfA
	GJXQ3iuA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujv1J-0000000HSbG-3DiX;
	Thu, 07 Aug 2025 07:26:37 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujv1H-0000000HSav-2GR9
	for barebox@lists.infradead.org;
	Thu, 07 Aug 2025 07:26:36 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1ujv1G-000081-A5; Thu, 07 Aug 2025 09:26:34 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1ujv1F-00CL04-38;
	Thu, 07 Aug 2025 09:26:33 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1ujv1F-00AQdc-2x;
	Thu, 07 Aug 2025 09:26:33 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: David Picard <david.picard@clermont.in2p3.fr>
In-Reply-To: <20250806101559.3869005-1-a.fatoum@pengutronix.de>
References: <20250806101559.3869005-1-a.fatoum@pengutronix.de>
Message-Id: <175455159391.2485127.17310016119835526860.b4-ty@pengutronix.de>
Date: Thu, 07 Aug 2025 09:26:33 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250807_002635_581424_4605A3F9 
X-CRM114-Status: UNSURE (   6.33  )
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
Subject: Re: [PATCH RFT v2 1/2] gpio: dw: support numbering via aliases
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 06 Aug 2025 12:15:58 +0200, Ahmad Fatoum wrote:
> This device driver is OF-only, so reflect that in the Kconfig and have
> it parse aliases if available to derive its id.
> 
> 

Applied, thanks!

[1/2] gpio: dw: support numbering via aliases
      https://git.pengutronix.de/cgit/barebox/commit/?id=d07fab49b60c (link may not be stable)
[2/2] gpio: dw: make deep probe compatible
      https://git.pengutronix.de/cgit/barebox/commit/?id=1d7ae44b8ca3 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



