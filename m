Delivery-date: Mon, 03 Nov 2025 09:41:14 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vFq7m-00EnH6-2z
	for lore@lore.pengutronix.de;
	Mon, 03 Nov 2025 09:41:14 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vFq7m-00006r-DJ
	for lore@pengutronix.de; Mon, 03 Nov 2025 09:41:14 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=OlDGi6l2Ru6ySYSCuMYNV805rSWo4e84jjnppoIV3nc=; b=zU8Cm1fmSMZeTTQ4tEYdQo7vfX
	Zuf339PXp2EeB/4rcsHpteYEyDo2Z6X3Bn89RdEWrYbcWIa8SaVCSAk2piy3dGkveVDQhIGA2Dhdz
	BoD8vxt2YGVxrwcGUjCS1H2vwjSh2GFiR9MCptLEyP/3jZDNUtE2DD8lb0USGrg3/5QibLv7rBP+w
	azU4CTgWsqbZhGVlNeI94OFzcFVAsDQCazH5W8JlqunuwDLDQ0d5pww05SibKkX6ta2d82pDgqQqP
	6NwL9hSqj4YK0/7ssFdiJKkZgSm7slSCjL636vHQ4sib/MSEo2HocmhSV8HlJLAkaPmGBH7pMIIPX
	8fYvq5RQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vFq7O-00000009Rs8-1wD1;
	Mon, 03 Nov 2025 08:40:50 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vFq7M-00000009RrZ-0ysh
	for barebox@lists.infradead.org;
	Mon, 03 Nov 2025 08:40:49 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vFq7C-0008LR-NR; Mon, 03 Nov 2025 09:40:38 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vFq7C-006pSj-1i;
	Mon, 03 Nov 2025 09:40:38 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vFq7C-0000000HLcq-3piA;
	Mon, 03 Nov 2025 09:40:38 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@barebox.org>
In-Reply-To: <20251101110732.3835886-1-a.fatoum@barebox.org>
References: <20251101105542.3830943-1-a.fatoum@barebox.org>
 <20251101110732.3835886-1-a.fatoum@barebox.org>
Message-Id: <176215923846.4134647.14005477339019142228.b4-ty@pengutronix.de>
Date: Mon, 03 Nov 2025 09:40:38 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251103_004048_276783_B1258B37 
X-CRM114-Status: UNSURE (   5.46  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: (subset) [PATCH] fixup! range: fix corner cases when exclusive
 end is zero
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Sat, 01 Nov 2025 12:07:31 +0100, Ahmad Fatoum wrote:
> While there is no risk of miscomputation here, let's avoid possible
> compile errors by putting parenthesis around macro arguments as usual.
> 
> 

Applied, thanks!

[1/1] fixup! range: fix corner cases when exclusive end is zero
      https://git.pengutronix.de/cgit/barebox/commit/?id=0649935f2b64 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



