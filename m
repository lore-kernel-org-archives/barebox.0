Delivery-date: Tue, 16 Apr 2024 12:04:01 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rwffV-003BtW-1h
	for lore@lore.pengutronix.de;
	Tue, 16 Apr 2024 12:04:01 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rwffQ-00006S-Vv
	for lore@pengutronix.de; Tue, 16 Apr 2024 12:04:01 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Fyc97l80WO/eTUVBs1A6MZNc2bMsRrvdxZs53qP5+Xk=; b=hb8o3zkpIyL8Oe0OSmBSGzw1NF
	YtoLHt4mLZqpB/SJN+RFKuIft94nKl+A//cFAkSoAfclm8OMihjW0EH+ZuzLw0ECy+xYC7dXcSigw
	7X4qKrY7YXuDis2oYLhdV+qXJuhx/W8E/l+O5FArqOBbGkr+tGMb2fWeU1SqtXypRR1Ah5bVRHHgT
	b25CrRKlhgxdu3QOi8fqGpeGEU8hHU7MIP3D/Hr+xYKX8S4GZewaT4t+6oDiLdEKN5qRglBijE4aD
	jabJ+mwC0V499UUM6e74BjwqYVXG6woYIPKoDro4YkLMDWCVZnWQvMsqpR5u6l0TY4qMd3AH2vwDA
	EYJDI/Mg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwfel-0000000BhXQ-1T0H;
	Tue, 16 Apr 2024 10:03:15 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwfee-0000000BhWQ-1vJW
	for barebox@lists.infradead.org;
	Tue, 16 Apr 2024 10:03:13 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rwfec-0007Np-U2; Tue, 16 Apr 2024 12:03:06 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rwfec-00CaMM-HJ; Tue, 16 Apr 2024 12:03:06 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rwfec-008cTR-1Y;
	Tue, 16 Apr 2024 12:03:06 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240415053630.371119-1-a.fatoum@pengutronix.de>
References: <20240415053630.371119-1-a.fatoum@pengutronix.de>
Message-Id: <171326178648.2054444.3350278718246644942.b4-ty@pengutronix.de>
Date: Tue, 16 Apr 2024 12:03:06 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240416_030308_629887_4AC2118E 
X-CRM114-Status: UNSURE (   5.82  )
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
X-Spam-Status: No, score=-6.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] common: factor out debugging options into separate
 files
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 15 Apr 2024 07:36:30 +0200, Ahmad Fatoum wrote:
> We have a lot of debugging options, especially for DEBUG_LL, which make
> common/Kconfig quite a bit crowded. Releive some pressure there by
> factoring the debugging options and DEBUG_LL out into separate files.
> 
> 

Applied, thanks!

[1/1] common: factor out debugging options into separate files
      https://git.pengutronix.de/cgit/barebox/commit/?id=b3d50a2b40de (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



