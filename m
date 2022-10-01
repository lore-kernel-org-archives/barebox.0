Delivery-date: Sun, 02 Oct 2022 00:48:44 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oelHo-002q3h-3t
	for lore@lore.pengutronix.de; Sun, 02 Oct 2022 00:48:44 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oelHm-0004nA-V3
	for lore@pengutronix.de; Sun, 02 Oct 2022 00:48:43 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=78ArbpS+MX7FxuZXq49R157qE0Wc8Xe7wlyjEwfZans=; b=J64PumA2LgjKbAbPPgZy+qNEfM
	otNW9cbKG93sdaVY4+GyLepSGgsszJ35PWJ6kg3vzvHDNoCM9BHBT70c8dnSa1151E+ShWvwV/dx3
	EIKiSV9XILXc1IkC5NWsPdGdSQTB/w3uMQy8UpTOiOAOv7gcZuPQflPtO0UAPc12wxnKTputXCMRd
	FVfHzXtCwjMkNCtlIoS2XcuYCKc0sQWBtYnQa92smPr/6XKeA6+FP4d1d3XC895pkaqZea3hwwyRW
	d6+omYoXfFKPcrblDOxl3sUKcG+pkMQ4PWPqeIAGF4V7dL0Uj1vsOZjP9r4K6UT/pwP6EVXxZQre/
	5rLg5Q3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oelFM-00GP5d-FK; Sat, 01 Oct 2022 22:46:12 +0000
Received: from mail.skyhub.de ([5.9.137.197])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oelFC-00GP3x-M8
	for barebox@lists.infradead.org; Sat, 01 Oct 2022 22:46:08 +0000
Received: from zn.tnic (p200300ea9733e7b3329c23fffea6a903.dip0.t-ipconnect.de [IPv6:2003:ea:9733:e7b3:329c:23ff:fea6:a903])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.skyhub.de (SuperMail on ZX Spectrum 128k) with ESMTPSA id 1FBFA1EC0657;
	Sun,  2 Oct 2022 00:45:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alien8.de; s=dkim;
	t=1664664352;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:in-reply-to:in-reply-to:  references:references;
	bh=78ArbpS+MX7FxuZXq49R157qE0Wc8Xe7wlyjEwfZans=;
	b=EddN4d5SoC1sFt620IUcnZsknZ3P+dlpL5H+cYZkJofAn6uB6+nXDQrmbGtY1krLjZhFzf
	haIm1nyN2qI8dlSKYRlQ1KoqcM+LtkTbU1YAhEZtav1t6Cei0ACeyuVn33GJHirguwBYzP
	LkLNLlSLb7oHSjnZqQgGnqAdRh+lXQQ=
Date: Sun, 2 Oct 2022 00:45:48 +0200
From: Borislav Petkov <bp@alien8.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: hpa@zytor.com, Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>,
	Dave Hansen <dave.hansen@linux.intel.com>, x86@kernel.org,
	Jonathan Corbet <corbet@lwn.net>, barebox@lists.infradead.org,
	linux-kernel@vger.kernel.org, linux-doc@vger.kernel.org
Message-ID: <YzjDHOWkIoWF+h/R@zn.tnic>
References: <20220513143039.2065756-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20220513143039.2065756-1-a.fatoum@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221001_154602_919139_A496B3E3 
X-CRM114-Status: UNSURE (   8.36  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] Documentation: x86: boot: reserve type_of_loader=13 for
 barebox
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, May 13, 2022 at 04:30:39PM +0200, Ahmad Fatoum wrote:
> barebox built as EFI payload has been booting Linux on x86 with
> type_of_loader=0xff since v2015.09.0.

What is barebox?

That https://en.wikipedia.org/wiki/Barebox ?

That version number v2015 - am I to understand it that it has been
booting Linux since the year 2015?

In any case, it would be useful to explain a bit what it is here.

> Reserve 13, the next free id, so this can be used instead.

Sure, I guess, why not.

Thx.

-- 
Regards/Gruss,
    Boris.

https://people.kernel.org/tglx/notes-about-netiquette


