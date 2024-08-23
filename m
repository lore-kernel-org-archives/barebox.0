Delivery-date: Fri, 23 Aug 2024 10:10:31 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1shPNP-00CWA6-1z
	for lore@lore.pengutronix.de;
	Fri, 23 Aug 2024 10:10:31 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1shPNP-0000yr-1U
	for lore@pengutronix.de; Fri, 23 Aug 2024 10:10:31 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=civYCWo7IsKp2sTq7otXBIP+pxoi7YU31XaelrhoOWQ=; b=05wzChPC3bsdVbg9XoyWN7CZob
	tbzPfK3JyMHAHYGJUVkU9mk/fEXe2mvZsOqU/7MdG5ee9JRA882p3YOnL9zn/6Ru7YrvOVNAd4BKr
	Yfzu1jwFBicQ/0VNXvGg2NIu44eXJFU8JP2W9KGch7QPxKYudGou9wThrk70NNtZIt50DH8WPfn/E
	d6EMv8ePWjmHOj7LPAJTNim2tZTUTGFK4jbmuK9PWPK273rHmpzp5DBvFIll/HvOtsFSDz7NdBcgg
	FGr7Oz2gufkj4SpjazpB+8ff/wUQauQ84N3Rx1dnqdAB0IDCM8k3AYOmXc0LJ9Oss/UEMdhF6vaJG
	E/bQ0TFw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shPMz-0000000FmwU-1cra;
	Fri, 23 Aug 2024 08:10:05 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shPJ2-0000000FlJS-2U4K
	for barebox@lists.infradead.org;
	Fri, 23 Aug 2024 08:06:02 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1shPJ1-0008St-5e; Fri, 23 Aug 2024 10:05:59 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1shPJ0-002RI9-Oc; Fri, 23 Aug 2024 10:05:58 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1shPJ0-008tvb-2H;
	Fri, 23 Aug 2024 10:05:58 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240822115630.1183874-1-a.fatoum@pengutronix.de>
References: <20240822115630.1183874-1-a.fatoum@pengutronix.de>
Message-Id: <172440035870.2121594.3490004089524966094.b4-ty@pengutronix.de>
Date: Fri, 23 Aug 2024 10:05:58 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240823_010600_814305_89BEBE66 
X-CRM114-Status: UNSURE (   7.19  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH master] ARM: semihosting: use svc instead of incorrect
 bkpt in DEBUG_LL
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 22 Aug 2024 13:56:30 +0200, Ahmad Fatoum wrote:
> The semihosting DEBUG_LL support was tested on ARM64. Trying it out on
> ARM32 leads to a hanging system, because the DEBUG_LL handler used the
> wrong instruction (breakpoint) instead of what the normal semihosting
> implementation uses (supervisor call).
> 
> 

Applied, thanks!

[1/1] ARM: semihosting: use svc instead of incorrect bkpt in DEBUG_LL
      https://git.pengutronix.de/cgit/barebox/commit/?id=e6c42b7f6571 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



