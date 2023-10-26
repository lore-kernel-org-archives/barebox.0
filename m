Delivery-date: Thu, 26 Oct 2023 16:22:39 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qw1Fw-004dKP-8y
	for lore@lore.pengutronix.de; Thu, 26 Oct 2023 16:22:39 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qw1Fv-0000Wx-7U
	for lore@pengutronix.de; Thu, 26 Oct 2023 16:22:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ZfYx97Y1e5SAPimiDZ6Ies4QiND9rAw3oCqcbKw9dac=; b=eGKj/w/eRc4abbnEs5ivhAvI2m
	KM82+PaqStTo3fhsbdjy3tZF98YvVSu4wYXIfqm+g+nIttHv5I9B4aeQ5DqKUNuyBYqgFw+jgrJpI
	aLQ7BKUs5qof5Foe+pU3ZDMzLgbseuYPtStpSs89jGcdtKNo9ewFcrZFc+bpfatekZSFnPb+dbKrP
	Xr9r8x5dlmlZu0mc5fHXx0D2A7VCIXg46ZxQSWwdlAs46u8LqKfdY3TCYJe92A+wBcM+wrvL6rC6U
	knc09Tj7AcOcTPKb10yx+GydfW+JHjUjI2UemF8Jq6Gzr9NF94a1kUV0f7t06rKS7J3aLGLh1YtKI
	DfcllqUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qw1Ev-00Eeby-0Z;
	Thu, 26 Oct 2023 14:21:37 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qw1Er-00EebK-1J
	for barebox@lists.infradead.org;
	Thu, 26 Oct 2023 14:21:34 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1qw1Eq-0000Kk-60; Thu, 26 Oct 2023 16:21:32 +0200
Message-ID: <177c9c80-df41-0e53-0613-929e7c3fa38f@pengutronix.de>
Date: Thu, 26 Oct 2023 16:21:29 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: Marco Felsch <m.felsch@pengutronix.de>, barebox@lists.infradead.org
References: <20231026124623.4054582-1-m.felsch@pengutronix.de>
 <20231026124623.4054582-2-m.felsch@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20231026124623.4054582-2-m.felsch@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231026_072133_443899_972B24A2 
X-CRM114-Status: GOOD (  15.85  )
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
X-Spam-Status: No, score=-6.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 2/2] scripts: get_maintainers: drop --status enforcement
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 26.10.23 14:46, Marco Felsch wrote:
> The status parameter is never used so drop it and stop bother the user
> of the script.
> 
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>

Our get_maintainer.pl script doesn't have the same breadth of features
as the kernel's and only --status is implemented, thus the check.

> ---
>  scripts/get_maintainer.pl | 2 --
>  1 file changed, 2 deletions(-)
> 
> diff --git a/scripts/get_maintainer.pl b/scripts/get_maintainer.pl
> index 7c0d50333400..a19c0e7305d0 100755
> --- a/scripts/get_maintainer.pl
> +++ b/scripts/get_maintainer.pl
> @@ -2,8 +2,6 @@
>  # SPDX-License-Identifier: GPL-2.0-only
>  # Dummy get_maintainer.pl script for checkpatch.pl to use
>  
> -die "USAGE: get_maintainer.pl --status\n" unless grep /--status/, @ARGV;
> -
>  print <<'EOT'
>  Sascha Hauer <s.hauer@pengutronix.de> (maintainer:BAREBOX)
>  barebox@lists.infradead.org (open list:BAREBOX)

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



