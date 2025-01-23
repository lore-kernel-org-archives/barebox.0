Delivery-date: Thu, 23 Jan 2025 18:09:58 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tb0iL-003X80-20
	for lore@lore.pengutronix.de;
	Thu, 23 Jan 2025 18:09:58 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tb0iL-0003F6-O4
	for lore@pengutronix.de; Thu, 23 Jan 2025 18:09:58 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=pmylqfkWrt1eo/4TeKzzhOAydXofSCdlKbjjZiGWzc4=; b=gf2dIwixSPPLhufxuA2hhu8nlJ
	I869BtSsS7BlQdUUybapqMuUcC613BYe+jAtXYhiEP6wKh/h/phZzchWoQFR24/LcZoq71pVENqm/
	Gs5DJvkF7Ov1HNnSgPEKFpZ5uATkDxGfddozyqexFaTX/2L3Hbrsclrxh+5y2amRTtaGfb6aLtasC
	DOnrfkhZng6JvvzMblIUqfoFATG/Qg7LqasHK6cKtWqdWQWb6savL+LBaMYhuk/tAc2hpZ/EAfo1f
	2y5oyPO2T7VIxgvIgZBMWtZZbDZPZCj9wqygq6dWqMCkpPfiD0xmcvYkAIHicwUOY94peTM+pPxQb
	VxxLS65Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tb0hm-0000000CtFW-3QT9;
	Thu, 23 Jan 2025 17:09:22 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tb0hk-0000000CtF2-2HtK
	for barebox@lists.infradead.org;
	Thu, 23 Jan 2025 17:09:22 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1tb0hh-00035E-JQ; Thu, 23 Jan 2025 18:09:17 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1tb0hh-001Uej-1K;
	Thu, 23 Jan 2025 18:09:17 +0100
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1tb0hh-009cU3-11;
	Thu, 23 Jan 2025 18:09:17 +0100
Date: Thu, 23 Jan 2025 18:09:17 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20250123170917.oyeja5kb4azadh4a@pengutronix.de>
References: <20250123161849.1933987-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250123161849.1933987-1-a.fatoum@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250123_090920_579391_C8DB0245 
X-CRM114-Status: UNSURE (   8.86  )
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
X-Spam-Status: No, score=-6.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH master] environment: autoprobe environment only when
 CONFIG_INSECURE=y
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Ahmad,

On 25-01-23, Ahmad Fatoum wrote:
> As things are, secure booting systems are expected to disable
> CONFIG_ENV_HANDLING to avoid their behavior changing due to a barebox
> environment loaded at runtime.
> 
> Still, some users may want to keep CONFIG_ENV_HANDLING enabled, but
> activated only selectively. For those users, barebox autoprobing block
> devices for a GPT partition with the matching UUID is undesirable.

Good catch!

> Therefore, allow disabling this autoprobe behavior via a globalvar.
> To balance convenience against security, the default for the globalvar
> will depend on whether the CONFIG_INSECURE option is set.

A global INSECURE option like OP-TEE does seems reasonable to avoid
flooding the Kconfig.

> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>


