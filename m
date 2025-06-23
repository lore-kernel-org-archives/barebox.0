Delivery-date: Mon, 23 Jun 2025 15:27:20 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uThCh-00AH8E-39
	for lore@lore.pengutronix.de;
	Mon, 23 Jun 2025 15:27:19 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uThCh-0002iC-DS
	for lore@pengutronix.de; Mon, 23 Jun 2025 15:27:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=796dM21pt74HTREmzY/INvLx1/pjgOf1ieTuiUs5a6c=; b=x6i5Lvmznn1cg/flmNDjZP6uq/
	uiHyV3/mOaqI0NdXPwXp5s/Zr6gf2yZaZNYE03v7Q4aFCy0DDhjWrmXSrPFpQXTL2uUCWdrlwBK4k
	11YW74cWDWD+Viql1NGiU6yhEFAN/8LtjpAazMOnVdxsWZkmUXVefslLrW6+MoDClQJivzdnbk4No
	HhmuyRyF+0RN2989URGCd8v5QSskOK3UnOcQ+gSlkjfLb/vSfNG6wPwWdLgU4SVP7y4y+kSbdEz3m
	hO+ZCPUJxImMnqMQgaouhRGPWL254tHs7T+0HjGrSgU3rcShosvSFGPx6mgjCB+afu+WzcQzi2W1P
	/eCJUhiA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uThCH-00000002s26-04t6;
	Mon, 23 Jun 2025 13:26:53 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uTflU-00000002ZmZ-2uMp
	for barebox@lists.infradead.org;
	Mon, 23 Jun 2025 11:55:10 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uTflT-0004dm-D3; Mon, 23 Jun 2025 13:55:07 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uTflT-004wPK-0h;
	Mon, 23 Jun 2025 13:55:07 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uTflT-00CU2W-0U;
	Mon, 23 Jun 2025 13:55:07 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20250618-mmu-xn-ro-v3-0-2a9825725934@pengutronix.de>
References: <20250618-mmu-xn-ro-v3-0-2a9825725934@pengutronix.de>
Message-Id: <175067970714.2975289.16397944775348185929.b4-ty@pengutronix.de>
Date: Mon, 23 Jun 2025 13:55:07 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250623_045508_737250_5EAEA188 
X-CRM114-Status: GOOD (  10.34  )
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
Subject: Re: [PATCH v3 0/6] ARM: Map sections RO/XN
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 18 Jun 2025 11:34:46 +0200, Sascha Hauer wrote:
> So far we mapped all RAM as read write with execute permission. This
> series series hardens this a bit. The barebox text segment will be
> mapped readonly with execute permission, the RO data section as readonly
> without execute permission and the remaining RAM will lose its execute
> permission.
> 
> I tested this series on ARMv5, ARMv7 and ARMv8. I am not confident
> though that there are no regressions, so this new behaviour is behind a
> Kconfig option. It is default-y, but can be disabled for debugging
> purposses.  Once this series has proven stable it can be removed.
> 
> [...]

Applied, thanks!

[1/6] ARM: pass barebox base to mmu_early_enable()
      https://git.pengutronix.de/cgit/barebox/commit/?id=6762fbcbf8a1 (link may not be stable)
[2/6] ARM: mmu: move ARCH_MAP_WRITECOMBINE to header
      https://git.pengutronix.de/cgit/barebox/commit/?id=51d012fd31e2 (link may not be stable)
[3/6] ARM: MMU: map memory for barebox proper pagewise
      https://git.pengutronix.de/cgit/barebox/commit/?id=930e19bfdd2e (link may not be stable)
[4/6] ARM: MMU: map text segment ro and data segments execute never
      https://git.pengutronix.de/cgit/barebox/commit/?id=5916385fae83 (link may not be stable)
[5/6] ARM: MMU64: map memory for barebox proper pagewise
      https://git.pengutronix.de/cgit/barebox/commit/?id=59c1288698b4 (link may not be stable)
[6/6] ARM: MMU64: map text segment ro and data segments execute never
      https://git.pengutronix.de/cgit/barebox/commit/?id=03dfb3f142fb (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



