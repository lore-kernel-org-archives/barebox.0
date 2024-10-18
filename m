Delivery-date: Fri, 18 Oct 2024 10:59:38 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t1ipe-005p4P-0e
	for lore@lore.pengutronix.de;
	Fri, 18 Oct 2024 10:59:38 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t1ipd-0002V7-MO
	for lore@pengutronix.de; Fri, 18 Oct 2024 10:59:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=OTJ0M6q5X5W4ukq/+0OQ0FZTXoeQUbPDMOD/Qlc/1S4=; b=Zma8rIdykoqU9sKskGKXaAs4Zh
	bAm6ydp8atfrR60NOb0M3tgo0R5jEBp5g63NLO4PeD7wqNrHSeNWwb1SLfEeJaH4WjQN/qUlQtnWI
	DFLjL6mOxXCRXg4QfxoFvEQcYYJgS8p5cfP/TrQ2V22Hnusk0eCh8Rdlps4TnDsRa6U+1Qiz0IY6V
	Z+bMs463yGj23gfK6z6aL2AV5Xa6oWbbD8NB8mwLQRKXtRnomJ05rIxNUwmz56XDQBDzDda+NA75R
	a/rjDpIthFM79MmNJ+kF2cuveBZWnj9fmPMDAZCkzUvKQyJo86+Xy97mQjdznq5qbeukMaixwMJO2
	cJCyHCPQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t1ip8-000000005Eq-366i;
	Fri, 18 Oct 2024 08:59:06 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t1iic-000000003U9-3NEh
	for barebox@lists.infradead.org;
	Fri, 18 Oct 2024 08:52:25 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t1iia-0001gS-SX; Fri, 18 Oct 2024 10:52:20 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t1iia-000BLP-2G;
	Fri, 18 Oct 2024 10:52:20 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t1iia-00CHmf-26;
	Fri, 18 Oct 2024 10:52:20 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20241016085608.3962813-1-a.fatoum@pengutronix.de>
References: <20241016085608.3962813-1-a.fatoum@pengutronix.de>
Message-Id: <172924154064.2928124.12965878557686843188.b4-ty@pengutronix.de>
Date: Fri, 18 Oct 2024 10:52:20 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241018_015223_204740_A9FE5855 
X-CRM114-Status: UNSURE (   7.87  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] string: add strlcat support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 16 Oct 2024 10:56:07 +0200, Ahmad Fatoum wrote:
> We have a lot of kernel string functions already for use by common,
> driver and board code, but we are lacking strlcat.
> 
> Add it to simplify porting code using it.
> 
> 

Applied, thanks!

[1/2] string: add strlcat support
      https://git.pengutronix.de/cgit/barebox/commit/?id=7cb3478fc8a2 (link may not be stable)
[2/2] string: support overriding strchr/strrchr/strstr macros
      https://git.pengutronix.de/cgit/barebox/commit/?id=98154a75c83a (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



