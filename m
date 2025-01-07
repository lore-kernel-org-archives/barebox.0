Delivery-date: Tue, 07 Jan 2025 08:38:15 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tV4AI-000E6b-2C
	for lore@lore.pengutronix.de;
	Tue, 07 Jan 2025 08:38:15 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tV4AE-000637-Up
	for lore@pengutronix.de; Tue, 07 Jan 2025 08:38:15 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+Y7Yw0glDHSTDF9Qz/MN+GFZjBcsWzYd3Bod3/fTPBw=; b=K2nRlDUYCdh/niBPtODndm1pow
	Dkq1BDYg7Dh1cwV8w97bded3rKXiFet0X6wW5/mpnR+txqlLMfm0VcNPQpeBDP1xaDaHdk0OR6/nu
	SWM2cjsPGpuUHq85vSaiwlpPghYNuYcARIOmv21a9ID719RjQxiqsAlV0F27aBpJpXp5C8DRdw4zR
	2fl+r8SMMywNZk3WBeuoPJYH0+mxERXBNPHPRFyuceihAsFZ53S6oWrUaPmIRg2D3jDV98jGFhAHc
	sDVV7cX8vbm4xN2KbfvPYxCTPWAxfWUg1vKTE7bxjYZ8oqmxy7U1K1SCG6APHPpBx/p/LztdU9Gjp
	08jLVEZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tV49Y-00000003m0O-3jG8;
	Tue, 07 Jan 2025 07:37:28 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tV49S-00000003lzn-1xAS
	for barebox@lists.infradead.org;
	Tue, 07 Jan 2025 07:37:26 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1tV49P-0005tR-8u; Tue, 07 Jan 2025 08:37:19 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1tV49O-007InQ-0W;
	Tue, 07 Jan 2025 08:37:18 +0100
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1tV49O-009SU5-2h;
	Tue, 07 Jan 2025 08:37:18 +0100
Date: Tue, 7 Jan 2025 08:37:18 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Sebastian =?utf-8?B?R3Jvw58=?= <sebastian.gross@emlix.com>
Cc: barebox@lists.infradead.org, mainlining@emlix.com
Message-ID: <20250107073718.67626a7dq3afqjaz@pengutronix.de>
References: <92d4dd39-529d-4e4c-b231-76c3ba1790a7@emlix.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <92d4dd39-529d-4e4c-b231-76c3ba1790a7@emlix.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250106_233722_510012_5C411B2A 
X-CRM114-Status: GOOD (  20.12  )
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
Subject: Re: bootm: fit-image: hash node name too strict
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Sebastian,

On 25-01-07, Sebastian Groß wrote:
> Hello and a happy new year 2025 dear all,

thank you very much, you too :)

> I happened to have a fit-image which worked fine with u-boot and wanted to
> give it a try with barebox.
> Sadly I got yelled at for not having hashes for the kernel-1 `Image`
> provided in the fit-image.
> 
> Grepping the source code for the error message pointed to `fit_verify_hash`
> and `of_get_child_by_name` with `hash@1` or `hash-1`.
> Neither is required by u-boot as it looks only for `FIT_HASH_NODENAME` which
> is defined as `hash`.

According the spec [1] it should be named hash-<number>. Checking the
U-Boot doc folder it seems like 'hash' was used in the early days of FIT
images since there is only one file 'doc/usage/fit/howto.rst' which is
using the plain 'hash' node name.

[1] https://fitspec.osfw.foundation/#hash-nodes

> Since the image is build by uboot's mkimage I would expect the itb's to be
> compatible. Or am I missing something?
> 
> Changing the following line in the `its`, ie. its build script
> ```
> - hash { algo = "${FIT_HASH_ALG}"; };
> + hash@1 { algo = "${FIT_HASH_ALG}"; };
> ```
> made the fit-image work.

I can't find this line within the U-Boot src code. Can you provide a
link please?

> Perhaps another if-clause is required. Or some error message that states
> which property/string was searched for,
> since there were hashes in the image, but not where barebox expected them.

We could search for the legacy single 'hash' node name as well and print
a warning that this should be changed.

Regards,
  Marco

> 
> Regards
> 
> Sebastian Groß
> 
> --
> Sebastian Groß, B.Sc.
> 
> emlix GmbH
> Headquarters: Berliner Str. 12, 37073 Goettingen, Germany
> Phone +49 (0)551 30664-0, e-mail info@emlix.com
> District Court of Goettingen, Registry Number HR B 3160
> Managing Directors: Heike Jordan, Dr. Uwe Kracke
> VAT ID No. DE 205 198 055
> Office Berlin: Panoramastr. 1, 10178 Berlin, Germany
> Office Bonn: Bachstr. 6, 53115 Bonn, Germany
> http://www.emlix.com
> 
> emlix - your embedded Linux partner
> 
> 
> 


