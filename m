Delivery-date: Fri, 08 Nov 2024 12:36:54 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t9NIL-006Iz1-1U
	for lore@lore.pengutronix.de;
	Fri, 08 Nov 2024 12:36:54 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t9NIM-00043W-42
	for lore@pengutronix.de; Fri, 08 Nov 2024 12:36:54 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Rr13IOqQne9wrUu+RG0Knxx18QNgsw/TRpXiQd2mHac=; b=cs6EsRJn8KNO7wmoOD7sazeahI
	RQzDdayn3eKPHtGjTqMPw3zGQ7H114vmc4qkuq8sL64y3g2rytcJ1BaHFdajaXEzo+5QLwGVCh34V
	O9QGPla4t6wRM7TMC6SIBqbtVtgCC9jlThCcZyCWzpn0ylV2F0X80SepD4Acp3+GLE0/+4Uo0ERnz
	8L13k5F4TohbUvw87gSSkJbIrZa7pC1t8U4QKFLAtwaNwC1us6drmkioCAZtKLAsYwLboqw+v0roY
	+O/96m7XELPWWLaEX+miREvcfkzoBQO+ufTdMyGC8GsDyN8bnr55cfGRSOLCHiQRArmOBZwM8pXZN
	NWZrCodw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t9NHr-0000000AMbd-03qa;
	Fri, 08 Nov 2024 11:36:23 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t9Mgj-0000000AEhj-2f2M
	for barebox@bombadil.infradead.org;
	Fri, 08 Nov 2024 10:58:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:From:Sender:
	Reply-To:Cc:Content-ID:Content-Description;
	bh=Rr13IOqQne9wrUu+RG0Knxx18QNgsw/TRpXiQd2mHac=; b=TWNkcg8i0jI5ZyRuC6e4uvCMYD
	fWCVXAjhlnt7JkZBaZZ0neKrYqQ/a5NUqPrhSAFpapc0fvohrBThiG6CMBkeMNQHpGV5Fup/fI+7y
	UI0E9MDyN8/Xi0r0MaAIaGQB95L/43qqX+LJkH99QZfk8afvJ5UeclbHcY91AMia4+Zi7iYEVB/10
	8hES92UBFofPqCSEcnm3mOOPjMIAa1GSh1nvi9hpyAbCofwSbD7+XRXgKBPFYnbl2GoZ29P0vPBXw
	SKFfrvfSmj9RAwL2CAZvZJDKRSb4fxjuPx+TP6fgisI4+t9tE9ka8IFhDnPJxMOFcE3WTLmWsrpcn
	dODA42qQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t9Mgb-0000000CI8L-1Zhy
	for barebox@lists.infradead.org;
	Fri, 08 Nov 2024 10:57:57 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t9Mgb-0000zE-0F; Fri, 08 Nov 2024 11:57:53 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t9Mga-002bf7-2e;
	Fri, 08 Nov 2024 11:57:52 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t9Mga-009mVj-2T;
	Fri, 08 Nov 2024 11:57:52 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20241104130423.587874-1-s.hauer@pengutronix.de>
References: <20241104130423.587874-1-s.hauer@pengutronix.de>
Message-Id: <173106347276.2331406.16759270880113768331.b4-ty@pengutronix.de>
Date: Fri, 08 Nov 2024 11:57:52 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241108_105755_186913_493B9331 
X-CRM114-Status: UNSURE (   9.49  )
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
Subject: Re: [PATCH] ARM: i.MX: move handoff-data out of OCRAM
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 04 Nov 2024 14:04:23 +0100, Sascha Hauer wrote:
> During 1st stage boot barebox is running in OCRAM. This OCRAM is
> occupied by the TF-A once started, so move the handoff-data to SDRAM
> before starting the TF-A.
> 
> Currently no board is using handoff-data from its early board code, so
> this is not yet necessary, but done now so that board code is able to
> use handoff-data in the future.
> 
> [...]

Applied, thanks!

[1/1] ARM: i.MX: move handoff-data out of OCRAM
      https://git.pengutronix.de/cgit/barebox/commit/?id=0e945328e46b (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



