Delivery-date: Tue, 03 Dec 2024 19:35:38 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tIXkH-003bMl-2S
	for lore@lore.pengutronix.de;
	Tue, 03 Dec 2024 19:35:38 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tIXkH-0005J8-Nx
	for lore@pengutronix.de; Tue, 03 Dec 2024 19:35:38 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=T57O8trtaxqfeox9my81OqXRDcmUOeKzOsRNZgU1Nnc=; b=ERR1jMMTsrq9R2iR/vWIfSUyLl
	eGK0pH1+INgKyH9WZihBQwSrfgYkECNxy8jBpHl3tPo1U/cZxuwQ37X/+0PYugCVYvfPv7ATLHll+
	BOzG+AEze/VHuoKasLxHkO1b/hGRO+i+Qnw+KxuJji+PKT4Bf1OnONt24VmdtTjnz8RMAULEzR5DO
	4quDmNtF2l0aBZ7Hbi0oWerSzkFIDQ3KbDrUHwiCVsQC8put7sW+FNBmEdlgre+TAs6Ri607IA3DD
	sUYlQSRgbbeogcpMq2JZDJggZRbbvRzRCLK8lUiWJ3Mh/vZrOr2tWCB8aeRb4kil2M0JCRd4NVPZw
	wFOGQjjg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tIXjq-0000000ANqR-2owu;
	Tue, 03 Dec 2024 18:35:10 +0000
Received: from mail.inside-m2m.de ([188.68.57.244])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tIXjn-0000000ANpy-3Tci
	for barebox@lists.infradead.org;
	Tue, 03 Dec 2024 18:35:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=inside-m2m.de;
	s=default; t=1733250873;
	bh=03wE9OmMWH5GGmoCO7M8W23WHmA9/uxmhGiIrsl2N4U=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=dzZ5zTMw5uTc1SLIQFDVei/IMB60q0QcUsyU67n4Ed52HbPM0Y9iMiInkA7/CtEPN
	 jKt5fb7ycRLi85BUyDUGE5V8pAmusSvVbqUJ2brdXHTugoyNtWPBwJTGsSV2q+ZFSB
	 p828AeZFSTw+t3oXdgcH0Sf7qGLx6mlpvo618ehLa/FftJnJHiF/rrFMWViCsDV1PQ
	 RKy4ZJsRD7Amhtl7BwCYyu8igBfEnhrp7dmP7l2PyNdlHiGKJlMDMI33Qg5ziNDqNp
	 QQHdsz+TDJgCJtXQSt5QBnDTO9Fm0Ad1keNGAsNBLaoeKP214Lgxj6dFcQV5y0t7gO
	 kc1Oe8OLGBvUQ==
Received: from hephaistos (unknown [94.31.103.219])
	(Authenticated sender: konstantin.kletschke@inside-m2m.de)
	by mail.inside-m2m.de (Postfix) with ESMTPSA id 74217401DA;
	Tue,  3 Dec 2024 19:34:33 +0100 (CET)
Date: Tue, 3 Dec 2024 19:34:30 +0100
From: Konstantin Kletschke <konstantin.kletschke@inside-m2m.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <Z09PNnu8AgghB8wF@hephaistos>
References: <Z0gywL2hLcIDoLQ8@hephaistos>
 <fc008e94-9a80-4c01-8c4c-3c926721c2b1@pengutronix.de>
 <Z0g74s98_Pz98tC5@hephaistos>
 <83e0f4b3-c558-48dc-b867-f88376d73bc2@pengutronix.de>
 <Z0hbuZBvK2aLd5s1@hephaistos>
 <b91eaf6c-9559-466a-bd20-297647401c63@pengutronix.de>
 <Z03A9rr21q320J0t@hephaistos>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <Z03A9rr21q320J0t@hephaistos>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241203_103508_317488_E25BFBA9 
X-CRM114-Status: UNSURE (   6.46  )
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
X-Spam-Status: No, score=-6.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: Reset on Beaglebone Black has become unreliable/broken
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


Today tried the following for debugging purposes:

In am33xx_generic.c in arch/arm/mach-omap there is in
am33xx_restart_soc() this:

writel(AM33XX_PRM_RSTCTRL_RESET, AM33XX_PRM_RSTCTRL);

which is 0x1 written to 0x44e00f00 and causes warm restart.

I can simulate this with "mw 0x44e00f00 0x1" which shows the freeze 
I see (upon restart) on affected BBBs.

When I change the value to 0x2 (cold restart) the affected BBBs restart
successfully!

Does this ring a bell for people more experiened? This is not meant as a
proposed solution (Watchdog restart, Linux Kernel restart no covered,
reset cause deleted/hidden(?)), more is it meant as an idea to find the
cause. Poweron, cold restart working always100%, warm restart never.

Regards
Konstantin

-- 
INSIDE M2M GmbH
Konstantin Kletschke
Berenbosteler Straße 76 B
30823 Garbsen

Telefon: +49 (0) 5137 90950136
Mobil: +49 (0) 151 15256238
Fax: +49 (0) 5137 9095010

konstantin.kletschke@inside-m2m.de
http://www.inside-m2m.de 

Geschäftsführung: Michael Emmert, Derek Uhlig
HRB: 111204, AG Hannover



