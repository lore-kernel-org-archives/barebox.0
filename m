Delivery-date: Tue, 21 May 2024 08:21:37 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s9IsT-00BnoE-13
	for lore@lore.pengutronix.de;
	Tue, 21 May 2024 08:21:37 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s9IsS-0006Kr-QB
	for lore@pengutronix.de; Tue, 21 May 2024 08:21:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=g+4Kj0J5ByKgY/5skby/niXd0k35RtwT1sMUSIrTuCw=; b=IacalblPkYQqVGCJGcQAbuCYC/
	bkOQkn3N0lvC6HEz1uxV8+3I6eyDeTuU4ptvpJFw5mYkevYbFZwmJUZkC8hu1v0bO8mlZTFYYnFsS
	06h7o4D7jRQ3zjbhc0iEvCWjRz7srMJwF5DUUKhg1LLwHW21pLzvkQpQgaVdT1Sedog6r5LoLn51z
	S1jSgg8vi8ruHsLCN3mw8GOhSXjlo2R6kVxn9tryJt65R+pYcTcDsjf3RUGi5OSgiTYLLb+G+n8SB
	g42BimrN41lSt12vPFIXIqe9cMlJVKHGqhTfpKcLPzTwerPVj7qkusRtGi5N//ajBOA2hpz0BRLvw
	aV6/o76A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s9Is3-0000000GSuh-2FTy;
	Tue, 21 May 2024 06:21:11 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s9Irx-0000000GSsf-2KqT
	for barebox@lists.infradead.org;
	Tue, 21 May 2024 06:21:09 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s9Irw-00068m-7A; Tue, 21 May 2024 08:21:04 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s9Irv-002Lsp-Ql; Tue, 21 May 2024 08:21:03 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s9Irv-005zvm-2T;
	Tue, 21 May 2024 08:21:03 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240517074851.768493-1-a.fatoum@pengutronix.de>
References: <20240517074851.768493-1-a.fatoum@pengutronix.de>
Message-Id: <171627246376.1429675.4498688226937078502.b4-ty@pengutronix.de>
Date: Tue, 21 May 2024 08:21:03 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240520_232105_627546_E728EDF7 
X-CRM114-Status: UNSURE (   5.18  )
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
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] sandbox: enable frame pointers unconditionally
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 17 May 2024 09:48:51 +0200, Ahmad Fatoum wrote:
> We have no size constraints on sandbox, so enable frame pointers for
> easier debugging.
> 
> 

Applied, thanks!

[1/1] sandbox: enable frame pointers unconditionally
      https://git.pengutronix.de/cgit/barebox/commit/?id=df68faf5b855 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



