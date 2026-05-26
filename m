Delivery-date: Tue, 26 May 2026 09:22:33 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wRm7V-003vT5-2u
	for lore@lore.pengutronix.de;
	Tue, 26 May 2026 09:22:33 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wRm7V-0007Un-Bq
	for lore@pengutronix.de; Tue, 26 May 2026 09:22:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=cQwjLZqTuc3N0c4ShzMzENFpj3XJyGHiqc6/fATbYVs=; b=tY6TK7VRsuajKwzxY1wQqgtzvo
	CDHv6rB3ji3IIiyThj9fd/OxL6zqt/zjG0IO/tFXVu+N+YvEZeZRPHlm6k9iBMadTVelOEi6dOXsR
	AG/OsJoQKABDhT+TjUvmF45B62zgSV/+AhcsTayYo7rpoDiBRA7FLdPnpiD1xhQPRFi9uW3Qs2qjO
	IEnUbkcDy07W4BdJAUdd2oV25BJjceKHLEl0wELh5mILBnlsQHMIEmttlMwy5NYEEyxhwJ5XEOQVa
	DFL/FZx4HuytxiMFrc4lsa8eNSDXqyvV39WJwArRy6Ls3x6T8DfCWpavblLDLHfxU63IbZ6hXuyOg
	VOMGqW0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wRlkB-00000001DNH-0X6k;
	Tue, 26 May 2026 06:58:27 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wRlk7-00000001DMe-3r8I
	for barebox@lists.infradead.org;
	Tue, 26 May 2026 06:58:25 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wRlk6-00056R-EV; Tue, 26 May 2026 08:58:22 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wRlk5-001sCh-2e;
	Tue, 26 May 2026 08:58:22 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wRlk6-0000000GajL-1OMQ;
	Tue, 26 May 2026 08:58:22 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20260521080608.3204583-1-s.hauer@pengutronix.de>
References: <20260521080608.3204583-1-s.hauer@pengutronix.de>
Message-Id: <177977870232.3954357.6050775693606571984.b4-ty@pengutronix.de>
Date: Tue, 26 May 2026 08:58:22 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260525_235823_963381_F91C2436 
X-CRM114-Status: UNSURE (   6.29  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: ARM64: linker: Do not put first function at
 __image_start
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 21 May 2026 10:06:08 +0200, Sascha Hauer wrote:
> The very first function in the barebox binary starts at __image_start
> aka _stext, so resolving its name with %pS results in "__image_start"
> instead of the function name. This can be confusing, so add a small
> offset to the first function so that its name resolves properly.
> 
> 

Applied, thanks!

[1/1] ARM: ARM64: linker: Do not put first function at __image_start
      https://git.pengutronix.de/cgit/barebox/commit/?id=5cbebeeb58ab (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



