Delivery-date: Tue, 29 Apr 2025 17:25:20 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u9mpk-000XC3-0n
	for lore@lore.pengutronix.de;
	Tue, 29 Apr 2025 17:25:20 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u9mpj-00038Y-I6
	for lore@pengutronix.de; Tue, 29 Apr 2025 17:25:20 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=8DGMdmN2ysoR3vmuNVxyOemWfRTOa4t22gfOZi3Ql+Q=; b=bHf7ePD2nJ+NTDhQWwe1mXmSEb
	wWFr3r/rroMaoFGo7ReO56uPZZNaKbWALF8pqRY2rpomFT+OGNuOYPymuNp6NDjx8KNpbPFVEHW+u
	h6jNPsRmNjOoH4RM7KSfMyx54vhrwvHD820q1I0iv2UAWrvhNcoHIZ9YKc0p2yRADJ799wt5Djbd/
	Z3g7ipzFniW2DG4PdzEDNffMtIP+mWqrDtbQKfR4uGvNDqnC1yGh8nTv0arqAis5AzwkIf2zfWTog
	iRD6Ifsty2UJyJKpQdd3IHDFDdLzZjTDKScT2FJRBeG2u+IkGWGC+EzGYWTfOtnAATP1ZSKnLU9Pa
	QUrlnuHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u9mpL-0000000A77I-3whR;
	Tue, 29 Apr 2025 15:24:55 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u9mUi-0000000A3Jo-3DDU
	for barebox@bombadil.infradead.org;
	Tue, 29 Apr 2025 15:03:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=8DGMdmN2ysoR3vmuNVxyOemWfRTOa4t22gfOZi3Ql+Q=; b=GArheo2s+JQ45B2182YGaAGlvE
	fEf9llf3Ciyax5kLL5TtrK7aWATczvjSqopadHfjEAOPWzbfSwYWr4tLbWv47eN7yR9vKrh541Yco
	I8ReMw4XGUp9ddisOENMmj3+yk0Iu1i6o4+/pmt9tifsg8gtQzK9xJ8gQ2tmIYf83wetnNZd7kHiI
	zoXC2c0ri01AS7c/z9D7MU6XxTgHpmakl1ONukLhSMtb88qo7uXQr4W1s0cLVUuNjytO/8Z8uWcei
	uzdUkrGD+8SrYR9Q9ciYGc4AhdSnbhhfY2GbYnRkeV1NqlwOk9+QgNGkIuuXVYJ9NXPaMWaWeK8ZC
	gsiNhigA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u9mUf-0000000DQNw-2pnL
	for barebox@lists.infradead.org;
	Tue, 29 Apr 2025 15:03:35 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1u9mUe-00063q-Ea; Tue, 29 Apr 2025 17:03:32 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1u9mUe-000HZR-0r;
	Tue, 29 Apr 2025 17:03:32 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1u9mUe-00Aut0-0W;
	Tue, 29 Apr 2025 17:03:32 +0200
Date: Tue, 29 Apr 2025 17:03:32 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <aBDqRH4UB3_jXjkX@pengutronix.de>
References: <20250424084833.2920664-1-a.fatoum@pengutronix.de>
 <174555956247.545067.10905121643082274040.b4-ty@pengutronix.de>
 <e6f4523c-6e63-42fe-be22-d15707d2267a@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <e6f4523c-6e63-42fe-be22-d15707d2267a@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250429_160333_790061_13061C7C 
X-CRM114-Status: GOOD (  18.92  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] clocksource: omit seeding of RNG in PBL
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Tue, Apr 29, 2025 at 11:53:07AM +0200, Ahmad Fatoum wrote:
> Hello Sascha,
> 
> On 4/25/25 07:39, Sascha Hauer wrote:
> > 
> > On Thu, 24 Apr 2025 10:48:33 +0200, Ahmad Fatoum wrote:
> >> We do not maintain a PRNG in the PBL, so we should omit the call to
> >> srand_xor in PBL, otherwise it expands to BUG() and breaks the newly
> >> introduced PBL clocksource support.
> >>
> >>
> > 
> > Applied, thanks!
> 
> While the patch is correct, I think it would be better to just drop the
> BUG() in the header instead of littering IN_PROPER around.
> 
> If the patch isn't pushed yet, can you drop it?
> I just sent out an alternative.

I dropped it.

Sascha


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


