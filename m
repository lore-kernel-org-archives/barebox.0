Delivery-date: Mon, 23 Feb 2026 10:12:02 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vuRyz-004mFE-2j
	for lore@lore.pengutronix.de;
	Mon, 23 Feb 2026 10:12:02 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vuRz0-0000Li-72
	for lore@pengutronix.de; Mon, 23 Feb 2026 10:12:02 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ThGy/5g5eKcNlkYxgZc9vpa+K6CpRx+oWwyqE4CAmLI=; b=Gel9+leY+SEQ5iuaoBuu9+Z3Df
	r+NZy2jhW9maB+usko3yg45wQvO6LqawVvLG3YVWxrJ4I3ckRqUptcXRKczGBoyzXT/fIvSrfDrz8
	xvMlL6EKM8jILFILP3CPPh5XnZ/CXNPK9LuR8BM4t42/MI2MibnHgR83OmDBWx+J0fWnUmrBOHqru
	v5EcUXjI85WDNWs/dvQS8r3hgGtsjCj5V+BKBmt3FxrbiWYHYREQ/to9ItzGrr8W5rrLazSWjJI4J
	x9MBV4KK7AO0o968yY5uD+koZafvExCDRaAHwnnNsP8P3qrDhqup6xwPUfl+CYfHnva/gfquseMf3
	tRpXsvCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuRyb-0000000HVVm-0zVN;
	Mon, 23 Feb 2026 09:11:37 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuRyY-0000000HVVO-44FD
	for barebox@lists.infradead.org;
	Mon, 23 Feb 2026 09:11:36 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vuRyX-0000H6-FN; Mon, 23 Feb 2026 10:11:33 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vuRyV-002Ch4-32;
	Mon, 23 Feb 2026 10:11:33 +0100
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vuRyX-00000000nRx-0xUf;
	Mon, 23 Feb 2026 10:11:33 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, 
 =?utf-8?q?Enrico_J=C3=B6rns?= <ejo@pengutronix.de>
In-Reply-To: <20260220085130.1326621-1-ejo@pengutronix.de>
References: <20260220085130.1326621-1-ejo@pengutronix.de>
Message-Id: <177183789322.190076.6139214632754294256.b4-ty@pengutronix.de>
Date: Mon, 23 Feb 2026 10:11:33 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260223_011135_010761_4D63E2C8 
X-CRM114-Status: UNSURE (   5.93  )
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
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] Documentation: bootchooser: fix grammar and
 wording for 'attempts_locked'
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 20 Feb 2026 09:50:54 +0100, Enrico Jörns wrote:
> * 'variable in the bootstate' is undefined -> replace
> * fix and rephrase 'use case' sentence
> * fix and rephrase 'trade-off' sentence
> * Add missing period after 'avoid this behavior'
> * Avoid unclear 'to boot if any'
> * fix typo, remove excess whitespace
> 
> [...]

Applied, thanks!

[1/2] Documentation: bootchooser: fix grammar and wording for 'attempts_locked'
      https://git.pengutronix.de/cgit/barebox/commit/?id=2790f372af59 (link may not be stable)
[2/2] Documentation: bootchooser: move attempts locking to own section
      https://git.pengutronix.de/cgit/barebox/commit/?id=3018249863fc (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



