Delivery-date: Tue, 30 Jul 2024 10:12:12 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sYhxs-004Oww-1k
	for lore@lore.pengutronix.de;
	Tue, 30 Jul 2024 10:12:12 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sYhxr-0004GX-Vs
	for lore@pengutronix.de; Tue, 30 Jul 2024 10:12:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=u7dWfEN5njRF4g03Is2/OrlAKJUAc4x1DzKmQF2pUkI=; b=jZqFJaZGW+ZQtxNYdGNN1Rb1Pt
	6ZpF8z1wgu1LSxGNeTyhFnqVwlH1lcBM0rXRZm3ohjngCyc8WsjRop+fze+AHMf2IfT/VD0g6alE6
	NJL6/Adu6q/jeTq3VujJH6wJDlN/YsgBg9QBTNDTCVkVFzFW/Zwrxz1xrDvYEXjMVPyPAmNe8H0IW
	bBQV3UrNIMoWCwdcC+KoQztNhdYi7QDVFQ/JbwCrDGXGrt/XVlWllhnmWeEonRlQkk+nIE/7lSGYC
	htfd7si688adOV5onXXEGzOL3eyhbweCLWRNpyGrQRZvbtTWidYzzsqVGondSG1MZI0k9WerSyHMu
	Ex+lFzjQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYhxQ-0000000EBUo-1hW6;
	Tue, 30 Jul 2024 08:11:44 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYhxN-0000000EBUI-3j9u
	for barebox@lists.infradead.org;
	Tue, 30 Jul 2024 08:11:43 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sYhxM-0004DD-Ew; Tue, 30 Jul 2024 10:11:40 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sYhxL-003Emn-RG; Tue, 30 Jul 2024 10:11:39 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sYhxL-004ZdU-2V;
	Tue, 30 Jul 2024 10:11:39 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: =?utf-8?q?Sven_P=C3=BCschel?= <s.pueschel@pengutronix.de>, 
 Casey Reeves <contact@xogium.me>
In-Reply-To: <20240726112556.3548806-1-a.fatoum@pengutronix.de>
References: <20240726112556.3548806-1-a.fatoum@pengutronix.de>
Message-Id: <172232709977.1090104.13084779995454508208.b4-ty@pengutronix.de>
Date: Tue, 30 Jul 2024 10:11:39 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240730_011141_957813_CF1680CD 
X-CRM114-Status: UNSURE (   8.05  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] env: suggest global/nv command when calling setenv on
 non-existent parameter
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 26 Jul 2024 13:25:56 +0200, Ahmad Fatoum wrote:
> Unlike regular environment variables, device parameters have to be
> explicitly created before they are used:
> 
>   global.linux.bootargs.memsize="mem=3072M"
>   Cannot set parameter global.linux.bootargs.memsize: No such device
> 
> The common remedy is to remove the first dot to call the global command
> instead that will create the device parameter and then set it:
> 
> [...]

Applied, thanks!

[1/1] env: suggest global/nv command when calling setenv on non-existent parameter
      https://git.pengutronix.de/cgit/barebox/commit/?id=ffe1597ec5b6 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



