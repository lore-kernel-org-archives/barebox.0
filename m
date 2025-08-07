Delivery-date: Thu, 07 Aug 2025 08:18:08 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujtx2-007tkC-02
	for lore@lore.pengutronix.de;
	Thu, 07 Aug 2025 08:18:08 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujtx1-0002M2-G9
	for lore@pengutronix.de; Thu, 07 Aug 2025 08:18:07 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=nRCBJ56B5lYbcv7GqaHP1ngKnRo/0SaLO8rtV4iR0vY=; b=02zWEhhOP7A/o3inftE2MyTnjY
	W9IACcj0/d3u5Xqfg1xL00bF124OWG2jd9g9W3cIHxqFkakYcnQel9OpZPelTcZdBWTmHWXID0TEV
	dEOnWvcb2yLweWZSU0bB3OnGAclKtn5mwRFceW/gx2HeJH23ChVf07yVnv7eR22zYXwSTyh/14Tex
	ncVH0dLHNYTRInuIv6S8ZUfyK22L8GWzAZu9X3fBnur43cCVFYs/5KHOR6vzMV6CviC4ROuEeIc8E
	kwFNS2cS3Q/I4uXfkovFjJvQbrOKy6+KPKyHAW+UHFJLOeMl1pkYy1pXHp3iVgETOFhWwl1sX97hO
	79E2zChQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujtwQ-0000000HMM6-1ujZ;
	Thu, 07 Aug 2025 06:17:30 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujtqw-0000000HM3i-2q7x
	for barebox@lists.infradead.org;
	Thu, 07 Aug 2025 06:11:51 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1ujtqv-0001tN-Do; Thu, 07 Aug 2025 08:11:49 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1ujtqv-00CKYe-0m;
	Thu, 07 Aug 2025 08:11:49 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1ujtqv-006eKB-0b;
	Thu, 07 Aug 2025 08:11:49 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@barebox.org>
In-Reply-To: <20250806125229.2804284-1-a.fatoum@barebox.org>
References: <20250806125229.2804284-1-a.fatoum@barebox.org>
Message-Id: <175454710917.1584878.16553084165148747261.b4-ty@pengutronix.de>
Date: Thu, 07 Aug 2025 08:11:49 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250806_231150_717613_7E56B50B 
X-CRM114-Status: UNSURE (   6.12  )
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
Subject: Re: [PATCH 1/2] tee: optee: merge tee/optee.h and ARM asm/optee.h
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 06 Aug 2025 14:52:28 +0200, Ahmad Fatoum wrote:
> OP-TEE is also available for RISC-V, so let's replace the asm/optee.h
> header with a generic tee/optee.h header.
> 
> 

Applied, thanks!

[1/2] tee: optee: merge tee/optee.h and ARM asm/optee.h
      https://git.pengutronix.de/cgit/barebox/commit/?id=1cbc9eb5c45e (link may not be stable)
[2/2] tee: optee: skip optee node fixup if method is NULL
      https://git.pengutronix.de/cgit/barebox/commit/?id=c24a984cd5db (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



