Delivery-date: Mon, 22 Apr 2024 14:17:18 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rysbm-00BTwg-1B
	for lore@lore.pengutronix.de;
	Mon, 22 Apr 2024 14:17:18 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rysbl-0006ll-QC
	for lore@pengutronix.de; Mon, 22 Apr 2024 14:17:18 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wHFbYteKS3SzWvLmJ0AU93pKaAEAE/pUBwt829iR0qg=; b=ACsHSaO4wwIClUozgRCIe6kIqo
	RsSFVTRb0nOgVdvLXcSshVuWfPOPB9vzD0mc6oflznxB9LbR3LzcNcMTnZL07h/vd0xZQeT28bgqD
	jF0/OPz1ETFEEs3QxjbhL63cUzoZOKZcjhcWkm8YrbhA/k3fLTPerx3+cpLhSnVX0yYbatElC4d2g
	7XSC6RqMPjpDJfYEL+966yJB5aSPQ+rrlB4pgNAysl6xHWGznEEi39rsUjwxOiVKR+mwZJHnXup+U
	dpsIrnie7TStYP2BlKozY+G9lvl47CKtIz31tHS3V0Cl5YK43ETn7srPJCSnzJuX2LrPhoXGq8CVO
	5hJnHnYg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rysbK-0000000DTss-0C4N;
	Mon, 22 Apr 2024 12:16:50 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rysbG-0000000DTsR-1id7
	for barebox@lists.infradead.org;
	Mon, 22 Apr 2024 12:16:48 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rysbF-0006EO-6s; Mon, 22 Apr 2024 14:16:45 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rysbE-00Dgiy-Qj; Mon, 22 Apr 2024 14:16:44 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rysbE-006VSd-2U;
	Mon, 22 Apr 2024 14:16:44 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240403072332.2694292-1-a.fatoum@pengutronix.de>
References: <20240403072332.2694292-1-a.fatoum@pengutronix.de>
Message-Id: <171378820477.1550876.15192664380936086812.b4-ty@pengutronix.de>
Date: Mon, 22 Apr 2024 14:16:44 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240422_051646_478496_9E04BF99 
X-CRM114-Status: UNSURE (   9.60  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] include: kconfig.h: move __is_defined definition
 into new header
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 03 Apr 2024 09:23:31 +0200, Ahmad Fatoum wrote:
> While we run the preprocessor over device trees before compiling them,
> we don't define the Kconfig symbols and including <generated/autoconf.h>
> would fail.
> 
> The file defines __is_defined however, which can be useful for other
> macros that are either defined to 1 or undefined like the macros we
> define for device tree fragments to indicate which file they are being
> appended to. To make it possible to use __is_defined from fragments,
> move the kconfig-independent part out of <linux/kconfig.h> into
> <linux/is_defined.h>.
> 
> [...]

Applied, thanks!

[1/2] include: kconfig.h: move __is_defined definition into new header
      https://git.pengutronix.de/cgit/barebox/commit/?id=71b94b24f462 (link may not be stable)
[2/2] include: is_defined: implement __if_defined helper
      https://git.pengutronix.de/cgit/barebox/commit/?id=1674da1f95ce (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



