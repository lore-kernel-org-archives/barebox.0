Delivery-date: Tue, 05 Aug 2025 11:07:19 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujDdf-007F5I-0U
	for lore@lore.pengutronix.de;
	Tue, 05 Aug 2025 11:07:19 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujDde-0008Ft-J6
	for lore@pengutronix.de; Tue, 05 Aug 2025 11:07:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=sOcCi0g2I3EZotigSghRWUlw5mKq0gyKSXgbiYunDrk=; b=sZ5ek3jpn0oTlqxMk1GsElf2x/
	l1hy89w9E0nw2e0SeS9KikiCU0lRya64TW50+mkCkarlh7Mpm/0iOzF2UN7togeDQXvJpJp/X6wjD
	4+vnmZq9zKxQXhpPSwQ2x/ZfDLrvMbdfmaLuIGePRUFIGjFgjsQ/N4+Z/fzUQLKmKrjcrpahdAXbJ
	igNpQKzfHj4gixg/GYqQlXVbC1Ksq5X7s6yZiaNnFvUHX/suArjhWTxB1g6ZA+NntSiNdvZrO0tXQ
	xAuOpARJ0OJ+U3bGjYPMh/oQ360KBeaijQ4Vxet5/Tm15j0dLHjB1pO9e+in0ixmJK1OH0l4B0Ok9
	4BUuzrqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujDdE-0000000CJ02-3ofq;
	Tue, 05 Aug 2025 09:06:52 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujD8i-0000000CCA5-0hbD
	for barebox@lists.infradead.org;
	Tue, 05 Aug 2025 08:35:21 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1ujD8g-0004aM-Fg; Tue, 05 Aug 2025 10:35:18 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1ujD8f-00C0n7-1r;
	Tue, 05 Aug 2025 10:35:17 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1ujD8f-00EgGu-1g;
	Tue, 05 Aug 2025 10:35:17 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Renaud Barbier <Renaud.Barbier@ametek.com>
In-Reply-To: <20250702120341.2389232-1-a.fatoum@pengutronix.de>
References: <20250702120341.2389232-1-a.fatoum@pengutronix.de>
Message-Id: <175438291751.3499063.17781507214655511854.b4-ty@pengutronix.de>
Date: Tue, 05 Aug 2025 10:35:17 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250805_013520_216496_5AD7C6E2 
X-CRM114-Status: UNSURE (   9.20  )
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
Subject: Re: [PATCH] ppc: fix missing cache maintenance before mapping
 uncached
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 02 Jul 2025 14:03:41 +0200, Ahmad Fatoum wrote:
> flags is the generic map type (e.g. MAP_CACHED), while MAS2_I is a bit
> only relevant to PowerPC. Checking for MAS2_I in flags is thus never
> true and means we skipped cache maintenance so far when remapping a
> region as uncached.
> 
> We actually have a test that caught similar issues on ARM, but we don't
> have a Labgrid config for CI to test on PowerPC unfortunately.
> 
> [...]

Applied, thanks!

[1/1] ppc: fix missing cache maintenance before mapping uncached
      https://git.pengutronix.de/cgit/barebox/commit/?id=e47a2c32d6c6 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



