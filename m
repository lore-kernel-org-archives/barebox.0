Delivery-date: Mon, 09 Feb 2026 14:50:48 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vpRf6-00AZXK-37
	for lore@lore.pengutronix.de;
	Mon, 09 Feb 2026 14:50:48 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vpRf6-0007Qc-0T
	for lore@pengutronix.de; Mon, 09 Feb 2026 14:50:48 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=mRJbuvvZccaRoWNu4b1czRoduNl/Xt0EeaVCZApWPQM=; b=uwgIonSHLb3g7WLm2kHWpjADPI
	BO2ih7NuPk5B03o32DkwD1KMKSMm+Z/pvMDj49Gf/0A5nyvgO7JW1GTAISihgsGmJkAAXHorOvrSD
	gkTPenG3FbwASdySAF+8yQlzzvG6kh6FW9jz5PutWPkIV+QSCi7ERIBQDKzjXAZJQveSWkMmciJyu
	Q4gB4k20qn1sDTC4F/3MZWBx23NTvQSgHC6MHjVwORS3BWx7ARLk9Xu3J49jqDnQUrgCh7q8TvMTV
	q4kR/7qtgwuQdlXeHGkDIvUuhAM++9QUz6rF6HDByTKfj6Qu26Ktsvjt8KRinPRah1WTcM+2K2Ng8
	ye8rEPUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpRel-0000000FSfi-2Mtd;
	Mon, 09 Feb 2026 13:50:27 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpRei-0000000FSf7-3TCO
	for barebox@lists.infradead.org;
	Mon, 09 Feb 2026 13:50:26 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vpReg-0007LB-VT; Mon, 09 Feb 2026 14:50:22 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vpReh-004toF-1S;
	Mon, 09 Feb 2026 14:50:22 +0100
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vpReg-00000002mtz-33Rc;
	Mon, 09 Feb 2026 14:50:22 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20260205143043.2831511-1-a.fatoum@pengutronix.de>
References: <20260205143043.2831511-1-a.fatoum@pengutronix.de>
Message-Id: <177064502272.664618.16301086778311276242.b4-ty@pengutronix.de>
Date: Mon, 09 Feb 2026 14:50:22 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260209_055024_862124_D8E28EE3 
X-CRM114-Status: UNSURE (   8.93  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] scripts: include: break dependency of list.h on
 kernel.h
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 05 Feb 2026 15:30:42 +0100, Ahmad Fatoum wrote:
> We already got rid of this dependency for the normal barebox build, so
> break it up for the scripts/ build as well to avoid this nconf warning
> on some distros:
> 
>   In file included from scripts/kconfig/nconf.c:15:
>   scripts/kconfig/nconf.h:25:9: warning: ‘max’ redefined
>      25 | #define max(a, b) ({\
>         |         ^~~
>   In file included from ./barebox/scripts/include/linux/list.h:5,
>                    from ./barebox/scripts/include/list.h:5,
>                    from scripts/kconfig/expr.h:15,
>                    from scripts/kconfig/lkc.h:13,
>                    from scripts/kconfig/nconf.c:14:
>   ./barebox/scripts/include/linux/kernel.h:39:9: note: this is the location of the previous definition
>      39 | #define max(x, y) ({                            \
>         |         ^~~
>   scripts/kconfig/nconf.h:30:9: warning: ‘min’ redefined
> 
> [...]

Applied, thanks!

[1/1] scripts: include: break dependency of list.h on kernel.h
      https://git.pengutronix.de/cgit/barebox/commit/?id=c917e41c99c6 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



