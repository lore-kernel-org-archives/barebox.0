Delivery-date: Tue, 18 Nov 2025 08:22:34 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vLG2r-002FOd-32
	for lore@lore.pengutronix.de;
	Tue, 18 Nov 2025 08:22:33 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vLG2r-0007rJ-D3
	for lore@pengutronix.de; Tue, 18 Nov 2025 08:22:33 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=KO/H9Lme4Tzo5+K4++7Gu38e0hrYEZi0gJsvxegarc0=; b=Ts+MuocOBUEBZpUuLmxh8u6rmb
	3oVgxgNJ7/8s3Qe27RuL6HZJC//ZnBTBc2vvkFXXlgbIq2bIkGFxlmW/cihsVq/c8l2+IuJNRwR8K
	hjfam2JvecU20X4FaEU0to3YHUARK0ZnmlzkdXDJnTk47+x+Ns0iTlbGnoqSSZADUDpB0HDyHXIR/
	fD2P8CaYPDxnbla6emoQA8fl7JY3TJF1ZuuF++QEctnfR638xRE60DS7LtQMFUjvFkIaRKUm2whHV
	9lfkcoAcywFJkrM1a888tsm+YpqUI/kcmd3DUf7qoPnYENHJYR6KgtLvHR2GHuu0Xcmm3dPkKLMxa
	pC3Kl0mw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLG2A-0000000HYaK-3q1j;
	Tue, 18 Nov 2025 07:21:50 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLG25-0000000HYYN-2IPv
	for barebox@lists.infradead.org;
	Tue, 18 Nov 2025 07:21:47 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vLG23-0007iv-JA; Tue, 18 Nov 2025 08:21:43 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vLG23-0012l8-15;
	Tue, 18 Nov 2025 08:21:43 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vLG23-0000000CLpG-2zAz;
	Tue, 18 Nov 2025 08:21:43 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Alexander Kurz <akurz@blala.de>
In-Reply-To: <20251117192329.13516-1-akurz@blala.de>
References: <20251117192329.13516-1-akurz@blala.de>
Message-Id: <176345050325.2943787.11882039348136947267.b4-ty@pengutronix.de>
Date: Tue, 18 Nov 2025 08:21:43 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251117_232145_588756_9CFE4FE8 
X-CRM114-Status: UNSURE (   8.62  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v3 0/1] Add Kindle generation 6/7 support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 17 Nov 2025 19:23:28 +0000, Alexander Kurz wrote:
> Changes in v3:
> - Link to v2: https://lore.barebox.org/barebox/aRrgLDG2tbcJ1dg0@pengutronix.de/
> - Implemented detection of mmc1 compatible with barebox,deep-probe,
>   thanks Sascha.
> 
> Changes in v2:
> - Link to v1: https://lore.barebox.org/barebox/aRMOO3jH4a16GBI6@pengutronix.de/
> - Remove explicit RAM size settings from lowlevel.c and dts since this can be
>   autodetected. As consequence, both DP75SDI variants (Paperwhite 2 and 3) now
>   share the same dts.
> - Rebase to current
> - Attempts to use barebox,deep-probe did unfortunately not work yet.
>   Brief description of the problem:
> 
> [...]

Applied, thanks!

[1/1] ARM i.MX6SL: Add Kindle generation 6/7 support
      https://git.pengutronix.de/cgit/barebox/commit/?id=05eccc9d0adf (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



