Delivery-date: Wed, 08 Jan 2025 16:15:35 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tVXmR-000myk-0d
	for lore@lore.pengutronix.de;
	Wed, 08 Jan 2025 16:15:35 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tVXmR-00024g-5F
	for lore@pengutronix.de; Wed, 08 Jan 2025 16:15:35 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=zrMXF8c47RxbggxF49RcIYrRCmYCt97HKZR1tpgkgk0=; b=20RtD+nMSJn8iVBBy1elEIKMfq
	uWvLX8PAsLT0mu8phJBG+/kOqLTsAV7m3sFiej+p/72wTFGZ98n0xMGuguiIVCBWBQIj8pO15EY12
	r3Q1jHbWmujpBYhChVnR1Yroe5dI/t4lsrHYTimfnppdzJvIuqHm7AvaVPVInIdGaKthnyCWTFPo3
	1YOxL2Pc6FB7B4AXm/dFjonycIJ7+C/cazzS0wrM+qDmoQkOnAzoyPfcn3lWu9Va6MEFiiMx8MKnW
	/xXr9Z5BSfIrTph7zOtiPXGPnJmCCFYVsbfUVyvf8wXiF6j0ziiKthmapYQUx6nm8gij3rO2xit9p
	HOGPUh7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tVXls-00000008vbR-1fWe;
	Wed, 08 Jan 2025 15:15:00 +0000
Received: from mail.inside-m2m.de ([188.68.57.244])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tVXlo-00000008vZZ-2uWg
	for barebox@lists.infradead.org;
	Wed, 08 Jan 2025 15:14:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=inside-m2m.de;
	s=default; t=1736349287;
	bh=abKCG9162y/G/JbM9IO9QjR/RXWynLGC8dlW1dX25wI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=DGxrk71vVAl1UsPSJIuaZ1Bny2TRuB/J8XWpvMU3eDIkhqPfjHhglYxuqZYMxIpxH
	 OUR4QaN51VMz+d16Sx7CTvg4GiOo88Gg0zMpGoQ/0MdkWz/cYCuFMzgvGvT2A2CTF+
	 UWdYH3f+AOiPpkoWCMJL2dcaFe1ka8pGPm/r5Z8dQxpnt2Tmv9CzAX5SfIWxBuFJ//
	 L9UbhKMR0DiMtK3emlfGdyFtWT5P1NwdjXlK9KONEqcoBBveonKt+fIhUU565C+oIG
	 YH5y7OHNzkcwSwg10iVu54zpHSYVRiQs89LceVEWH1obD7IydbQZ8N4HR/Chso6DMr
	 /W5HcoTNH8Zlg==
Received: from hephaistos (business-90-187-159-109.pool2.vodafone-ip.de [90.187.159.109])
	(Authenticated sender: konstantin.kletschke@inside-m2m.de)
	by mail.inside-m2m.de (Postfix) with ESMTPSA id 31928400E1;
	Wed,  8 Jan 2025 16:14:46 +0100 (CET)
Date: Wed, 8 Jan 2025 16:14:45 +0100
From: Konstantin Kletschke <konstantin.kletschke@inside-m2m.de>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <Z36WZYxab1bAEzFG@hephaistos>
References: <Z31B5rxOomVzKR_1@hephaistos>
 <Z36MZJtzptPAdmsI@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <Z36MZJtzptPAdmsI@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250108_071457_166916_F91F92F4 
X-CRM114-Status: UNSURE (   6.72  )
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
X-Spam-Status: No, score=-5.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: =?iso-8859-1?B?W1BBVENIXaBBUk0=?= =?iso-8859-1?Q?=3A?=
 beaglebone: add delay in lowlevel.c
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Sascha,

On Wed, Jan 08, 2025 at 03:32:04PM +0100, Sascha Hauer wrote:

> Calling udelay(1000) and adding a comment saying it delays 1.8ms looks
> inconsistent. Maybe better count up to 2 in __udelay() above which makes

I completely agree somehow since the time is not even constant and depends on
the PLL settings just done before.

I suggest the following:

Removing the "* 3" fancy thingy in the function's loop, calling the
function with 3000 instead of 1000, changing comment to "needed on some
Beaglebone Black for warm start after reset".

That would be as simple as possible.

Regards
Konsti


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



