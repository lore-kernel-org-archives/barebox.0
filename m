Delivery-date: Tue, 13 Sep 2022 10:15:35 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oY14x-003PRI-PM
	for lore@lore.pengutronix.de; Tue, 13 Sep 2022 10:15:35 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oY14w-0000s5-B5
	for lore@pengutronix.de; Tue, 13 Sep 2022 10:15:35 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=y52NECiMTovf0h2VUmbRiJkcFRSaW+e+6FMq78BZ5DA=; b=mY6oVUBShDZEIjoZhGSNjCfAYr
	LRNcuZhHlFV8BKw5Ov5YxCt2fLBZmT/k2pccnRpRFlKBIXLB6yTlAE0ily+gKj6axEu13OYSGpuiw
	H6pyDL+SAM3Ed1GdDMVjppT5kUb29sZ196JRUGgQq+NK9LCzQjBBEWHOwqd3CRN24EyIAcZjWkv19
	gxESBJ1MKY+/76eufdDrpDBwRA6Prxt3dGgqk8/l60n6Ox66L8feoz5sMKzw5I3AWCbKGfCUmeocH
	MdOlODL+gfVL0mmBeNlznuyhzJpCBViBEsysaxmc9hhWO0qrAxQINUXIO9tZ1PaAPU+/8nHk/Ce8b
	ehK7FHVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oY13f-0049k1-Fu; Tue, 13 Sep 2022 08:14:15 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oY13U-0049gr-5W
	for barebox@lists.infradead.org; Tue, 13 Sep 2022 08:14:05 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oY13S-0000kC-Li; Tue, 13 Sep 2022 10:14:02 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oY13S-0003g0-Cd; Tue, 13 Sep 2022 10:14:02 +0200
Date: Tue, 13 Sep 2022 10:14:02 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220913081402.GI6477@pengutronix.de>
References: <20220905070125.537483-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220905070125.537483-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220913_011404_242298_6A7CB411 
X-CRM114-Status: GOOD (  25.76  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] test: self: provide selftest_is_running()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Sep 05, 2022 at 09:01:25AM +0200, Ahmad Fatoum wrote:
> For debugging during self-test run, it can be useful to enable select
> logging only when the selftest is running. Provide a selftest_is_running()
> function that can be used to determine whether a test is running.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  commands/selftest.c |  2 +-
>  include/bselftest.h |  5 +++++
>  test/self/core.c    | 26 +++++++++++++++++++++++++-
>  3 files changed, 31 insertions(+), 2 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/commands/selftest.c b/commands/selftest.c
> index a10f1467fece..bb62575aa7bb 100644
> --- a/commands/selftest.c
> +++ b/commands/selftest.c
> @@ -24,7 +24,7 @@ static int run_selftest(const char *match, bool list)
>  		if (match && strcmp(test->name, match))
>  			continue;
>  
> -		err |= test->func();
> +		err |= selftest_run(test);
>  		matches++;
>  	}
>  
> diff --git a/include/bselftest.h b/include/bselftest.h
> index 21eeba0526ef..f03c803b6553 100644
> --- a/include/bselftest.h
> +++ b/include/bselftest.h
> @@ -15,6 +15,7 @@ struct selftest {
>  	const char *name;
>  	int (*func)(void);
>  	struct list_head list;
> +	bool running;
>  };
>  
>  static inline int selftest_report(unsigned int total_tests, unsigned int failed_tests,
> @@ -71,4 +72,8 @@ static inline void selftests_run(void)
>  	}							\
>  	__bselftest_initcall(_func##_bselftest_register);
>  
> +
> +int selftest_run(struct selftest *test);
> +bool selftest_is_running(struct selftest *test);
> +
>  #endif
> diff --git a/test/self/core.c b/test/self/core.c
> index caa4c27f6def..40f5ee842d16 100644
> --- a/test/self/core.c
> +++ b/test/self/core.c
> @@ -7,6 +7,30 @@
>  
>  LIST_HEAD(selftests);
>  
> +int selftest_run(struct selftest *test)
> +{
> +	int err;
> +
> +	test->running = true;
> +	err = test->func();
> +	test->running = false;
> +
> +	return err;
> +}
> +
> +bool selftest_is_running(struct selftest *test)
> +{
> +	if (test)
> +		return test->running;
> +
> +	list_for_each_entry(test, &selftests, list) {
> +		if (selftest_is_running(test))
> +			return true;
> +	}
> +
> +	return false;
> +}
> +
>  void selftests_run(void)
>  {
>  	struct selftest *test;
> @@ -15,7 +39,7 @@ void selftests_run(void)
>  	pr_notice("Configured tests will run now\n");
>  
>  	list_for_each_entry(test, &selftests, list)
> -		err |= test->func();
> +		err |= selftest_run(test);
>  
>  	if (err)
>  		pr_err("Some selftests failed\n");
> -- 
> 2.30.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


