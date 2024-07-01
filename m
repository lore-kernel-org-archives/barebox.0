Delivery-date: Mon, 01 Jul 2024 11:34:50 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sODQw-000SW6-06
	for lore@lore.pengutronix.de;
	Mon, 01 Jul 2024 11:34:50 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sODQv-0002vX-Fe
	for lore@pengutronix.de; Mon, 01 Jul 2024 11:34:49 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=kydNCBrgnbI0ASBtTDRWh4fkaFIVeTM5viX5QDdWDTQ=; b=M0sjde+cvtqOmqGXo/c2jz8bGs
	5jC3EEBvSAwhDequcVk73Xk4OUkCRpxsSm27m4PwsImz/t9JK9zp/FBCHWfrnptJ01Sr//s8Ghfgt
	NJ6xjZDn0lvfNw+BIkpYCLQZT1R8SOkrAFp0WtgUq4qYu2SitrRGYE2W+ehmzVMvwnNDv15D4ELgj
	bSn1LILECPXr4OSOaBajRrGPH7zS1A2BpSs7wbPzvpHjUEIi56542x6vakfb48Ed9c4/9WrzFqYXd
	AzspE+XUHetRHPhdQw5fZVCLTy8RyM3X6fFrF8Q+UPhwwgypK4fOwXNeOlco2fZsyZLtI5l6xS08O
	p3dYg5Jw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sODQV-00000002Seq-0lf6;
	Mon, 01 Jul 2024 09:34:23 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sODQQ-00000002Sdv-43uY
	for barebox@lists.infradead.org;
	Mon, 01 Jul 2024 09:34:20 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sODQP-0002ox-H5; Mon, 01 Jul 2024 11:34:17 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sODQP-006L6E-4a; Mon, 01 Jul 2024 11:34:17 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sODQP-009iCV-0F;
	Mon, 01 Jul 2024 11:34:17 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240701073509.176191-1-a.fatoum@pengutronix.de>
References: <20240701073509.176191-1-a.fatoum@pengutronix.de>
Message-Id: <171982645707.2314789.10438292536647188639.b4-ty@pengutronix.de>
Date: Mon, 01 Jul 2024 11:34:17 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240701_023419_041936_0DE9BD0F 
X-CRM114-Status: GOOD (  10.34  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH master] bitops: change test_bit return type from int to
 bool
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 01 Jul 2024 09:35:09 +0200, Ahmad Fatoum wrote:
> test_bit currently returns some positive integer on success and don't
> enforce the return values to be either false or true.
> 
> This can lead to problems if the return value is not used for
> truthiness, but in arithmetic.
> 
> This seems to be the case only in KASAN code, where it's used to count
> errors. Change the return type to fix this.
> 
> [...]

Applied, thanks!

[1/1] bitops: change test_bit return type from int to bool
      https://git.pengutronix.de/cgit/barebox/commit/?id=4e47b8b03bce (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



