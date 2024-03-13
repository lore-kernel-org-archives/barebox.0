Delivery-date: Wed, 13 Mar 2024 12:39:23 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rkMx9-004KdP-1q
	for lore@lore.pengutronix.de;
	Wed, 13 Mar 2024 12:39:23 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rkMx8-00028w-UC
	for lore@pengutronix.de; Wed, 13 Mar 2024 12:39:23 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=a+i7+QNneMNR3cL+sOs78OJj4RKo3VxBCbZWZCV1Tn8=; b=L+H6Ptuvm8qqUFIQY//+Ntq9Sh
	Mp0WtKhdAosPymyLsr/9UM11OW08ALCegtuMmC2LUMhD60l6JwyfvLL2GL71SC1yFxoHMj08ViJ2U
	RToXQSDh7Hl5utckAUsHC9xL3bbIRBaYWACKWG41gslWcmoLxIJkJ/Vh8u2O0tT8HRSNmk80AHNOi
	jUl8JvkyVKm8yVJpk38h5ILCvAZfCY+s0WXJ5Yu2FBy5izR5Gg8C3PAU8OaYuq1kJalEJemxI2kgh
	MkOvZqsuAkJ0cFou0zYhLzjoMaZ0ou74QgVnotrm4AycsuOCLjGMnq2ioL0ld18BqZtlbxuycP31s
	LVoYx7wg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rkMwb-00000009wUA-0pNr;
	Wed, 13 Mar 2024 11:38:49 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rkMwW-00000009wTI-3aVH
	for barebox@lists.infradead.org;
	Wed, 13 Mar 2024 11:38:46 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rkMwV-0001a0-D0; Wed, 13 Mar 2024 12:38:43 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rkMwV-0066WM-0Z; Wed, 13 Mar 2024 12:38:43 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rkMwU-009e6v-31;
	Wed, 13 Mar 2024 12:38:42 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240313100048.386604-1-a.fatoum@pengutronix.de>
References: <20240313100048.386604-1-a.fatoum@pengutronix.de>
Message-Id: <171032992292.2298318.3624692935716774908.b4-ty@pengutronix.de>
Date: Wed, 13 Mar 2024 12:38:42 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240313_043844_992516_951FD795 
X-CRM114-Status: UNSURE (   9.64  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v2] console: flush consoles on newline when debugging
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 13 Mar 2024 11:00:48 +0100, Ahmad Fatoum wrote:
> For debugging hangs, CONFIG_DEBUG_PROBES and CONFIG_DEBUG_INITCALLS are
> useful tools to pinpoint where the issue is. FOr issues that lock up the
> SoC, their output can be misleading if we have bigger UART FIFO and not
> all output has managed to make it out.
> 
> Add a new DEBUG_FLUSH_LINE_BREAK to make debugging this easier.
> The option is unnecessary outside of debugging, so for now we don't add
> a prompt by default and select it as needed.
> 
> [...]

Applied, thanks!

[1/1] console: flush consoles on newline when debugging
      https://git.pengutronix.de/cgit/barebox/commit/?id=50cbfd91b573 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



