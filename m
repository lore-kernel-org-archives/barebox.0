Delivery-date: Thu, 25 Jan 2024 08:39:53 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rSuL1-0013tb-2y
	for lore@lore.pengutronix.de;
	Thu, 25 Jan 2024 08:39:53 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rSuL2-00039Z-KU
	for lore@pengutronix.de; Thu, 25 Jan 2024 08:39:53 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=m0foE3VSfK4r6S0yz+CTEcq+bDG8JIf/ORgQje1A4z8=; b=aTqJRAgoTrPI4toTuEIW2Hmdlb
	lLSTjgXwInXc/IAqyY4ssJVtDW4m5ckrC6/SLyNoyGA/XYLK+1LL8uLVt8q3e/E1GRXh7HygOqt9S
	27Jht6RVjHhzhZHbLFihhwb0BgOl/JMQaR8eWz8CP6uYXyBmj12RnPqubgmbZoUaWslqT2JrGMf/8
	iPx/HWjJYDxsNGa4KB0wmLxa8xjvdwFQa1p57/RIWnyscjeGU9P0ShZxSi4pJLm4h9NuwUS47Bfgx
	GNB+5jaMf6aKIHq3maX63SPAXd1PU2Tic9KIiC3ykowyIJJMmYEu2fb3x7d943bUGcwRksAd68CRs
	Ybccamyw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rSuJd-0075jh-2X;
	Thu, 25 Jan 2024 07:38:25 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rSuJY-0075iP-09
	for barebox@lists.infradead.org;
	Thu, 25 Jan 2024 07:38:23 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rSuJW-00030L-Mh; Thu, 25 Jan 2024 08:38:18 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rSuJW-002Ea8-A2; Thu, 25 Jan 2024 08:38:18 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rSuJW-002O05-0n;
	Thu, 25 Jan 2024 08:38:18 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Marco Felsch <m.felsch@pengutronix.de>
In-Reply-To: <20240124134738.133782-1-m.felsch@pengutronix.de>
References: <20240124134738.133782-1-m.felsch@pengutronix.de>
Message-Id: <170616829824.568751.514941381005189368.b4-ty@pengutronix.de>
Date: Thu, 25 Jan 2024 08:38:18 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240124_233820_085913_F1EAF057 
X-CRM114-Status: UNSURE (   7.77  )
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
X-Spam-Status: No, score=-5.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 0/3] Add bootm ZSTD support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 24 Jan 2024 14:47:35 +0100, Marco Felsch wrote:
> this small series of patches finally enables barebox to boot zstd
> compressed kernels.
> 
> Regards,
>   Marco
> 
> Marco Felsch (3):
>   filetype: add zstd support
>   bootm: add support to boot ZSTD compressed images
>   uncompress: add detected file type debug print
> 
> [...]

Applied, thanks!

[1/3] filetype: add zstd support
      https://git.pengutronix.de/cgit/barebox/commit/?id=400829f388b1 (link may not be stable)
[2/3] bootm: add support to boot ZSTD compressed images
      https://git.pengutronix.de/cgit/barebox/commit/?id=cf621c29fc52 (link may not be stable)
[3/3] uncompress: add detected file type debug print
      https://git.pengutronix.de/cgit/barebox/commit/?id=566af8320879 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



