Delivery-date: Mon, 25 Aug 2025 13:29:01 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uqVNl-004LMv-2Y
	for lore@lore.pengutronix.de;
	Mon, 25 Aug 2025 13:29:01 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uqVNk-0006EK-LA
	for lore@pengutronix.de; Mon, 25 Aug 2025 13:29:01 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=uy5FVIpnhSHNk1XqGHW9LVLenk6WeVaXQtdXPnMP1FM=; b=CfDzfWpCNqtDBt7VVCnT6pGt/h
	urGJX3tYotH1HAxshp5z60L7GrQmTkgdv6CpW0oDviHSPEZeroFMcY3W8eIhJ5uyW1YpQThYT1PMv
	pxUdeFPVLdUuD8FO6LGZlMyZcDyw1oqtwf+utDA1yM4m8VQ0aDKd9ITgP1Tw/T93MhejA7ZiXyUUW
	YDZpB/Kyc55WDZQgOOovCViX9bi5RUjGPmFCHrfXhJWbi6oNQHjm+KvHQyjwlRT2lOtapJLc3Z7CW
	bcVn6Wq/1a7iojMDsFo/uN7NXulQHtgwDYUPibMdSUUSfBms25Cte5fAwP2EZY6Z2PEpsSuMZhZ3v
	NBcRsXDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uqVN7-00000007jqC-2fLg;
	Mon, 25 Aug 2025 11:28:21 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uqT91-00000007RMo-1hK9
	for barebox@lists.infradead.org;
	Mon, 25 Aug 2025 09:05:40 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uqT90-0006IQ-3o; Mon, 25 Aug 2025 11:05:38 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uqT8z-0022Xu-30;
	Mon, 25 Aug 2025 11:05:37 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uqT8z-000000034Fr-3e8T;
	Mon, 25 Aug 2025 11:05:37 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@barebox.org>
Cc: mfe@pengutronix.de, sha@pengutronix.de
In-Reply-To: <20250822140111.811702-1-a.fatoum@barebox.org>
References: <20250822140111.811702-1-a.fatoum@barebox.org>
Message-Id: <175611273786.731316.17089727161242743586.b4-ty@pengutronix.de>
Date: Mon, 25 Aug 2025 11:05:37 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250825_020539_445779_0ECE6295 
X-CRM114-Status: UNSURE (   9.08  )
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
Subject: Re: [PATCH master] ARM: mmu: increase early page table size to
 256K for now
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 22 Aug 2025 16:01:11 +0200, Ahmad Fatoum wrote:
> With recent changes for W^X, the size of our early page tables have grown
> in some cases, so they no longer fit into the 64K we reserve for them.
> 
> This has been observed in at least two ARM64 platforms:
> 
>   - i.MX8M with OP-TEE at start of RAM (on master)
>   - Raspberry Pi Zero 2 without OP-TEE (on next)
> 
> [...]

Applied, thanks!

[1/1] ARM: mmu: increase early page table size to 256K for now
      https://git.pengutronix.de/cgit/barebox/commit/?id=ea4adae23e66 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



