Delivery-date: Tue, 06 May 2025 09:22:25 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uCCdF-002iq1-1S
	for lore@lore.pengutronix.de;
	Tue, 06 May 2025 09:22:25 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uCCdE-0003Ar-UB
	for lore@pengutronix.de; Tue, 06 May 2025 09:22:25 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=J0Jaeyks3gEwPrFpLzWHlWYUw76a9ndo+a7cjFfvOp0=; b=3F6HQhrA70poP19l8dFKXHEKmk
	Hd+C1zNMAIrxJAphtMD6W9eslDDxZDRn7JgjrrsnKZPb3NyIJXCqkT+2z1PBSxtY11ke6cfzwhoda
	H8fYx7gFUN470isqS4LLAkuMzLWWMil17WHrIuGmLsUTcLGJ0otZ7OVQDt0ldU4gMDcSK0wonsVoP
	yAMar9PX/RV0Eel61n3V2gURWTZZV4SkEG5JdItPrTP0kuGZKkK6Mbh13Hp3GgEAR2abwVuqLBsch
	QbIpjJrGDNvZ1cJhJjsHLGlujLp39RzITnTbJDWCe4Mh6LYgb+XZjU+CQ8YKJttrPkb/V71z1ZrgH
	Hw6lvZPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCCcm-0000000Au6b-0uB4;
	Tue, 06 May 2025 07:21:56 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCCck-0000000Au5O-0FY4
	for barebox@lists.infradead.org;
	Tue, 06 May 2025 07:21:55 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uCCci-00031K-R2; Tue, 06 May 2025 09:21:52 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uCCci-001MAz-26;
	Tue, 06 May 2025 09:21:52 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uCCci-00DNrQ-1t;
	Tue, 06 May 2025 09:21:52 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250506062117.3090793-1-a.fatoum@pengutronix.de>
References: <20250506062117.3090793-1-a.fatoum@pengutronix.de>
Message-Id: <174651611257.3189965.161395402999352673.b4-ty@pengutronix.de>
Date: Tue, 06 May 2025 09:21:52 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250506_002154_101408_4A5622E1 
X-CRM114-Status: UNSURE (   7.64  )
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
X-Spam-Status: No, score=-5.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] fb: generate mode name if missing
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 06 May 2025 08:21:17 +0200, Ahmad Fatoum wrote:
> If a mode name is not set, the device parameters will format the NULL
> mode name as <NULL>. Instead, let's just generate a name and use that.
> 
> If multiple modes have the same resolution and refresh rate, we will end
> up with duplicate names, but that's ok as this is just a fallback.
> Drivers can always assign proper names to their modes and most do.
> 
> [...]

Applied, thanks!

[1/1] fb: generate mode name if missing
      https://git.pengutronix.de/cgit/barebox/commit/?id=287ebad1d2be (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



