Delivery-date: Fri, 10 Jan 2025 16:28:28 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tWGvy-000Plk-0g
	for lore@lore.pengutronix.de;
	Fri, 10 Jan 2025 16:28:28 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tWGvy-00036O-CY
	for lore@pengutronix.de; Fri, 10 Jan 2025 16:28:26 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=jLpAegxkQt9ZoPQWjLu8UfaCU4/j+MXopmVvGd/r63Y=; b=vvvdTK4N3WAapASHOGUfHiJ1CK
	QYGLHm7P/1smDvhTRD7BWl8PHjomm2PH9ry3Bf7V/S6yRgy9J8qlosh0OPug5qXzmp0F7g/LS9UDn
	iV+e3Ky9T0dMUfE3hPvX3UhD+l2hRxZya+d9bGLdwDA0Vdi3Sh4iSxQWeO11FqxSBQaoPYo9zyt/N
	+NgsFPDSTcL/T6MyKrtBzFU0OK2Sik8Wv1oLbI+QK8ZU6/pdWqBGNoSlCdgRk0SJm6JxUzufqJe5o
	OAcVN/0PJjRyv5xExNrKpi81wRd5zwUPZmBUpVYDh9xMbFno0tqAjGPw+64MlOXVrJLvyQO3ei6o3
	U+le/yPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tWGvN-0000000FvEh-4AI5;
	Fri, 10 Jan 2025 15:27:49 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tWGlo-0000000FrRg-3JIG
	for barebox@bombadil.infradead.org;
	Fri, 10 Jan 2025 15:17:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=jLpAegxkQt9ZoPQWjLu8UfaCU4/j+MXopmVvGd/r63Y=; b=Y9lywg7UEBtvIsD9Ki3zwBh/Ml
	cWRWmEpMt8ydTJ6qBhxgpxb2R/HJOcxIcWzUD8N4bAS3hlAbftNAxEIfZz1A7/SG5BlKTiBw0Y4Lk
	mGi/G9qgkhlZf4yViec/HTMtJ5pmB+lGxGSTWUcwj++lZ2esgf+OGiekzU4WMf0XmKWKtpTjZDr36
	FbeRm/S+4Nnkp65APAJU9qJSKFm2D7+9qHCq1owwvH4e58NU20RGu2T+dAcuTgkeLUFxPpByua1KO
	oAjHj+lPQPC8oo03w7zJl5+m3sHKYf2pobV0DXxdAlUj2xRCIAHRtEuYGYFpVs5u4BGkzhWx+BdUQ
	aHTcxGVA==;
Received: from mail.inside-m2m.de ([188.68.57.244])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tWGll-00000009pAR-2K3A
	for barebox@lists.infradead.org;
	Fri, 10 Jan 2025 15:17:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=inside-m2m.de;
	s=default; t=1736522198;
	bh=UpQryUMwxCxmWE6hseVRN8g8AesE57RwNf5VlFeg4bw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=cuiMQzlsaGvTf04P7gX49IU1xj5SctEGqNl+gMLuh0SEfMWPqLLRYIQepVEls9TB8
	 TPr0o43o0zFc4Q8mejCLCMfvfkM2hTDfaHATCq2XtYXNLX8YMp69m5BoW37QY6OmGD
	 gyayI3IPTkLae16iUCOCfoUIBhjkmWTj6xaiubbvml/N+BhvHNhqBU/9JxL2iZufp2
	 pPI8ffls4vJfRogoqttHKXIfqHiFpaFyrpSObQNNlI2TVPJqhLnbDBipb/2fxzd5xR
	 r70tVbduGHLeg97IyATE5ey/u9IzjyP5hM1YoZe6JV+v8zMmdsrkOOCAGIvmTabezr
	 I3GiJKi0b+KVg==
Received: from hephaistos (unknown [94.31.112.138])
	(Authenticated sender: konstantin.kletschke@inside-m2m.de)
	by mail.inside-m2m.de (Postfix) with ESMTPSA id 3C7EC404D6;
	Fri, 10 Jan 2025 16:16:38 +0100 (CET)
Date: Fri, 10 Jan 2025 16:16:33 +0100
From: Konstantin Kletschke <konstantin.kletschke@inside-m2m.de>
To: Lucas Stach <dev@lynxeye.de>
Message-ID: <Z4E50e1ZJv15hdq8@hephaistos>
References: <Z31B5rxOomVzKR_1@hephaistos>
 <Z36MZJtzptPAdmsI@pengutronix.de>
 <Z36WZYxab1bAEzFG@hephaistos>
 <9c00ffd1332ba38dffc26b0b8967f8327d72e4a0.camel@lynxeye.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <9c00ffd1332ba38dffc26b0b8967f8327d72e4a0.camel@lynxeye.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250110_151753_906758_B257233C 
X-CRM114-Status: GOOD (  13.24  )
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
Cc: barebox@lists.infradead.org
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,RCVD_IN_SBL_CSS,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: =?iso-8859-1?B?W1BBVENIXaBBUk0=?= =?iso-8859-1?Q?=3A?=
 beaglebone: add delay in lowlevel.c
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Lucas,

this is an interesting idea and I did poke around a bit.

On Wed, Jan 08, 2025 at 04:46:22PM +0100, Lucas Stach wrote:

> It would be interesting to know if any of the configured PLLs go out of
> lock again during the time your delay loop runs. I.e. check if any of
> CM_IDLEST_DPLL_CORE, CM_IDLEST_DPLL_DDR, CM_IDLEST_DPLL_PER or
> CM_IDLEST_DPLL_MPU contain a value other than 0x1.

I inserted this into the delay loop:

static void __udelay(int us)
{
    volatile int i;
        for (i = 0; i < us; i++) {
                (__raw_readl(CM_IDLEST_DPLL_MPU) != 0x1) ? putc_ll('m') : (void)0;
                (__raw_readl(CM_IDLEST_DPLL_CORE) != 0x1) ? putc_ll('c') : (void)0;
                (__raw_readl(CM_IDLEST_DPLL_PER) != 0x1) ? putc_ll('p') : (void)0;
                (__raw_readl(CM_IDLEST_DPLL_DDR) != 0x1) ? putc_ll('d') : (void)0;
        }
}

but none was triggered. Additionaly I tried this instead of the above
before entering the delay loop in beaglebone_sram_init(void):

        while(__raw_readl(CM_IDLEST_DPLL_DDR) != 0x0);
        //while(__raw_readl(CM_IDLEST_DPLL_CORE) != 0x0);
        //while(__raw_readl(CM_IDLEST_DPLL_PER) != 0x0);
        //while(__raw_readl(CM_IDLEST_DPLL_MPU) != 0x0);
        __udelay(3000);

When I suspect the bit being stable I expect to be being trapped so I
booted with a version without this, replaced it with the trap and
rebooted, I did this 4 times for each DDR, CORE, PER and MPU.
If the bit toggles back to zero I would exit the while, delay and boot
normal. So if trapped == no bit toggle. 

Either the putc_ll inserted into the loop did not appear nor the while
trap was left in any case so I suspect this bit is stable at 0x1 for
each type of PLL.


Kind Regards
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



