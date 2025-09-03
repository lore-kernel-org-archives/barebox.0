Delivery-date: Wed, 03 Sep 2025 08:17:25 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1utgoA-007Y1T-0o
	for lore@lore.pengutronix.de;
	Wed, 03 Sep 2025 08:17:25 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1utgo9-0006j2-45
	for lore@pengutronix.de; Wed, 03 Sep 2025 08:17:25 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=OGLBR8Rl7C/ZjiDU3Tl92/9uoE3eaOuO9+iRMLqVZlY=; b=X65GHSHpl4s/CIWOkpRP3Vw61h
	VWMkuwaxn1bWXlxoeDN0IdJ9WWZ1+EtVOoN10Tc24WgFSEk1lO0b/HmfrYDuODcyNXEPhktFYpvhK
	XEudfd6d52apxzt0SvewB1gGAFVM0mAzq5Q/otaniI6JKlcb5Yz/5gjANnOyRTal15OCpu0Q20fvK
	9g9sza1Nr27IxoPUT68G4VIioCPHSR0tI68Br9tV1/d+P2paqluLqhq6qt6HnoWRuG4A69stpI7tL
	afIaWGU2dy+7/0+e0towzygP2xFdFRu5Pd+sYT/G8p29gtwiRGexowE6hueNFatCq3lVLl6eV+4oB
	/ezBUMBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utgnl-00000004XKS-1v7C;
	Wed, 03 Sep 2025 06:17:01 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utgkr-00000004W5E-0WdH
	for barebox@lists.infradead.org;
	Wed, 03 Sep 2025 06:14:02 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1utgkp-000636-Rr; Wed, 03 Sep 2025 08:13:59 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1utgkp-003VxH-2B;
	Wed, 03 Sep 2025 08:13:59 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1utgkp-00000009kX5-2aCe;
	Wed, 03 Sep 2025 08:13:59 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: fpg@pengutronix.de
In-Reply-To: <20250901141259.415561-1-a.fatoum@pengutronix.de>
References: <20250901141259.415561-1-a.fatoum@pengutronix.de>
Message-Id: <175688003960.2323768.11593853042626650607.b4-ty@pengutronix.de>
Date: Wed, 03 Sep 2025 08:13:59 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250902_231401_167503_749B4029 
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH master 1/3] console: move full ctrl+c implementation
 into separate file
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 01 Sep 2025 16:12:55 +0200, Ahmad Fatoum wrote:
> There is no reason to keep different ctrl+c implementations for the full
> and simple console case. In preparation for unifying them, move the
> implementation into its own file.
> 
> 

Applied, thanks!

[1/3] console: move full ctrl+c implementation into separate file
      https://git.pengutronix.de/cgit/barebox/commit/?id=ee6c6415afc5 (link may not be stable)
[2/3] console: simple: use common ctrl+c implementation
      https://git.pengutronix.de/cgit/barebox/commit/?id=c49ea73a0d13 (link may not be stable)
[3/3] sandbox: add simpleconsole_defconfig
      https://git.pengutronix.de/cgit/barebox/commit/?id=13024f3780ac (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



