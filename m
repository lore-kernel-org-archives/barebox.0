Delivery-date: Wed, 21 Jun 2023 10:30:20 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qBtEL-00FQpA-GI
	for lore@lore.pengutronix.de; Wed, 21 Jun 2023 10:30:20 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qBtEI-0003A4-I3
	for lore@pengutronix.de; Wed, 21 Jun 2023 10:30:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=e4h6ZvXG5rFoAgxBQQANF/NtVDJ7fsNTVzQC3nJXIHQ=; b=odpMOwagjh5zncJ5zGTCUb+G2s
	sbQThdWPVU5laQl1rDtdsVghyPhkRTJA+7JigR8x5XvPXj4dSgE1vr2j3xQ1aglH5qjA6Da6w4Aa/
	EujNw6vNlBMm7M7N/uY7AFgB3TJTv0hq/jr9owNoaRoZr77UlqZlgY1rYXcGeUXEhIkzJCCmOGsp4
	Lgl4jhSZFHy0uRUHpEeu0lUGB2zyB2V77Z9xJCdVeOaz/O0HtbyOnS0HJah+3auBOQkaiNbZsaeQS
	HYPDtBXYhbuaIJ1FtzTHOxnascTd5KU9XPS+tDSS9ppSZqpflfNgZFundT9eUxX/PNhWMZCaxDtGi
	X0SEaduQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qBtDM-00DhKg-0S;
	Wed, 21 Jun 2023 08:29:20 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qBtDJ-00DhKE-14
	for barebox@lists.infradead.org;
	Wed, 21 Jun 2023 08:29:18 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qBtDH-0002zK-JU; Wed, 21 Jun 2023 10:29:15 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qBtDH-0005iz-C2; Wed, 21 Jun 2023 10:29:15 +0200
Date: Wed, 21 Jun 2023 10:29:15 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230621082915.GA18491@pengutronix.de>
References: <20230606113806.3122376-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230606113806.3122376-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230621_012917_375706_C072342E 
X-CRM114-Status: GOOD (  19.68  )
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
Subject: Re: [PATCH] ci: test-defconfigs: build with -Werror
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Jun 06, 2023 at 01:38:06PM +0200, Ahmad Fatoum wrote:
> CI builds a lot of code and warnings can go unnoticed. Ensure this won't
> happen anymore.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  .github/workflows/build-defconfigs.yml | 3 ++-
>  test/kconfig/enable_werror.kconf       | 1 +
>  2 files changed, 3 insertions(+), 1 deletion(-)
>  create mode 100644 test/kconfig/enable_werror.kconf

Applied, thanks

Sascha

> 
> diff --git a/.github/workflows/build-defconfigs.yml b/.github/workflows/build-defconfigs.yml
> index ff9264721d87..335976f18d06 100644
> --- a/.github/workflows/build-defconfigs.yml
> +++ b/.github/workflows/build-defconfigs.yml
> @@ -40,4 +40,5 @@ jobs:
>          ./test/generate-dummy-fw.sh
>  
>          ./MAKEALL -O build-${{matrix.arch}} -k test/kconfig/disable_size_check.kconf \
> -                -k test/kconfig/disable_target_tools.kconf '${{matrix.config}}'
> +                -k test/kconfig/disable_target_tools.kconf \
> +                -k test/kconfig/enable_werror.kconf '${{matrix.config}}'
> diff --git a/test/kconfig/enable_werror.kconf b/test/kconfig/enable_werror.kconf
> new file mode 100644
> index 000000000000..f54ff6cdaab8
> --- /dev/null
> +++ b/test/kconfig/enable_werror.kconf
> @@ -0,0 +1 @@
> +CONFIG_WERROR=y
> -- 
> 2.39.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


