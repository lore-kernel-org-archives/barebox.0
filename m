Delivery-date: Tue, 30 Sep 2025 12:41:27 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v3XnT-002kTH-0j
	for lore@lore.pengutronix.de;
	Tue, 30 Sep 2025 12:41:27 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v3XnS-0004PV-Nk
	for lore@pengutronix.de; Tue, 30 Sep 2025 12:41:27 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=BdrAnrBo0nrSzOAh7M/OQGLbko++IvGsIElrQP1qfN0=; b=xv6uGSlRiI/2BQXAJTTwcGrpQD
	rwd8rwsN4G0FHdeJS4LAX0EoQ0vgh9CByNUFC73ue6mrJh4R5FGz1RmgQ+4aqj+uf4c7a+cF69lc7
	EadlcDFFDrUQRY514yKXHio0oQKyaySPCOEPNW/mZsYz5RQ+ZN3YjQ7K6iq3DTrTNKo7Ef39JOxDd
	WWfxgDzDxYbM0NzzCW9rOhy8nRPedgzwQcRCUtXLVHqcyxG3kGC8C7L02jT+ms2OGj3pIda9x/84J
	691kY/37egGQc2vXHF7lpgccSStCoFA7gIggZmoThsoeVWRoQuf1weTV1L02BbaB0C9wd5On+1aLM
	5DXYgsQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v3Xn2-000000052rF-1uqM;
	Tue, 30 Sep 2025 10:41:00 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v3Xmy-000000052pL-0AMS
	for barebox@lists.infradead.org;
	Tue, 30 Sep 2025 10:40:58 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1v3Xmw-0004FB-A8; Tue, 30 Sep 2025 12:40:54 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1v3Xmw-001ERx-0Q;
	Tue, 30 Sep 2025 12:40:54 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1v3Xmw-0000000FFCw-0Hl9;
	Tue, 30 Sep 2025 12:40:54 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: sha@pengutronix.de
In-Reply-To: <20250930103822.2395670-1-a.fatoum@pengutronix.de>
References: <20250930103822.2395670-1-a.fatoum@pengutronix.de>
Message-Id: <175922885406.3633259.17304860243823482596.b4-ty@pengutronix.de>
Date: Tue, 30 Sep 2025 12:40:54 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250930_034056_079465_5239077C 
X-CRM114-Status: UNSURE (   9.11  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH master] Revert "MAKEALL: query CONFIG_64BIT before make
 instead of CONFIG_ARM64 after"
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 30 Sep 2025 12:38:22 +0200, Ahmad Fatoum wrote:
> The commit being reverted here assumed that all defconfigs have a
> corresponding file, but this doesn't hold true for generated configs
> like multi_v8_efi_defconfig.
> 
> The issue that was meant to be addressed disappeared after rerunning
> the test, so it might have been just a fluke (or triggered by shuffle,
> although I was unable to reproduce with the same seed).
> 
> [...]

Applied, thanks!

[1/1] Revert "MAKEALL: query CONFIG_64BIT before make instead of CONFIG_ARM64 after"
      https://git.pengutronix.de/cgit/barebox/commit/?id=92d503132efc (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



