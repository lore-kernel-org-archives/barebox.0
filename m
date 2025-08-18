Delivery-date: Mon, 18 Aug 2025 15:53:13 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uo0IU-001u2T-1T
	for lore@lore.pengutronix.de;
	Mon, 18 Aug 2025 15:53:13 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uo0IT-0004mz-Ar
	for lore@pengutronix.de; Mon, 18 Aug 2025 15:53:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=hgP62dmTonwhw38Jg76CPF3dGvkTb+0CUjYy8sdmPOs=; b=4jTySy53z9I87gC+rYdUDm18qv
	jEqavHrRbFVy3bJsFkc0PeN33fv+7FeBr9uoNnYYtg6iQ4FUe7MeK4nn7RGl1XveACpPcGq+cS9WM
	Qh5cz/OJVA8Du6MKIbqARPVIczQsIpbZsJCj/AcBDia2JfEHtVKeyR4v8P79SZU4LRoAw6orPJkgx
	VGuY69UK5/wKPv0q7YhZ9hBdqNAa1WmYLnvnhsMIk4PLFxk1VGQc+HdlsylI8J9JIAGgNkHkQOPOg
	cRHQP+9fxFkHQQ1WJRiraWd0asMRldgz59NliZAolDMYVu0Ubmh1fqpncjtY9UIuGgCiF1FqeErBH
	ouvGLcFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uo0I0-00000007fdP-3xEq;
	Mon, 18 Aug 2025 13:52:44 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uo0Hy-00000007fcc-0KSd
	for barebox@lists.infradead.org;
	Mon, 18 Aug 2025 13:52:43 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uo0Hv-0004gd-CE; Mon, 18 Aug 2025 15:52:39 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uo0Hv-000uek-0c;
	Mon, 18 Aug 2025 15:52:39 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uo0Hv-007vAQ-0O;
	Mon, 18 Aug 2025 15:52:39 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20250814095643.1132022-1-s.hauer@pengutronix.de>
References: <20250814095643.1132022-1-s.hauer@pengutronix.de>
Message-Id: <175552515911.1888033.12702344419565642574.b4-ty@pengutronix.de>
Date: Mon, 18 Aug 2025 15:52:39 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250818_065242_117343_06D60D48 
X-CRM114-Status: UNSURE (   7.40  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] watchdog: rti_wdt: Fix reset on AM62L
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 14 Aug 2025 11:56:42 +0200, Sascha Hauer wrote:
> Due to different watchdog output routing on the AM62L we have to set RTIWWDRXCTRL
> register differently in order to properly reset the SoC. Handle this
> difference in form of a SoC specific compatible string. Based on the
> corresponding Linux patch posted here [1]
> 
> [1] https://lore.kernel.org/all/20250721235705.1160972-1-jm@ti.com/
> 
> [...]

Applied, thanks!

[1/2] watchdog: rti_wdt: Fix reset on AM62L
      https://git.pengutronix.de/cgit/barebox/commit/?id=fda48aa09690 (link may not be stable)
[2/2] ARM: dts: AM62L: switch watchdog to SoC specific compatible
      https://git.pengutronix.de/cgit/barebox/commit/?id=2624174f7033 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



