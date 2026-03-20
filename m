Delivery-date: Fri, 20 Mar 2026 07:35:05 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w3TRp-002vxm-1U
	for lore@lore.pengutronix.de;
	Fri, 20 Mar 2026 07:35:05 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w3TRo-0001XG-R5
	for lore@pengutronix.de; Fri, 20 Mar 2026 07:35:05 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=w8YpKwBH5GxbqhhTI70tft6Op0qP5cXj7bR5gkePbJs=; b=t+5GQK4tR7yAQkxG2GPjmbNpXd
	QPQkdPDiw+JvTLmIi2+cKRn5JxCgS7ywOFwVVg32TwnfdD4w5B7yThqxJNkfffvgy4qVJtRVxjY2O
	4EgmvIPMdkx1fjCCizi419dz3PdZiWrR1LrlVJLsNCgFgomnVrKc2URNGscxbiZ+MLf/j4oldsYVX
	mvpfSsMnkLNIbd2j3XsliClGrRzf68zHLG3cqzawWkJ5xwGJCk6RVvsxF/d8kt7GjtKhNfnbDr6g6
	wVuHK8oifyg1Eg0cPxHvqZxoqyLxsLrW/BOZdjzZcS6GPYfLjW4ggS1mwieaKqyCqS7K2q8aAsx7J
	BW7h7/Wg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w3TRO-0000000CB8p-1Z73;
	Fri, 20 Mar 2026 06:34:38 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w3TRM-0000000CB8J-3AA2
	for barebox@lists.infradead.org;
	Fri, 20 Mar 2026 06:34:37 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w3TRL-0001QG-7t; Fri, 20 Mar 2026 07:34:35 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w3TRL-001CPe-09;
	Fri, 20 Mar 2026 07:34:35 +0100
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w3TRK-00000001Kt4-405l;
	Fri, 20 Mar 2026 07:34:34 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20260319070201.1930012-1-s.hauer@pengutronix.de>
References: <20260319070201.1930012-1-s.hauer@pengutronix.de>
Message-Id: <177398847494.317302.11348068041339667156.b4-ty@pengutronix.de>
Date: Fri, 20 Mar 2026 07:34:34 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260319_233436_793380_5E7FB47C 
X-CRM114-Status: UNSURE (   7.13  )
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
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] mci: move optee_rpmb_detected() to where the card is
 detected
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 19 Mar 2026 08:02:00 +0100, Sascha Hauer wrote:
> mci_register() only registers a host controller, but depending on
> configuration the card is not detected in this function. Move
> the call to optee_rpmb_detected() to mci_card_probe() where the
> card is actually detected.
> 
> 

Applied, thanks!

[1/1] mci: move optee_rpmb_detected() to where the card is detected
      https://git.pengutronix.de/cgit/barebox/commit/?id=0933e8f2ebf0 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



