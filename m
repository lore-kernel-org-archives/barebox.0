Delivery-date: Tue, 05 Aug 2025 11:36:52 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujE6G-007FYk-16
	for lore@lore.pengutronix.de;
	Tue, 05 Aug 2025 11:36:52 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujE6F-0004Aw-II
	for lore@pengutronix.de; Tue, 05 Aug 2025 11:36:52 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=oBFoxnsg87L4iEagNjxpzGwjrXMOA08fLIq/OyAxBIE=; b=FfVz7O9LnU7CiTTsyMS2+JRea6
	89g0RaOmkvfLDE+kxMfn6OngvdaffTQKkJh0ASaXySSRLO7PMAFgVCt+R9m6Q4CsppQiYk3IEO5sB
	QuoNePEaELzPD14ZKtp3w4y2Ptwd0qJs+j/oiJE4THOu4Uywg+X05JX+Q0663zOBuhS56xXBJLY1F
	flKy2PZ4dvhjWXmgdTGfrncJi9RuGUnrA8grvwsfIjmhikq1mK/q44AYTvrwSsONFV39ECLPhGdLK
	knT+htmZNfRMLApJP6N55pm10mA8+KUn5cp1QrRVxi6dr6pKUWxORvnbx6HZo1nCMdfXjmnLS/wau
	R03HwABg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujE5m-0000000CO3B-13AA;
	Tue, 05 Aug 2025 09:36:22 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujDtZ-0000000CLOt-41XZ
	for barebox@lists.infradead.org;
	Tue, 05 Aug 2025 09:23:47 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1ujDtY-0001WA-DG; Tue, 05 Aug 2025 11:23:44 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1ujDtW-00C1AN-1c;
	Tue, 05 Aug 2025 11:23:42 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1ujDtW-00Ej6Z-1Q;
	Tue, 05 Aug 2025 11:23:42 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Stefan Kerkmann <s.kerkmann@pengutronix.de>
In-Reply-To: <20250709-fix-hab-equal-hash-writes-v1-1-6a59bb4b5ff1@pengutronix.de>
References: <20250709-fix-hab-equal-hash-writes-v1-1-6a59bb4b5ff1@pengutronix.de>
Message-Id: <175438582243.3509922.730367748623284066.b4-ty@pengutronix.de>
Date: Tue, 05 Aug 2025 11:23:42 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250805_022346_007835_F9F34C32 
X-CRM114-Status: UNSURE (   7.91  )
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
Subject: Re: [PATCH] hab: writing the same srk hash is not an error
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 09 Jul 2025 09:42:43 +0200, Stefan Kerkmann wrote:
> Before this commit writing the same srk hash twice failed with an error.
> This is inconsistent with other invocations of the hab tool e.g.: `hab
> -l -p` doesn't fail if the lockdown bit is already set.
> 
> So let's align the behavior by only throwing an error if we attempt to
> write a srk hash that is different from the one that is already burned.
> 
> [...]

Applied, thanks!

[1/1] hab: writing the same srk hash is not an error
      https://git.pengutronix.de/cgit/barebox/commit/?id=788757cf85d2 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



