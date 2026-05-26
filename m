Delivery-date: Tue, 26 May 2026 08:39:47 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wRlS7-003uh3-35
	for lore@lore.pengutronix.de;
	Tue, 26 May 2026 08:39:47 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wRlS7-000381-CT
	for lore@pengutronix.de; Tue, 26 May 2026 08:39:47 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/mnMxwM9RXqNt37+c/3nEPUHx/ud6qU3UfNzC7tzw8g=; b=5GsM9SGwFReXhavnearNAqj0Ne
	UzTOX160CyE5QyASqsZ0pYLrN0oE31fVahmBon8CAQDa+ngPYONTozOcpVb+EglX5xJ2GQ6W64JhM
	tHDuoxeQQWSnqiNoApcEvWta/23P1oEy0cg87T6+Jsp+9kg2oTlw8epgbklPQP6hFVoRB4svPknoO
	nf6sZRH26mpPTWtNb+u96JjCve6jFCEg1rpdQEf/dDHiTJXAnzk0vznNmv8ZyDYSZb/4XhCe9NpjB
	VDoz36qzBy9hJXcrOmvGAxggLgxLZzC8odii4qRml9lFrf4vRyWtk8Hpaiydd5ABSCoFawP+LO/HG
	6B1Kn8vw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wRlR8-00000001BSE-3iaP;
	Tue, 26 May 2026 06:38:46 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wRlR6-00000001BRP-2Mh7
	for barebox@lists.infradead.org;
	Tue, 26 May 2026 06:38:45 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wRlR4-0002yZ-WA; Tue, 26 May 2026 08:38:43 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wRlR4-001sA3-1B;
	Tue, 26 May 2026 08:38:42 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wRlR4-0000000GXrT-3fFn;
	Tue, 26 May 2026 08:38:42 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20260522072247.2267979-2-a.fatoum@pengutronix.de>
References: <20260522072247.2267979-2-a.fatoum@pengutronix.de>
Message-Id: <177977752287.3943334.3671630758675433616.b4-ty@pengutronix.de>
Date: Tue, 26 May 2026 08:38:42 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260525_233844_609914_220A08AB 
X-CRM114-Status: UNSURE (   6.79  )
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
Subject: Re: [PATCH master] ARM: uncompress: keep handoff data aligned
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 22 May 2026 09:22:30 +0200, Ahmad Fatoum wrote:
> A pointer to the handoff data is passed from PBL to barebox proper
> as argument, but it may end up unaligned depending on uncompressed_len.
> 
> Round that up to 8 bytes to make sure, it doesn't end up misaligned.
> 
> 

Applied, thanks!

[1/1] ARM: uncompress: keep handoff data aligned
      https://git.pengutronix.de/cgit/barebox/commit/?id=362e0d71ff21 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



