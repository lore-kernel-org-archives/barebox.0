Delivery-date: Thu, 13 Jun 2024 09:11:06 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sHeby-005F8E-06
	for lore@lore.pengutronix.de;
	Thu, 13 Jun 2024 09:11:06 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sHebx-0004kM-Fl
	for lore@pengutronix.de; Thu, 13 Jun 2024 09:11:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=W9R6fZoS6r6uAwypW+xCo4lR/des/FVTW75GvDouroE=; b=hW56r0Z5F+7sT4NppiUzwP6FfA
	+6MFm1mICMV8xXlBPSL9PPcPpLh+F0Se8FIaSVRlsWB+Mzmfl4/KCOlyTdDyCY+8nLiMWxNvIP/EM
	R2rdkE2DEQ7KH8VitdV4PvBCA35cZ8Qet84XOruvJObK7AqXOfKh87+hFshPtjqNXFR/AbN4pZ6jH
	m4K7api1Naktlc2HtY5pf8FomtURLQlqiFNfWZyTCJB8nx0yDuvmo4qQYSe+R8L9f2fCIo/q1KMqU
	Bpva2UZQqe1hSZMhovTitliCRJ6J7tPOW35PgoTTsQVWlHoZoHHuPVV2QLrTH7RwW4fmZSOwdlyE9
	vqu8JnwQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHebS-0000000FQAM-1HtI;
	Thu, 13 Jun 2024 07:10:34 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHebO-0000000FQ8X-29dq
	for barebox@lists.infradead.org;
	Thu, 13 Jun 2024 07:10:32 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sHebK-0004er-9b; Thu, 13 Jun 2024 09:10:26 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sHebJ-001yJz-TS; Thu, 13 Jun 2024 09:10:25 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sHebJ-00BTEA-2k;
	Thu, 13 Jun 2024 09:10:25 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240611082829.2964046-1-a.fatoum@pengutronix.de>
References: <20240611082829.2964046-1-a.fatoum@pengutronix.de>
Message-Id: <171826262584.2733941.12963622491957486206.b4-ty@pengutronix.de>
Date: Thu, 13 Jun 2024 09:10:25 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240613_001030_674875_161661B3 
X-CRM114-Status: UNSURE (   5.64  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] ARM: stm32mp: remove unused hardcoded MMIO address
 constants
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 11 Jun 2024 10:28:29 +0200, Ahmad Fatoum wrote:
> These address are not used and probably won't be soon, because they are
> either probed from DT or handled in the secure world.
> 
> Given that they are needlessly generic (STM32_ instead of STM32MP1(5)),
> let's drop them.
> 
> 
> [...]

Applied, thanks!

[1/1] ARM: stm32mp: remove unused hardcoded MMIO address constants
      https://git.pengutronix.de/cgit/barebox/commit/?id=c7111ead0f54 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



