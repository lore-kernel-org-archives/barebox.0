Delivery-date: Tue, 16 Sep 2025 08:35:20 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uyPHc-003axk-2x
	for lore@lore.pengutronix.de;
	Tue, 16 Sep 2025 08:35:20 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uyPHc-0004Pr-DF
	for lore@pengutronix.de; Tue, 16 Sep 2025 08:35:20 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=rnsN15CTsTUfEB1HP1/yJR2wlP40KSQ5z4vVeqRH7mg=; b=m6VHw4tU38ohyUZDTIHMgUwtmC
	kvOsg7BpQAVdcagyPlnG3R52G21s2GgurvO9IO+lN+LJXdYwOYd2NhCIOOWtGxEZb2l/mjsDxaZmS
	/u/SOFRGL6nd55FUUgmkYtlxz3Qm/+B74lYUTviXkjG9h9KnGa5lpfji+HG9YcaS6OisT4UMADbDb
	JEdbfcaKVJ78isc0C2FMe+K6Rx1qP55Ttd//NJNsus9N4e4CWw2Xavn4hpBDwYVoGCv3izKOZ5OLr
	Gu4juU8DMUgAao5rZsPsulO8T9puLtfqhpWpK2L2QdNs4Wd6n3d4o/BeAyAFxp7eYYnbyDFUR/c7M
	ZUzgBlgw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyPHE-00000006vS6-269L;
	Tue, 16 Sep 2025 06:34:56 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyPHB-00000006vRR-1yUb
	for barebox@lists.infradead.org;
	Tue, 16 Sep 2025 06:34:54 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uyPH9-0004Jk-RB; Tue, 16 Sep 2025 08:34:51 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uyPH9-001Xnw-25;
	Tue, 16 Sep 2025 08:34:51 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uyPH9-00000008c2G-2SP0;
	Tue, 16 Sep 2025 08:34:51 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@barebox.org>
In-Reply-To: <20250912083439.2470689-1-a.fatoum@barebox.org>
References: <20250912083439.2470689-1-a.fatoum@barebox.org>
Message-Id: <175800449158.2052815.15576830295184979168.b4-ty@pengutronix.de>
Date: Tue, 16 Sep 2025 08:34:51 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250915_233453_513906_E761B9D9 
X-CRM114-Status: UNSURE (   7.43  )
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
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] RISC-V: fix stack clobbering in relocate_to_adr
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 12 Sep 2025 10:34:38 +0200, Ahmad Fatoum wrote:
> relocate_to_adr is decrementing two SZREG worth of stack space to be able
> to spill two registers. An off-by-one led us to reference the word after
> the reserved stack space, clobbering one word from the previous
> function's stack frame unintentionally.
> 
> This this by decrementing the offsets by 1.
> 
> [...]

Applied, thanks!

[1/1] RISC-V: fix stack clobbering in relocate_to_adr
      https://git.pengutronix.de/cgit/barebox/commit/?id=f3be3a8e9ae8 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



