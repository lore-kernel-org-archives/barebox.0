Delivery-date: Fri, 15 Mar 2024 08:21:28 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rl1se-007QCR-1L
	for lore@lore.pengutronix.de;
	Fri, 15 Mar 2024 08:21:28 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rl1sd-0004uB-RO
	for lore@pengutronix.de; Fri, 15 Mar 2024 08:21:28 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=mMKj8pYczBO7kVP4gGInoxzbKZp7xw+F6ExvJ2Rlfe0=; b=zG8yvyxXO6/t8g5pyyTG6tkRe5
	eLf/iET6Pj45syYTJpidkOXUSyC8Q4wtc4mMysrzuWvnIcFvmMZ2/TWTRVaf44W4vqPWr9L46q+id
	MABLNSyfuH52rqsKG6zwKiYhUGvMPqmIZo3lqHiMo9zeqeUjDBfrThzm/jMGYj5FBt8TnsVDqMxRY
	b1AWVY3j+OUaRuAvC5nV8l6ZbW/XfGwbEm2gyqiMoYLLxpmXdL1aFajDKiMA+R/PjjFaJJnlpBbnm
	iL67XVUGgYCtT3glnCaHidx50Y0hehXVRMjE3Fmeb2oOk5xXuRCWI13eZhBtm7Dzuz9nu4A7GHQED
	HNZjzvyQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rl1s7-0000000Gwxh-1C4O;
	Fri, 15 Mar 2024 07:20:55 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rl1s4-0000000Gwwp-1FDU
	for barebox@lists.infradead.org;
	Fri, 15 Mar 2024 07:20:53 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rl1s2-0004cL-Ds; Fri, 15 Mar 2024 08:20:50 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rl1s2-006Seb-1O; Fri, 15 Mar 2024 08:20:50 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rl1s1-0088Px-39;
	Fri, 15 Mar 2024 08:20:49 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Marco Felsch <m.felsch@pengutronix.de>
In-Reply-To: <20240313195606.3911219-1-m.felsch@pengutronix.de>
References: <20240313195606.3911219-1-m.felsch@pengutronix.de>
Message-Id: <171048724997.1938938.14970913708740611620.b4-ty@pengutronix.de>
Date: Fri, 15 Mar 2024 08:20:49 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240315_002052_382306_CE1E5F2B 
X-CRM114-Status: UNSURE (   7.66  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 1/4] fastboot: add support to set fastboot_bbu from
 board code
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 13 Mar 2024 20:56:03 +0100, Marco Felsch wrote:
> Add a helper to set the fastboot_bbu variable to be independent of the
> initlevel.
> 
> 

Applied, thanks!

[1/4] fastboot: add support to set fastboot_bbu from board code
      https://git.pengutronix.de/cgit/barebox/commit/?id=583b331c2325 (link may not be stable)
[2/4] boot: add helper to set default boot source from board file
      https://git.pengutronix.de/cgit/barebox/commit/?id=f6bea691a0d9 (link may not be stable)
[3/4] startup: fix autoboot_state in case of abort
      https://git.pengutronix.de/cgit/barebox/commit/?id=5a76a2dd1cc5 (link may not be stable)
[4/4] common: barebox_banner: fix missing newline
      https://git.pengutronix.de/cgit/barebox/commit/?id=dc82ff225a9b (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



