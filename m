Delivery-date: Wed, 18 Mar 2026 08:35:10 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w2lQs-0026B0-15
	for lore@lore.pengutronix.de;
	Wed, 18 Mar 2026 08:35:10 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w2lQr-0003pL-Na
	for lore@pengutronix.de; Wed, 18 Mar 2026 08:35:10 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=p3GDzEb5N+ADwFLbrtMz2zw1tgFpsau1dXTWtAIPv2w=; b=QXabrrYuxqZ7XAC2SnUslOf3lp
	ZPMrz2HSFnW2bT8EAnIJoE7nFqzvabJc+b8hGH0WONjWTVxVK7k4NJi8rOUe5VA0ZeqjkI250yaPS
	Wcbkj8HmqnKIzW23GrrnxXL/w34n3S0X571kJ4FTW2s7tnLTiCiuFHvN1aQI20kgINqTdyAyhWP8K
	Y+qsFxlbJ6kBpq9gTFL5fkVd3M3Ju/hbQ/SdS1wYxXhwwKGjqWFJ1y0GZGYOenqd9HyZrbkC5zzFi
	4i0yc3rMkLVNLBFdrryZ2AnQIrPksoZ5Tv5bG+lCfVm/aJ0XXv9dTKt3vkuVXKTWxoqaVMHmtoRVz
	SCBTQubQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2lQD-00000007vqv-4ABF;
	Wed, 18 Mar 2026 07:34:29 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2lQA-00000007vqC-49fe
	for barebox@lists.infradead.org;
	Wed, 18 Mar 2026 07:34:28 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w2lQ7-0003iM-FL; Wed, 18 Mar 2026 08:34:23 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w2lQ7-000s4r-0s;
	Wed, 18 Mar 2026 08:34:23 +0100
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w2lQ7-000000060I8-0sf9;
	Wed, 18 Mar 2026 08:34:23 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Jonas Rebmann <jre@pengutronix.de>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, 
 Marco Felsch <m.felsch@pengutronix.de>
In-Reply-To: <20260317-keytoc-multi-env-v4-0-38ab473f8034@pengutronix.de>
References: <20260317-keytoc-multi-env-v4-0-38ab473f8034@pengutronix.de>
Message-Id: <177381926320.1430991.10456820598440017614.b4-ty@pengutronix.de>
Date: Wed, 18 Mar 2026 08:34:23 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260318_003427_057406_E9980A87 
X-CRM114-Status: UNSURE (   9.98  )
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
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v4 0/8] Allow multiple keyspecs in one environment
 variable
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 17 Mar 2026 16:19:44 +0100, Jonas Rebmann wrote:
> This contains the actual change to keytoc as well a migration Note.
> 
> Allowing any number of public keys to be provided via a single
> environment variable eases integration in more complex setups where
> multiple public keys per keyring are managed externally.
> 
> During testing, it was found that handling of fit-hint env variables was
> broken since 2025.12. Since this is a legacy feature this series
> includes a patch that fixes the bug in the handling of fit-hint env
> variables as well as a patch that removes the feature.
> 
> [...]

Applied, thanks!

[1/8] scripts: include: Add string_util.h for strsep_unescaped
      https://git.pengutronix.de/cgit/barebox/commit/?id=7f971d0c543b (link may not be stable)
[2/8] crypto: keytoc: Improve readability
      https://git.pengutronix.de/cgit/barebox/commit/?id=6c863153dcc6 (link may not be stable)
[3/8] crypto: keytoc: Move special handling of legacy pkcs11 format to parse_keyspec
      https://git.pengutronix.de/cgit/barebox/commit/?id=4dbe43c9c0e5 (link may not be stable)
[4/8] crypto: keytoc: Parse all keyspecs before writing to stdout
      https://git.pengutronix.de/cgit/barebox/commit/?id=f63827c7478c (link may not be stable)
[5/8] crypto: keytoc: Split env-provided full keyspec on spaces
      https://git.pengutronix.de/cgit/barebox/commit/?id=bcf316ce1495 (link may not be stable)
[6/8] Documentation: migration-guides: Document change in keyspec env vars
      https://git.pengutronix.de/cgit/barebox/commit/?id=594abefb8251 (link may not be stable)
[7/8] crypto: keytoc: Allow fields to start with underscore
      https://git.pengutronix.de/cgit/barebox/commit/?id=e6e36288c9f2 (link may not be stable)
[8/8] crypto: keytoc: Deprecate fit-hint from env variable
      https://git.pengutronix.de/cgit/barebox/commit/?id=5207773f43a6 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



