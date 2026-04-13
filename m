Delivery-date: Mon, 13 Apr 2026 09:32:17 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCBmL-00Bder-09
	for lore@lore.pengutronix.de;
	Mon, 13 Apr 2026 09:32:17 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCBmG-0005Rs-HM
	for lore@pengutronix.de; Mon, 13 Apr 2026 09:32:16 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Rqv5FVTqxMjyncIwCV/YiMQcc5qI9Wp8iAu6OxPBj28=; b=NHGwkt63LMFHvtdvOs/V+md4Fg
	gFTmOtFp8M7I3eZzje3L0mNC6aeQ2vKS6bPCAvV4N7AQtjP4pXNRAFqtDX/xzWn0PQDWiLEkVbMcV
	8GfaYgRlsBjoCg5SSLoBG3+TH92BVGKa670e0UEt7siwls8L9czDMoOCbNhhhMbC16C3CgNDKCh96
	uieNQYcYd2ozz6rM2JmrGTfp535dwBI59OdbEXR/oC5xbB3gFUOK81hmclxvNI6yp2OBuqmOHAVEn
	aycmQ6ErUO6ixhypaL9ixSdsRdqcxSd4Tu98+y71EPDboXWcLNgl7qspnDY1eMEsKC1JLkxlxUqe2
	TypC/tNA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCBlm-0000000F9ve-2YWq;
	Mon, 13 Apr 2026 07:31:42 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCBll-0000000F9vB-2f8U
	for barebox@bombadil.infradead.org;
	Mon, 13 Apr 2026 07:31:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=Rqv5FVTqxMjyncIwCV/YiMQcc5qI9Wp8iAu6OxPBj28=; b=MQHxE/A6pK6Y06yl4u5T7sfCfd
	SdJqyaXa8n0s9hTn9TlQ+fpzCf7HNZpp99jqppCMSnbyeKiee5CWu3d0yGvhmcIiKFi5h9Jpofsax
	AP2q0vxfgfGEjj3lMHqJC8eJDgHSLUmKiZeSLh9EULgVSaYCCvynkzwI7EhFPxAtLkAXUlWIeC5Pq
	dGkxCqI2BoFkBxC+EY+XWAP1mruvcVT5NtLwPHGCacwCBhJe/G3FGsCmlwCehKWyrSEcX6VmP9JSJ
	+kZfFAjbNy3gAkunQOOhVHZmOvul40g62zHUwO9rtiKUBbpJFyrJ3yYkcfNK1J4ZVlXK2gyd4SSk2
	gHCOTwvg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCBli-0000000GHf2-0kg7
	for barebox@lists.infradead.org;
	Mon, 13 Apr 2026 07:31:40 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wCBlh-0005Kz-Qv; Mon, 13 Apr 2026 09:31:37 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wCBlh-0058DB-25;
	Mon, 13 Apr 2026 09:31:37 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wCBlh-0000000EgDi-2RZX;
	Mon, 13 Apr 2026 09:31:37 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
Cc: Steffen Trumtrar <str@pengutronix.de>
In-Reply-To: <20260402140129.1108000-1-s.hauer@pengutronix.de>
References: <20260402140129.1108000-1-s.hauer@pengutronix.de>
Message-Id: <177606549757.3498877.11316489075811039808.b4-ty@pengutronix.de>
Date: Mon, 13 Apr 2026 09:31:37 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260413_083138_482488_A0E2E3AE 
X-CRM114-Status: UNSURE (   7.14  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: ARMv5: make PTE_SMALL_AP_UNO_SRO work
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 02 Apr 2026 16:01:29 +0200, Sascha Hauer wrote:
> On ARMv4/5 we have the SCTLR.S and SCTLR.R bits. We set the former which
> is deprecated and has implementation defined behaviour on ARMv5. We
> clear the latter which has the effect that AP=0b00 as used in PTE_SMALL_AP_UNO_SRO
> means "no access".
> 
> Clear SCTLR.S and set SCTLR.R instead. With this AP=0b00 maps to
> read-only access as intended.
> 
> [...]

Applied, thanks!

[1/1] ARM: ARMv5: make PTE_SMALL_AP_UNO_SRO work
      https://git.pengutronix.de/cgit/barebox/commit/?id=15ccb9d41534 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



