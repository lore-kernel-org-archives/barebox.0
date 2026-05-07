Delivery-date: Thu, 07 May 2026 12:39:41 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wKw8r-001vwH-2b
	for lore@lore.pengutronix.de;
	Thu, 07 May 2026 12:39:41 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wKw8m-0001CR-2X
	for lore@pengutronix.de; Thu, 07 May 2026 12:39:40 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=M+PKaOkJ2Bb3jVcDQoK2i/8NR7aNnNLPYWYSFNFWz20=; b=wADRV6lmfhaczbw6VXipMNjFM2
	GW7ZV8Yla4HaP7R6/xKPuTm1lnGdmMfVkvZvGyIGJVeZaRwXomYngxdDcwyKGvHM+zYTIRRABUfzr
	2R5SHEYDGnLeVU7px7r2L8wn0TzZ/v9ADkn1OH9abMBCeccVP2PJ4dteTvCPcTylnRs9+HTCsNyIY
	JvVKV5Z47gAgQSMODqglo3Y+T6hGjh3pw/AemM3CQyCZX/j763v+Jt2DKpkuGW0RxkNxtuwE/Alzd
	gWdWYZNq7gd0rLFCOX1TTMPz0vfM/xjCd6y2UF0F/nVqEzeVcLJEhGN4edujtZ7HsLOSEPWNbrw+I
	YaqHCbOQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wKw7v-00000003ViY-1Zpj;
	Thu, 07 May 2026 10:38:43 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wKw7t-00000003Vhn-2aVw
	for barebox@bombadil.infradead.org;
	Thu, 07 May 2026 10:38:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:From:Sender:
	Reply-To:Cc:Content-ID:Content-Description;
	bh=M+PKaOkJ2Bb3jVcDQoK2i/8NR7aNnNLPYWYSFNFWz20=; b=e5v2BGQ5dpdgZRCQVSuQBL1vZz
	K7rZKvBQ0yvXTCJLlK62C870s1vFdBDv9LgL2QOUd9kxnHou07cTtbZRVNHLCcpdBfeHHRaUuSnbq
	OUoOAJf81jK+0iMiteM9GwAICnI02A0YEOm3spQggIP1RW4WVfIi9nlVvsLg00VdBPtsD4ncVVPf9
	8WcO8+pWqta+uLibj9MbH0KbAIzxU1GNLl+hlYZmt0G8w0p2sZFLto1dkVl2o/lQxQlan26zLxFqL
	HDl9rEhWNOVxNvxohpEdScz5ufd0CoT1+cwaS6nr9JqNkqX4Y+dqXmxTjz1LuA4iyZOP/QjF7Og6d
	HdRfkTkQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wKw7n-00000003ENy-3S3u
	for barebox@lists.infradead.org;
	Thu, 07 May 2026 10:38:38 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wKw7k-0000T5-DK; Thu, 07 May 2026 12:38:32 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wKw7j-000uD0-1x;
	Thu, 07 May 2026 12:38:32 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wKw7j-0000000BjIN-48TZ;
	Thu, 07 May 2026 12:38:31 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@barebox.org>
In-Reply-To: <20260501085102.1029483-1-a.fatoum@barebox.org>
References: <20260501085102.1029483-1-a.fatoum@barebox.org>
Message-Id: <177815031198.2795644.17287100915858458598.b4-ty@pengutronix.de>
Date: Thu, 07 May 2026 12:38:31 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260507_113836_448683_E1AB6B18 
X-CRM114-Status: UNSURE (   5.50  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [PATCH] video: ramfb: support multiple resolutions via
 mode_name parameter
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 01 May 2026 10:51:01 +0200, Ahmad Fatoum wrote:
> Replace the single hardcoded 640x480 mode with a static mode list
> covering common resolutions (640x480, 800x600, 1280x720, 1920x1080).
> The default remains 640x480 (index 0).
> 
> Users can now switch to e.g. 1080p before enabling the framebuffer:
> 
>   fb0.mode_name=1920x1080
> 
> [...]

Applied, thanks!

[1/1] video: ramfb: support multiple resolutions via mode_name parameter
      https://git.pengutronix.de/cgit/barebox/commit/?id=7fb4694d6174 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



