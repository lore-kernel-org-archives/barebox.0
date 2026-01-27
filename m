Delivery-date: Tue, 27 Jan 2026 08:22:49 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vkdPV-005omu-1a
	for lore@lore.pengutronix.de;
	Tue, 27 Jan 2026 08:22:49 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vkdPU-0001aA-IF
	for lore@pengutronix.de; Tue, 27 Jan 2026 08:22:48 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=BvaI9Fg+VozvVP7OD4xPCwOsle2xFu6Jckl7cR3RKkw=; b=Ckv5PPB8bXwdTVqC2e6RPpdOP7
	Q6QTUIYSJ4DG9DqYcvbr7WoBRlmp/q7VO5x4mm1pDkAFkHxip8YIBMKRyXlmSgo1d4m+xW6tI8kVF
	4sN4vbn9JaK3b/SEAiI45Rm3Q8SNRL/eyJT4IwNj4nc2fi13icdbkOb8k2zjcD7at9xt65Cd+PJ6D
	HJoJkpCG/3KDkgA01gLSQHwZ22spdwnrwcrelvhg7273bPdBXjA4T7hQhkLKuXABhVdzw55VF4vDS
	nCleWZ2XEhMGC5//prmJ6N6PqECOGMDQ3bJvw7Dtg4dQ87Pbqsi5tj2v96Dv6PFRVnguIw3E0t3Fl
	wofgpNqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkdP4-0000000DlnI-1fTj;
	Tue, 27 Jan 2026 07:22:22 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkdP1-0000000DlmR-26qb
	for barebox@lists.infradead.org;
	Tue, 27 Jan 2026 07:22:21 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vkdOz-0001Vz-Ly; Tue, 27 Jan 2026 08:22:17 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vkdP0-002i9H-0W;
	Tue, 27 Jan 2026 08:22:17 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vkdOz-000000050Az-3gLS;
	Tue, 27 Jan 2026 08:22:17 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: bst@pengutronix.de
In-Reply-To: <20260126172458.1761664-1-a.fatoum@pengutronix.de>
References: <20260126172458.1761664-1-a.fatoum@pengutronix.de>
Message-Id: <176949853740.1191459.16865223804510018366.b4-ty@pengutronix.de>
Date: Tue, 27 Jan 2026 08:22:17 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260126_232219_792355_700B026F 
X-CRM114-Status: UNSURE (   9.44  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] serial: efi-stdio: fix repeated carriage return with
 putc callback
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 26 Jan 2026 18:24:14 +0100, Ahmad Fatoum wrote:
> A console driver can populate the console_device::puts callback instead
> of having the console core substitute __console_puts, if it can implement
> the operation in a more performant manner than the repeated calls to
> console_device::putc that occur otherwise.
> Whether provided by driver or by console core, console_device::puts
> is responsible for converting LF characters to CRLF.
> 
> [...]

Applied, thanks!

[1/1] serial: efi-stdio: fix repeated carriage return with putc callback
      https://git.pengutronix.de/cgit/barebox/commit/?id=0c457166c68e (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



