Delivery-date: Wed, 30 Apr 2025 11:06:26 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uA3Oc-000lsV-0m
	for lore@lore.pengutronix.de;
	Wed, 30 Apr 2025 11:06:26 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uA3Ob-00056y-GW
	for lore@pengutronix.de; Wed, 30 Apr 2025 11:06:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=PUd7vtr2v8b2/KFW0m1ghqQOcJrr/XCq7OkaFkcIc3g=; b=W0JbALphwRXKv93SGrhfIWSkAY
	5QS9oIPxOixrMd8U+zAlcPq68ZxzNIyDP3drfMR9yC8+nEXzzjcRMxMUjG1DDDgyg3KTsDswyZdk0
	W+zapPKAMv1bNRIjidHMy/s2Vc7bi4ds7/6aHmCh1rySwyJVWfCAoStni2VIPZQYPZTHxgu4+NSXw
	nNIG4JnbDciGgIjYZRhwhYzoRDIUUDzbHWCjJGEGRBcLniDHjuVac4fhlVdP//ipiCPM0g3CavNXY
	fs1W6QkDEyIkQlxvw4cIcru0pPKDWR2FGskEjQaalP7RInjxvKJg1j3zXjT10WU2p43nQ6dNzxM76
	oWhVXXHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uA3O8-0000000CIA3-4Axe;
	Wed, 30 Apr 2025 09:05:56 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uA3O6-0000000CI8q-0NJv
	for barebox@lists.infradead.org;
	Wed, 30 Apr 2025 09:05:55 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uA3O4-0004pZ-Tu; Wed, 30 Apr 2025 11:05:52 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uA3O4-000OqO-2N;
	Wed, 30 Apr 2025 11:05:52 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uA3O4-00E25s-2A;
	Wed, 30 Apr 2025 11:05:52 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, 
 Alexander Shiyan <eagle.alexander923@gmail.com>
In-Reply-To: <20250429144422.142744-1-eagle.alexander923@gmail.com>
References: <20250429144422.142744-1-eagle.alexander923@gmail.com>
Message-Id: <174600395266.3344587.10563058909516451837.b4-ty@pengutronix.de>
Date: Wed, 30 Apr 2025 11:05:52 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250430_020554_127207_1261FA01 
X-CRM114-Status: UNSURE (   7.14  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] AT91: bootsource: Remove zero check of at91_bootsource
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 29 Apr 2025 17:44:22 +0300, Alexander Shiyan wrote:
> The patch removes the redundant zero check for at91_bootsource
> before calling bootsource_set_raw(), as at91_bootsource == 0
> is a valid scenario.
> 
> 

Applied, thanks!

[1/1] AT91: bootsource: Remove zero check of at91_bootsource
      https://git.pengutronix.de/cgit/barebox/commit/?id=6d53ee35fd13 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



