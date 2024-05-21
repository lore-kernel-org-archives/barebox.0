Delivery-date: Tue, 21 May 2024 18:35:28 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s9SSU-00CTUz-0d
	for lore@lore.pengutronix.de;
	Tue, 21 May 2024 18:35:28 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s9SST-0007PY-L8
	for lore@pengutronix.de; Tue, 21 May 2024 18:35:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=SwFDG6c6Lfs+RQddME3fJTOo6AcF3SKxZ9NdGfTaLTg=; b=NiWHNLFAmOYWfQvWthA4cFmT0y
	wexz1o4k/BkTRfzx/kgvpjphLPj/z7G9WJFt9Flx6wvg6vEgzOgMpLrTOA8jppyYizeNHSIjkr2c+
	tJOLrQoY3xpuQpXB5g9pzrt7lJb/spZMHD1wEDRhCZ5VNF5C9nWosLTSEU477bFkBx34dUMCMJxc/
	8gEfgD7lA/twnNvaZ9gE/qAmIZ6HVj8Gsem3MtuHqFeHrgz7gHzg/FTTxLF8fuzEvG/KBFhbYlL7O
	xeb581AHeKfRP0aGJmkFj+mqdDtSyUCOpBbLXEAJmFAQDZJQq17LeDn3mlVv8oEObK7HeJNmWSafG
	2hjxbBcQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s9SRk-00000000W0P-32CL;
	Tue, 21 May 2024 16:34:40 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s9SRg-00000000VzL-0DoJ
	for barebox@lists.infradead.org;
	Tue, 21 May 2024 16:34:38 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s9SRd-00079O-3K; Tue, 21 May 2024 18:34:33 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s9SRc-002Phq-NG; Tue, 21 May 2024 18:34:32 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s9SRc-003wTl-25;
	Tue, 21 May 2024 18:34:32 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240521121357.1477071-1-a.fatoum@pengutronix.de>
References: <20240521121357.1477071-1-a.fatoum@pengutronix.de>
Message-Id: <171630927264.939569.141805066007108314.b4-ty@pengutronix.de>
Date: Tue, 21 May 2024 18:34:32 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240521_093436_226493_194E809E 
X-CRM114-Status: UNSURE (   7.95  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 1/3] pinctrl: split off consumer API into
 linux/pinctrl/consumer.h
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 21 May 2024 14:13:55 +0200, Ahmad Fatoum wrote:
> Follow-up patches will align the barebox pinctrl consumer API with
> Linux'. So it makes sense to have the header called the same as well.
> Users of the old pinctrl.h header are unaffected as it will include
> the new <linux/pinctrl/consumer.h>.
> 
> 

Applied, thanks!

[1/3] pinctrl: split off consumer API into linux/pinctrl/consumer.h
      https://git.pengutronix.de/cgit/barebox/commit/?id=6da06fc95ba1 (link may not be stable)
[2/3] pinctrl: rename barebox pinctrl_select_state to pinctrl_get_select
      https://git.pengutronix.de/cgit/barebox/commit/?id=ee4be3efa1e7 (link may not be stable)
[3/3] pinctrl: implement pinctrl_lookup_state/select_state
      https://git.pengutronix.de/cgit/barebox/commit/?id=da674fab4c62 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



