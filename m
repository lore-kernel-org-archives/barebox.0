Delivery-date: Tue, 05 Aug 2025 09:45:57 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujCMv-007Dl2-0f
	for lore@lore.pengutronix.de;
	Tue, 05 Aug 2025 09:45:57 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujCMu-00073d-Mz
	for lore@pengutronix.de; Tue, 05 Aug 2025 09:45:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Xc0+/m6k7htShKHdrTJJ54kt461B2ChesOkU2FQCr0o=; b=X7oB4bNVFDy41Mdde+l9FAHF9r
	BiCEOvtmtmsc6ujTiYcxAHfP/Dg90aW/SMsHSDZtEtgKniOomarjwVPJsgDCDYurGiDsb0EVDqibN
	wfUy5Urd0fx0PeedN0+10ccPA/C+TX25eujAB59Dq/VeUTwBrfGVtIuxy0igJvcz54fsmoJbqcDoW
	UYGKjBT2QWzVgBD2ecFED8P4Sg+qgrtHQkfjdllelIfQC6+TpORwL+BCWoMQxF6xP+oO5UhDgsxN1
	+XlEbRjflcTDCM3IDczPwp1ul2007uewJ1khW486JpNbIMJI5VP9YWBu8OzzhBzRqQzsdb9nxz++o
	IDlyWDKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujCMW-0000000C3bB-47jX;
	Tue, 05 Aug 2025 07:45:33 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujCMU-0000000C3a9-09tK
	for barebox@lists.infradead.org;
	Tue, 05 Aug 2025 07:45:31 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1ujCMS-0006yJ-Ng; Tue, 05 Aug 2025 09:45:28 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1ujCMS-00C0Lg-1S;
	Tue, 05 Aug 2025 09:45:28 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1ujCMS-00EdDg-1G;
	Tue, 05 Aug 2025 09:45:28 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: =?utf-8?q?Uwe_Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>, 
 Andrei Lalaev <andrey.lalaev@gmail.com>
In-Reply-To: <20250722140534.3349443-1-a.fatoum@pengutronix.de>
References: <20250722140534.3349443-1-a.fatoum@pengutronix.de>
Message-Id: <175437992838.3487339.6501651936142178260.b4-ty@pengutronix.de>
Date: Tue, 05 Aug 2025 09:45:28 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250805_004530_081843_5C9C96F6 
X-CRM114-Status: UNSURE (   5.74  )
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
Subject: Re: [PATCH master] fastboot: populate is-logical:$partition
 variable
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 22 Jul 2025 16:05:34 +0200, Ahmad Fatoum wrote:
> Uwe reports on IRC that fastboot tries to read some default variables
> that barebox doesn't define, which triggers host-side error output:
> 
>   ERROR: fastboot: no such variable: is-logical:kernel
> 
> Flashing didn't seem impacted though.
> 
> [...]

Applied, thanks!

[1/1] fastboot: populate is-logical:$partition variable
      https://git.pengutronix.de/cgit/barebox/commit/?id=9df63cbfdeec (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



