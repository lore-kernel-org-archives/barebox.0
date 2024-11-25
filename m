Delivery-date: Mon, 25 Nov 2024 09:37:14 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tFUao-00082z-0N
	for lore@lore.pengutronix.de;
	Mon, 25 Nov 2024 09:37:14 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tFUao-0002Ij-3R
	for lore@pengutronix.de; Mon, 25 Nov 2024 09:37:14 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=LPBlszaAC5T2uCagbJhdWFOvHWzxiuo55pAqySJXduQ=; b=e+Gc1bbI/kGYopM2emMuDhytl0
	nbWaF8/m8jIorQ8xo+QKMtcOP7+D3Js5Hyc/D4mLcxzxDMT/VfJ9Xpir5tP1jKlN0uzUIuLlAJ1sZ
	KcBaXnecqjJNlJP1aiZtNoFwLkHGrFkqcC77GxFlmox1ubKUfO0XSTQCEK/Mw6QQN/mu5qODTTGZ5
	S62wKWEkbZUJA0lEGZn4/TmmKNq+mcMGToGMybd/gyzjWyX0Vbn5vYJGBsiW8Fdz4olxFnZS0twsJ
	aKuqxw4Ciue3Cv3VcVeOWHTkRbueVGrHAHmIHpI7QNSt7hKoiW/9xsPYNGWMfx+VciELX5AtN2o2x
	fmzyEF2g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tFUaP-00000007P8H-12zu;
	Mon, 25 Nov 2024 08:36:49 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tFUOR-00000007N55-2oUr
	for barebox@lists.infradead.org;
	Mon, 25 Nov 2024 08:24:28 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tFUOQ-0000rd-9v; Mon, 25 Nov 2024 09:24:26 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tFUOP-00031w-17;
	Mon, 25 Nov 2024 09:24:26 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tFUOQ-000hVk-0A;
	Mon, 25 Nov 2024 09:24:26 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, 
 Abdelrahman Youssef <abdelrahmanyossef12@gmail.com>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20241119212606.1668337-1-abdelrahmanyossef12@gmail.com>
References: <20241119212606.1668337-1-abdelrahmanyossef12@gmail.com>
Message-Id: <173252306605.167243.17574024694345262862.b4-ty@pengutronix.de>
Date: Mon, 25 Nov 2024 09:24:26 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241125_002427_719920_478362D4 
X-CRM114-Status: UNSURE (   7.58  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2] of: fdt: fix overflow caused by fdt_prop extending
 beyond fdt
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 19 Nov 2024 23:26:04 +0200, Abdelrahman Youssef wrote:
> While parsing FDT, fdt_prop sometimes extends beyond FDT resulting in
> heap-overflow.
> 
> dt_ptr_ok() checks a pointer is within bounds of the FDT, so we can use it
> here to fix the issue.
> 
> 
> [...]

Applied, thanks!

[1/1] of: fdt: fix overflow caused by fdt_prop extending beyond fdt
      https://git.pengutronix.de/cgit/barebox/commit/?id=4e9331dd33be (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



