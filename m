Delivery-date: Wed, 11 Feb 2026 10:34:56 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vq6cZ-000UBT-1s
	for lore@lore.pengutronix.de;
	Wed, 11 Feb 2026 10:34:56 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vq6cZ-0001L4-TO
	for lore@pengutronix.de; Wed, 11 Feb 2026 10:34:56 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=n+F1MqHbsBlzcOYpMcAZtcKwruAJku9KTa+jHIzA6Y8=; b=byOsaJZo/0W9f/5bo59mhSTlUT
	fGyQr3g0bTYeg8X/ZF7tvQw1Y9VlflKNbIyC72NGnd+a2L7VyrewAc7cRbQidPz8ZsFzDcieBQLjt
	zblQmFqugTCrHBq9yd8lylv0ctbYevubJey0348MYH4c6fndivu919Yw/W9KQuA4qE0tYxsoCD7HE
	+H52ssHEetFTE+4KgLUwWJWFffclXDDTRVOyVMm9gJbxZypan3JP/OHY8T0p6bzJgtFqbzhdnFz8L
	+wuwje6zWoqhnOZfHRn0JdLNpHawPLW5ts4QQlq9urg7yOm3pjSSpmVvvXEbH7gKGfeurqXJfmJCx
	B7rlJ1VQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vq6c8-00000000RY8-3GZW;
	Wed, 11 Feb 2026 09:34:28 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vq6c5-00000000RXE-3FtO
	for barebox@lists.infradead.org;
	Wed, 11 Feb 2026 09:34:27 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vq6bw-00015A-9X; Wed, 11 Feb 2026 10:34:16 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vq6bu-000DnE-2O;
	Wed, 11 Feb 2026 10:34:16 +0100
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vq6bw-0000000EzLC-05vy;
	Wed, 11 Feb 2026 10:34:16 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20260210114355.1357220-1-a.fatoum@pengutronix.de>
References: <20260210114355.1357220-1-a.fatoum@pengutronix.de>
Message-Id: <177080245601.3572371.11869273578710036732.b4-ty@pengutronix.de>
Date: Wed, 11 Feb 2026 10:34:16 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260211_013425_818158_8AF468AA 
X-CRM114-Status: UNSURE (   8.28  )
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
Subject: Re: [PATCH master] ci: container: set LLVM_SUFFIX instead of
 CROSS_COMPILE_llvm
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 10 Feb 2026 12:43:54 +0100, Ahmad Fatoum wrote:
> To compile with LLVM inside the container, the expectation so far was
> that the user would do:
> 
>   export LLVM="${CROSS_COMPILE_llvm}"
> 
> This is confusing as CROSS_COMPILE is gcc-only and needlessly
> cumbersome. The Makefile also accepts LLVM_PREFIX and LLVM_SUFFIX
> variables. The utilities are already in PATH, so just set LLVM_SUFFIX to
> the correct. -${LLVM_VERSION} suffix.
> 
> [...]

Applied, thanks!

[1/1] ci: container: set LLVM_SUFFIX instead of CROSS_COMPILE_llvm
      https://git.pengutronix.de/cgit/barebox/commit/?id=33f4bc73dd7c (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



