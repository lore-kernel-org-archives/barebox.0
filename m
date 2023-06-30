Delivery-date: Fri, 30 Jun 2023 13:54:39 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qFCi0-009ZYF-MF
	for lore@lore.pengutronix.de; Fri, 30 Jun 2023 13:54:39 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qFChy-0003CU-7U
	for lore@pengutronix.de; Fri, 30 Jun 2023 13:54:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=15839NRAkh5thz9Sj4zMxAcib7kUIcRWvYovdMvljwE=; b=ZYtwGkE1eoQ2lJyFMVjf+kbmxC
	iggGPgO/Jh1wQaalmg1ua5M+YtsHFvUtmSp1WKFKWJCnDxiDzekc2SphvbD1rui0Mea23wftiRrxo
	Xyr0y/1hnsMzxZvuqWeobkTowL7zdomwGoMbq6GC7VMxGZyl4rjGJQf8NgiBcA84RqIYPTV3s79Te
	oStQZnfRVZT/ZozFqTRZLKz4bxVs+tjWnLxgn95rY7yuyhE7ahnYEpvbczENadAuUIeWsnyrRdYid
	+7OFaXDvB+4FWB/DVaCi4xgvVcIimIMpIHgTJCbW7CVdJ7kDONKlebZS6kIpOTXZvPo1wL7BY1yOB
	FJqv6AZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qFCgq-003caq-2i;
	Fri, 30 Jun 2023 11:53:28 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qFCgn-003caD-0W
	for barebox@lists.infradead.org;
	Fri, 30 Jun 2023 11:53:26 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qFCgl-00034W-Ri; Fri, 30 Jun 2023 13:53:23 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qFCgl-0007TP-LQ; Fri, 30 Jun 2023 13:53:23 +0200
Date: Fri, 30 Jun 2023 13:53:23 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230630115323.GH18491@pengutronix.de>
References: <20230629065356.1119480-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230629065356.1119480-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230630_045325_194389_681F7BAF 
X-CRM114-Status: GOOD (  25.07  )
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
Subject: Re: [PATCH v2 1/2] Kbuild: include arch/ Makefile before test/
 directory
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, Jun 29, 2023 at 08:53:55AM +0200, Ahmad Fatoum wrote:
> Unless overridden by SORT*, LD will place sections matched by wildcards
> in the order they were seen in the link. So far, this meant that
> arch/ initcalls and device trees compiled into barebox proper, were
> always last.
> 
> For platforms with PBL or with only one device tree in barebox proper,
> this didn't matter much, but when enabling the of_manipulation selftest,
> a second device tree would be built into barebox on kvx, openrisc and
> some MIPS.
> 
> Because all directories appear before arch/, this had the effect that
> on kvx, openrisc and some MIPS, __dtb_start would end up pointing at the
> test's device tree instead of the board device tree breaking the build.
> 
> Switching the affected platforms to use PBL would be one fix for the
> issue, but there's a simple one: let's just move test/ after arch/.
> 
> My preferred solution would've been to move arch/ at the first
> beginning, but this may cause fallout for code that depended on specific
> ordering of initcalls or other linker-defined lists.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
> v1 -> v2:
>   - move only test/ after arch/ to reduce chance of breakage
> ---
>  Makefile | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 

Applied, thanks

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


