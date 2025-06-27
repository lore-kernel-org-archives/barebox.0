Delivery-date: Fri, 27 Jun 2025 17:45:22 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uVBGU-00BfX5-1g
	for lore@lore.pengutronix.de;
	Fri, 27 Jun 2025 17:45:22 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uVBGU-0003yP-0Y
	for lore@pengutronix.de; Fri, 27 Jun 2025 17:45:22 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7AZMDpq/kztRvt33W/9Vm1eVJsv7XOC5wooY+FSWZCw=; b=yyP7IM3OjrKh7PqJeytIRLJdch
	ikEFU2+itFwcsuWjzrUkFxRo0EYXdPoDYRbvrk5ERk4vpH3QkyJ9PAtQqAlfE0wEz65GYpIFz8Rg5
	7i9nNKIP0rgYE9Tm4NI14DjLfeQ5mpMIAHa/SIh3+wsHNSWPhhxk5nKpK6EsFxi6ujknFpecPVAQC
	a1YnX0vQCi0efBr0KGJYIu7nD23Zf/5xQeZxGWvDAZx/JLKBhy5XcQ3p/QccbKXAE9o5V5zoEi59x
	/xZGmXUs22PUez9nXc13Vh4cfL1F0u4bqmtq9xNtNs7cinuf3kGzIJsfW0dTH73fR9lCVJExef5zg
	zTYk5L9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uVBG1-0000000F9Gc-0NoJ;
	Fri, 27 Jun 2025 15:44:53 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uVAsy-0000000F3vU-1vEt
	for barebox@lists.infradead.org;
	Fri, 27 Jun 2025 15:21:05 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uVAsx-0003Mq-AA; Fri, 27 Jun 2025 17:21:03 +0200
Message-ID: <6d5d47af-a41c-4fb8-ae83-98805d464b04@pengutronix.de>
Date: Fri, 27 Jun 2025 17:21:03 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
References: <20250627-arm-optee-early-helper-v1-0-4b098e8ac7cd@pengutronix.de>
 <20250627-arm-optee-early-helper-v1-13-4b098e8ac7cd@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20250627-arm-optee-early-helper-v1-13-4b098e8ac7cd@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250627_082104_507257_C4D48EAA 
X-CRM114-Status: GOOD (  10.64  )
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
Subject: Re: [PATCH 13/14] ARM: optee-early: drop start_optee_early()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 6/27/25 16:07, Sascha Hauer wrote:
> Now that all users of start_optee_early() use the SoC variants
> make start_optee_early() a static function. While at it move the zeroing
> of the data_location which was duplicated in the SoC specific functions
> to start_optee_early().

start_optee_early() is documented in Documentation/user/optee.rst and
would need to be updated.


> +	/* We expect this function to be called with data caches disabled */
> +	BUG_ON(get_cr() & CR_C);

Did you mean to drop the BUG_ON() in start_optee_early().

Cheers,
Ahmad
-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



