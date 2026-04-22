Delivery-date: Wed, 22 Apr 2026 10:04:51 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wFSZn-00F1Xh-03
	for lore@lore.pengutronix.de;
	Wed, 22 Apr 2026 10:04:51 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wFSZm-0004In-H0
	for lore@pengutronix.de; Wed, 22 Apr 2026 10:04:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=XQIb2bzDIoFZXCenp7tDLpIL2+Nfuq/HvdOynFrUkgQ=; b=BP48ikojeY7IZ7JIEFQCKAWkfg
	yt0OTBPQPXm4GXusncjmZtLwpIhP4Z+wccCYxKi4fOXmcUsU2TCoYg1QmSMjEgGQzMkU7Wy2V/Km1
	Ro8wccBa2Zhheeie7awL3AW3gbGW8rQXKl0FCmAroMO1PwQLBS++b5dJLsHzfCkmu7O840HLhG2qV
	K/An9Dro9Z/XDnJ/N0TjDI3hjVJ5sl4ZY9CcB2+7BRCGsaUR6jbNEY7rVnRjvVsx4sx5hkadDooOg
	FZ8QMMqHO3zRXR8qQFQpiMoYkEYeidrZzs5kdEcXCetyd9lhSchqhwAX97Q/8U+3mtkZF5RV62gAx
	VhWx3nKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wFSZR-00000009kmx-1dRN;
	Wed, 22 Apr 2026 08:04:29 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wFSZP-00000009kmH-0e1B
	for barebox@lists.infradead.org;
	Wed, 22 Apr 2026 08:04:28 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wFSZN-0004Ci-KS; Wed, 22 Apr 2026 10:04:25 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wFSZN-006dR6-1I;
	Wed, 22 Apr 2026 10:04:25 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wFSZN-0000000AMDt-1NYT;
	Wed, 22 Apr 2026 10:04:25 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
In-Reply-To: <20260420075708.4090183-1-s.hauer@pengutronix.de>
References: <20260420075708.4090183-1-s.hauer@pengutronix.de>
Message-Id: <177684506532.2468564.3023432630531705271.b4-ty@pengutronix.de>
Date: Wed, 22 Apr 2026 10:04:25 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260422_010427_195493_6739D297 
X-CRM114-Status: UNSURE (   5.77  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] fs: set linux.bootargs.rootopts only when existing
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 20 Apr 2026 09:57:08 +0200, Sascha Hauer wrote:
> Not all filesystems specify rootopts. Only create
> linux.bootargs.rootopts when it's non NULL. Otherwise dev_get_param() on
> this returns the literal string "<NULL>" which then shows up in the
> Linux bootargs.
> 
> 

Applied, thanks!

[1/1] fs: set linux.bootargs.rootopts only when existing
      https://git.pengutronix.de/cgit/barebox/commit/?id=019d102038a6 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



