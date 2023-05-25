Delivery-date: Thu, 25 May 2023 10:38:32 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q26UT-00DZ0C-J0
	for lore@lore.pengutronix.de; Thu, 25 May 2023 10:38:32 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q26UR-0005oQ-A3
	for lore@pengutronix.de; Thu, 25 May 2023 10:38:31 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=bHlxPwI+dAiJD1NDaFdwEDUYSrAly1+ouNAYzlL1JAA=; b=S0X2cBmPC3I6JMCHkRJxrWvXCD
	zyO32GSLI7lRgmY4mCSibFwCwyhVs78nMKlExj9ZY+wZko7WqyXrxVOUP7S0HIHO7jXJbZT0GeftM
	iDh5X7lmwCDWsHSTXdfWCCCyFzkN9JsJ9DO8AjsIYAMaVkVYv0RWdgE+JjXlJ/6q8Ru242wV4f2K2
	bMyrekKn6hC279Uu/m53ghppzhLA7ebZ28S0FV09eZXcB+Q98aNbmu7Ox6nqs1UW+1mOrZki5YJto
	hwyKgwa5gm0E94X6XYlzvMZHNdx5eaJg0w2RoRN2Jg1NI7/QPN7+t1WdGDRAihsgIM1ARa2sn35J3
	C36FRoFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q26TN-00G1C3-0V;
	Thu, 25 May 2023 08:37:25 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q26TJ-00G19b-2K
	for barebox@lists.infradead.org;
	Thu, 25 May 2023 08:37:23 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q26TG-0005gr-Qu; Thu, 25 May 2023 10:37:18 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q26TG-0003mG-Jy; Thu, 25 May 2023 10:37:18 +0200
Date: Thu, 25 May 2023 10:37:18 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230525083718.GZ15436@pengutronix.de>
References: <20230522053044.1039572-1-a.fatoum@pengutronix.de>
 <20230522053044.1039572-3-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230522053044.1039572-3-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230525_013721_763374_C58CD00D 
X-CRM114-Status: GOOD (  17.41  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 2/7] test: self: add digest test
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, May 22, 2023 at 07:30:39AM +0200, Ahmad Fatoum wrote:
> Later commits will touch existing digest code, so this is a good
> opportunity to add a self test to ensure MD5/SHA continues to work.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  test/self/Kconfig  |   6 ++
>  test/self/Makefile |   1 +
>  test/self/digest.c | 190 +++++++++++++++++++++++++++++++++++++++++++++
>  3 files changed, 197 insertions(+)
>  create mode 100644 test/self/digest.c
> 
> +static void test_digests_sha12(const char *suffix)
> +{
> +	bool cond;
> +
> +	cond = !strcmp(suffix, "asm") ? IS_ENABLED(CONFIG_DIGEST_SHA1_ARM) :
> +	       IS_ENABLED(CONFIG_HAVE_DIGEST_SHA1);
> +
> +	test_digest(cond, digest_suffix("sha1", suffix),
> +		TEST_CASE(zeroes7, "77ce0377defbd11b77b1f4ad54ca40ea5ef28490"),
> +		TEST_CASE(one32,   "cbd9cbfc20182e4b71e593e7ad598fc383cc6058"),
> +		TEST_CASE(inc4097, "c627e736efd8bb0dff1778335c9c79cb1f27e396"));
> +
> +
> +	cond = !strcmp(suffix, "asm") ? IS_ENABLED(CONFIG_DIGEST_SHA256_ARM) :
> +	       IS_ENABLED(CONFIG_HAVE_DIGEST_SHA1);
> +
> +	test_digest(cond, digest_suffix("sha224", suffix),
> +		TEST_CASE(zeroes7, "fbf6df85218ac5632461a8a17c6f294e6f35264cbfc0a9774a4f665b"),
> +		TEST_CASE(one32,   "343cb3950305e6e6331e294b0a4925739d09ecbd2b43a2fc87c09941"),
> +		TEST_CASE(inc4097, "6596b5dcfbd857f4246d6b94508b8a1a5b715a4f644a0c1e7d54c4f7"));

This breaks on mips qemu-malta_defconfig:

https://github.com/barebox/barebox/actions/runs/5077359707/jobs/9120526730

This config has SHA256 enabled, but not SHA224. It seems we have to run
this test conditionally somehow.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


