Delivery-date: Fri, 13 Mar 2026 12:18:04 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w10Wq-000Aiz-09
	for lore@lore.pengutronix.de;
	Fri, 13 Mar 2026 12:18:04 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w10Wp-0005n6-H2
	for lore@pengutronix.de; Fri, 13 Mar 2026 12:18:03 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=DaFiJr7IEBQtHCMcs+rb8kldVuObFBqERz7tLqTtcd4=; b=gtP3WG8pBwruUmtBrv/28IaipI
	yUnF719LuP97//x7fyO761+Z2Cx7FUe6G/G4J2vVSqtPw8O2tQpHTnOW1CuiaZKXApHHNG4U9XaSA
	qbMkR6whpxz3vQFKnFRJ0IOLK1xqN+IiEw6N7BDC5SuhLa8HXispWc7FP0eVq8CC7E7wZD3Brp8D6
	yju5k0P7Mg5NV0eNhy6AeCTk5HYrsE+nktLox/6yh1YRdA2COacJ7OvWq/L/ZxJEa8/eMCeKzVTB2
	FReaY04bxaDMYZZi4xOJ+eD1wvh7d358/F5W2DvtY0o29nsIBl233dKjtG2Sfuhv/UGCHmM0o8il6
	+w0pDOkw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w10WJ-000000000lo-1xe4;
	Fri, 13 Mar 2026 11:17:31 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w10WH-000000000kx-1zLX
	for barebox@lists.infradead.org;
	Fri, 13 Mar 2026 11:17:30 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w10WF-0005e6-Nd; Fri, 13 Mar 2026 12:17:27 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w10WF-0004Rr-1k;
	Fri, 13 Mar 2026 12:17:27 +0100
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w10WF-00000000sD3-21UB;
	Fri, 13 Mar 2026 12:17:27 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20260312192110.539601-1-a.fatoum@pengutronix.de>
References: <20260312192110.539601-1-a.fatoum@pengutronix.de>
Message-Id: <177340064747.208368.4405735321340509838.b4-ty@pengutronix.de>
Date: Fri, 13 Mar 2026 12:17:27 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260313_041729_537331_E269B55E 
X-CRM114-Status: UNSURE (   7.59  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=ham
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] ARM: cpu: setupc: relocate BSS in
 relocate_to_adr()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 12 Mar 2026 20:20:42 +0100, Ahmad Fatoum wrote:
> When calling relocate_to_adr(), barebox is copied without BSS to a new
> place. The new BSS region is not necessarily zeroed, but setupc()
> following relocate_to_adr() will take care of that.
> 
> With incoming change to make setupc() idempotent, this will become
> problematic as the variable in .data will indicate that the BSS is
> zeroed, while the new BSS region isn't actually.
> 
> [...]

Applied, thanks!

[1/2] ARM: cpu: setupc: relocate BSS in relocate_to_adr()
      https://git.pengutronix.de/cgit/barebox/commit/?id=d443585bcce6 (link may not be stable)
[2/2] fixup! ARM: setup_c: avoid clearing BSS twice
      (no commit info)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



