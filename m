Delivery-date: Tue, 16 Apr 2024 12:03:11 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rwfeh-003BrK-1p
	for lore@lore.pengutronix.de;
	Tue, 16 Apr 2024 12:03:11 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rwfed-0007Nd-EG
	for lore@pengutronix.de; Tue, 16 Apr 2024 12:03:11 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ZcXtMV3E5ZxNNTx9ND1qk8qHQYWnbwWDyugswc7+U18=; b=sreeWseSB9wn1IsXEnsQLj6W2v
	RG3nnee9SS0KxGxkhcjJ3eQck1i54wcqx8odgZYiFPYDFfgtygIR0Mfc3DrvgSrEKwZH9BeWt0VKE
	difjEGrx25kL8RVUzm3pXqnXuYziu5bTVLx3qXsYPXncDCPaway7ZmQt+558EmvdlK/VfKBPjnnCY
	lun1GUd0wQLpt8KOhdl913UsxGpOkNqnGa5dMfuVekRxxJf5obAOy2pH35jOuYgBNI0uQUSaUH2AQ
	rT1aAN/MgYErXNg0APomnebyo1tMPyEetOtLAiH0CoOPixGLTVLPiDOeBK43M44ZY/9eYEEPtRAQa
	IIiSwGUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwfdu-0000000BhMp-3DZN;
	Tue, 16 Apr 2024 10:02:22 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwfdn-0000000BhKa-29Mc
	for barebox@lists.infradead.org;
	Tue, 16 Apr 2024 10:02:20 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rwfdm-0005zY-6j; Tue, 16 Apr 2024 12:02:14 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rwfdl-00CaM1-Qb; Tue, 16 Apr 2024 12:02:13 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rwfdl-008XwG-2S;
	Tue, 16 Apr 2024 12:02:13 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240415072135.1076571-1-a.fatoum@pengutronix.de>
References: <20240415072135.1076571-1-a.fatoum@pengutronix.de>
Message-Id: <171326173375.2036999.12396186796450180565.b4-ty@pengutronix.de>
Date: Tue, 16 Apr 2024 12:02:13 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240416_030215_592681_5EA1FEBF 
X-CRM114-Status: UNSURE (   7.53  )
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
Subject: Re: [PATCH] pinctrl: rockchip: check for invalid pull settings
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 15 Apr 2024 09:21:35 +0200, Ahmad Fatoum wrote:
> Commit e877582e9875 ("pinctrl: rockchip: fix bias settings") reinstated
> the translation done to pull settings via the bank->pull_type array,
> like the original Linux driver does. What it didn't do is actually check
> that the translation succeeded. Add this check to make sure we don't
> somehow end up packing a negative value into the bitset we write into
> the hardware.
> 
> [...]

Applied, thanks!

[1/1] pinctrl: rockchip: check for invalid pull settings
      https://git.pengutronix.de/cgit/barebox/commit/?id=32e9e020ae44 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



