Delivery-date: Mon, 15 Dec 2025 12:18:23 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vV6at-00Biuc-1y
	for lore@lore.pengutronix.de;
	Mon, 15 Dec 2025 12:18:23 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vV6at-0004QM-1i
	for lore@pengutronix.de; Mon, 15 Dec 2025 12:18:23 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ZUHMCD732OMyq+vF/i4AUfx4ROsMK+JzbDIVPSutIGE=; b=q6kqN1pJXPglEfRTDmUzyIzhke
	YLT3OWKbUJySX+lTks8bix1eXSdSPvCdknd1ooCTC2UbcD19Jjz8RABPd7MsNdZ0rd7l8JW2KBa0A
	lS7iT8ykGaBTUtZjJc6lMRd6pwVX7Vj488W4kjY5cc7vMUnISpCzLCSlinbyJmzz5rcLXYX+ygIo4
	4yRBO95icfgNpr9Z6wmfcyMsj/wVbtWNpBs+bX6Ka+jo6F2/wJzSTtkPeQYBfiIAJOBy1IIGplIKy
	iHC+T8RU6T7Tsa4wF6RKDbltCv9P3cOf21h+x7Zv1fSKdV6BqxlkLDm93oRgyylpf3nENVkpknUES
	5I1gTJFw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vV6aO-00000003Vgu-3yly;
	Mon, 15 Dec 2025 11:17:52 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vV6aL-00000003Vg9-1wU7
	for barebox@lists.infradead.org;
	Mon, 15 Dec 2025 11:17:51 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vV6aJ-0004LX-LU; Mon, 15 Dec 2025 12:17:47 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vV6aJ-005ltn-1X;
	Mon, 15 Dec 2025 12:17:47 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vV6aJ-00000001UIn-1lSe;
	Mon, 15 Dec 2025 12:17:47 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20251215075907.1222551-1-a.fatoum@pengutronix.de>
References: <20251215075907.1222551-1-a.fatoum@pengutronix.de>
Message-Id: <176579746741.354794.15681124579401216876.b4-ty@pengutronix.de>
Date: Mon, 15 Dec 2025 12:17:47 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251215_031749_632943_49CBAEF6 
X-CRM114-Status: UNSURE (   6.10  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=ham
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/5] net: 9p: fix variable name in BAREBOX_MAGICVAR
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 15 Dec 2025 08:58:57 +0100, Ahmad Fatoum wrote:
> The variable is called global.9p.debug, not plan9debug.
> 
> 

Applied, thanks!

[1/5] net: 9p: fix variable name in BAREBOX_MAGICVAR
      https://git.pengutronix.de/cgit/barebox/commit/?id=370f8098d2ab (link may not be stable)
[2/5] bootchooser: inline document global.bootchooser.reset_priorities
      https://git.pengutronix.de/cgit/barebox/commit/?id=473dec063496 (link may not be stable)
[3/5] reset_source: inline document global.system.reset*
      https://git.pengutronix.de/cgit/barebox/commit/?id=fe328bcb8a40 (link may not be stable)
[4/5] Documentation: generate docs for magic variables
      https://git.pengutronix.de/cgit/barebox/commit/?id=e3078309ff30 (link may not be stable)
[5/5] Documentation: turn magic variables literals into references
      https://git.pengutronix.de/cgit/barebox/commit/?id=ab1033dd5dff (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



