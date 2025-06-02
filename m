Delivery-date: Mon, 02 Jun 2025 09:44:28 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uLzqO-002ssx-0s
	for lore@lore.pengutronix.de;
	Mon, 02 Jun 2025 09:44:28 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uLzqN-0006FO-Ah
	for lore@pengutronix.de; Mon, 02 Jun 2025 09:44:28 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=c0U0zgEdKrMNOFxAaNuOhXrku1Zq4qjG7odYIPzPTn0=; b=ZpGI1knPDo6ibHm8NPoB5vkanK
	2VgwbkXi9Bcl+1DUdgB0nzJSyqCjzZZw9U1n8Vlo6khg7MGh2mnug+4sgNvVswxjsRrDN3GoHKfcV
	wm5M3lDOr4lSHdCBAqnZCWuj0o+f9Klc1DKcEKbEpdEYklG69vNijWmcF7HuCMxgbTTRhnkH3pqU0
	I+/rb1ZvEEV4uZJFha1tTTgK+bUEeXbRcWeEy7K7dKOeJl2zUNUd5l343cm9sei5jljHVQm6ReeFS
	sMGeo0CeylI7uP+wKnKxWBcQurVOuiEoqQKNybS8rLBC/5IA141FWQ7ZrwO8e9sdoKiDVjge6nPMi
	8if4nRRQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uLzpy-00000006viX-13hY;
	Mon, 02 Jun 2025 07:44:02 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uLzpv-00000006viC-0mYu
	for barebox@lists.infradead.org;
	Mon, 02 Jun 2025 07:44:00 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uLzpt-00066c-Vi; Mon, 02 Jun 2025 09:43:57 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uLzpt-001PtF-2a;
	Mon, 02 Jun 2025 09:43:57 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uLzpt-003VLe-2K;
	Mon, 02 Jun 2025 09:43:57 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@barebox.org>
In-Reply-To: <20250602062020.754880-1-a.fatoum@barebox.org>
References: <20250602062020.754880-1-a.fatoum@barebox.org>
Message-Id: <174885023771.835465.9824657164973457510.b4-ty@pengutronix.de>
Date: Mon, 02 Jun 2025 09:43:57 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250602_004359_233240_AE14BEC8 
X-CRM114-Status: UNSURE (   7.85  )
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
Subject: Re: [PATCH 1/2] dma: apbh: pass integer, not pointer as value to
 writel
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 02 Jun 2025 08:20:19 +0200, Ahmad Fatoum wrote:
> In preparation for enforcing that at least the value of writeX is an
> integer, a number of places writing a pointer were noticed.
> 
> Add a virt_to_phys to paper over this with a comment that this is not
> completely correct.
> 
> 
> [...]

Applied, thanks!

[1/2] dma: apbh: pass integer, not pointer as value to writel
      https://git.pengutronix.de/cgit/barebox/commit/?id=5b273a2603da (link may not be stable)
[2/2] ARM: Arria10: xload: don't check writel return value
      https://git.pengutronix.de/cgit/barebox/commit/?id=b887a5b9297f (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



