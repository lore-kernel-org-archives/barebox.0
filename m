Delivery-date: Mon, 06 Jan 2025 14:24:15 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tUn5b-00HVGJ-0h
	for lore@lore.pengutronix.de;
	Mon, 06 Jan 2025 14:24:15 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tUn5b-0001cv-7J
	for lore@pengutronix.de; Mon, 06 Jan 2025 14:24:15 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=zmHeZc1ZcsJCVMf/eviM5xW0O1hP4q7Urh1AsgKosd8=; b=mzvdBUlQMLfnnSd3HPpBRawBOO
	frRsMNRIqsmlVqw5mlj5TpSSUun3AmNsRBYLhS9wgve5KUX53bePiRfSAZMvxvfdCFZ51m0DG/Aq5
	yJttD2tyM5Ut+B3k+DM/LD/Y5Lnd9BoQDBAiyJMPoHw2Bk+RctW0tJ4Qcc9fGaFiOStAWI1db6WE6
	ka2708ZoshW8v1rJf7e7hUjGbwyjfQaPOy1m39dxlzoJxQlW9c/RgNM7cMp3S0mHY8m8mG7szrLq3
	PruqNZAaTCBuPvFeZB7qRm/arv9kLeym3JfnBgTy2kHVQqKXNkyYxA+kvPIMmFRkTv1KznbqcfaEX
	RnMkBH1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tUn54-00000001O4s-414a;
	Mon, 06 Jan 2025 13:23:42 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tUn2h-00000001Ncw-1jjF
	for barebox@lists.infradead.org;
	Mon, 06 Jan 2025 13:21:16 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tUn2Y-0000zQ-5q; Mon, 06 Jan 2025 14:21:06 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tUn2X-007Avs-0f;
	Mon, 06 Jan 2025 14:21:05 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tUn2X-00At33-2v;
	Mon, 06 Jan 2025 14:21:05 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250106103741.1022357-1-a.fatoum@pengutronix.de>
References: <to=<20250106091906.3435166-1-a.fatoum@pengutronix.de>
 <20250106103741.1022357-1-a.fatoum@pengutronix.de>
Message-Id: <173616966590.2594567.14226942696443810757.b4-ty@pengutronix.de>
Date: Mon, 06 Jan 2025 14:21:05 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250106_052115_454648_686E545C 
X-CRM114-Status: UNSURE (   5.24  )
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
Subject: Re: (subset) [PATCH] fixup! include: rename printk.h to printf.h
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 06 Jan 2025 11:37:41 +0100, Ahmad Fatoum wrote:
> Missing file...
> 
> 

Applied, thanks!

[1/1] fixup! include: rename printk.h to printf.h
      https://git.pengutronix.de/cgit/barebox/commit/?id=0109f7143506 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



