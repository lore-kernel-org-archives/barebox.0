Delivery-date: Mon, 18 May 2026 17:02:19 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wOzU3-001Ac9-2u
	for lore@lore.pengutronix.de;
	Mon, 18 May 2026 17:02:19 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wOzU3-0007zv-89
	for lore@pengutronix.de; Mon, 18 May 2026 17:02:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=fBqZWfYCfEOdJPHUKYL7RAVspYC+Agm33PJlPcx6Zr4=; b=DrZcO5EIDe/oUU8Gmt5EH62H0O
	qK65rsHFNZhZ7XE3pDwV/ZFhWXGhimRBmJ5Lithv0K+pobVqYb4WQSLg6Rpw9dauvuMz7SqWwaayU
	0dJNS+X2AqLw1G7CEq2lIn9vxsafubb/PZCU9TFXxOF0Uk9No/PBpOAXlF3sJvxV+MLi8+hv52X7h
	fdS4TQMUO0BW/LnQhhSrHYvCr/dcBmRnkqF+TkCiAbBR2WoXtnlpLehflMIyj6Ob7x1pV+h8QVqwt
	TtlQgJmRdFE+FcpLI17EUFEA3JAE4Ow7UDiUFyUwdeQ0572t/fUcnsQuxpo5qSJwdBdZm5kXJNc/b
	0AS2hzyA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOxya-0000000FoIi-38ac;
	Mon, 18 May 2026 13:25:44 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOxyY-0000000FoHu-0ezR
	for barebox@lists.infradead.org;
	Mon, 18 May 2026 13:25:43 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wOxyB-0004OZ-Ik; Mon, 18 May 2026 15:25:19 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wOxyA-000bRO-0f;
	Mon, 18 May 2026 15:25:18 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wOxyA-00000000ATr-2yJU;
	Mon, 18 May 2026 15:25:18 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>, 
 Jonas Rebmann <jre@pengutronix.de>
Cc: Lukas Wunner <lukas@wunner.de>, Ahmad Fatoum <a.fatoum@pengutronix.de>, 
 Stefan Berger <stefanb@linux.ibm.com>, 
 Venkat Rao Bagalkote <venkat88@linux.vnet.ibm.com>, 
 Herbert Xu <herbert@gondor.apana.org.au>, 
 Thorsten Blum <thorsten.blum@linux.dev>
In-Reply-To: <20260518-barebox-port-ecc-v1-0-25509bd37030@pengutronix.de>
References: <20260518-barebox-port-ecc-v1-0-25509bd37030@pengutronix.de>
Message-Id: <177911071870.40250.12691861088319980742.b4-ty@pengutronix.de>
Date: Mon, 18 May 2026 15:25:18 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260518_062542_199352_EBEEB97A 
X-CRM114-Status: UNSURE (   9.18  )
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
Subject: Re: [PATCH 0/4] crypto: Port ecc.c fixes from kernel
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 18 May 2026 09:56:12 +0200, Jonas Rebmann wrote:
> We've been working on processes for porting fixes from copied code in
> winter and introduced Origin-URL references [1] during those
> discussions.
> 
> Now thanks to Lukas we're reminded to put this to practice.
> 
> This series is a proposal on future standard practice of porting such
> patches: Update the Origin-URL in every ported patch, mention the origin
> project in the "cherry picked from" line. Handle like a backport for all
> other regards.
> 
> [...]

Applied, thanks!

[1/4] crypto: ecc: Add Origin-URL to document kernel revision
      https://git.pengutronix.de/cgit/barebox/commit/?id=cb711fca7828 (link may not be stable)
[2/4] crypto: ecc - Fix off-by-one missing to clear most significant digit
      https://git.pengutronix.de/cgit/barebox/commit/?id=08d9eaa925de (link may not be stable)
[3/4] crypto: ecdsa - Harden against integer overflows in DIV_ROUND_UP()
      https://git.pengutronix.de/cgit/barebox/commit/?id=c9f258b1e9c7 (link may not be stable)
[4/4] crypto: ecc - Streamline alloc_point and remove {alloc,free}_digits_space
      https://git.pengutronix.de/cgit/barebox/commit/?id=4f64ef254546 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



