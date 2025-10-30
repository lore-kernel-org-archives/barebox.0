Delivery-date: Thu, 30 Oct 2025 09:44:00 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vEOGG-00DMD0-0m
	for lore@lore.pengutronix.de;
	Thu, 30 Oct 2025 09:44:00 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vEOGF-0007qy-Lz
	for lore@pengutronix.de; Thu, 30 Oct 2025 09:44:00 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=IgAAQjXMS4m413+lsi7/ZPsEKGe2BuH13z0uR+nvEII=; b=EUjx0xfMVb7uvJBr3z3yVc1pbB
	aKanRr5IrP1iby1lyn/r48F7mVjSvA4nqo+WULYkLc/NwkftTtg2EIfDcHRaBPLt45u33sV71j8Vv
	2lc/TveAiznQvJDTxqeZdZ9BopMHMLk13SXbgYL261ybs3tR8014A1OZwxkmvK1OpAdgJf6nFwGhZ
	WkgGwINCHSex9q4oaa678PrWXLb3+MJQQ1Q72aVX9FCC4YRSw39apOZiKtcGZylFEgo7k1GRGe05l
	OsfgjyA8HNSswSfI+iA8sOn1Dl0MExpupUirM72n50urksIG5cC21J4lIpDcYpZA8MHE2Ecy/vllI
	YagSqKwg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vEOFp-00000003mH9-0xD2;
	Thu, 30 Oct 2025 08:43:33 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vEOFm-00000003mGa-3kyu
	for barebox@lists.infradead.org;
	Thu, 30 Oct 2025 08:43:32 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <jre@pengutronix.de>)
	id 1vEOFl-0007iM-CN; Thu, 30 Oct 2025 09:43:29 +0100
Message-ID: <97ce66f0-0e4b-4dd8-8b56-93b5e2bb24d2@pengutronix.de>
Date: Thu, 30 Oct 2025 09:43:29 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
References: <20251030-gitignore-build-v2-1-8f4fcd824921@pengutronix.de>
From: Jonas Rebmann <jre@pengutronix.de>
Content-Language: en-US
In-Reply-To: <20251030-gitignore-build-v2-1-8f4fcd824921@pengutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251030_014330_966104_132CD972 
X-CRM114-Status: GOOD (  19.25  )
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
X-Spam-Status: No, score=-3.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2] gitignore: ignore /build, /oe-logs, /oe-workdir
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 2025-10-30 09:41, Jonas Rebmann wrote:
> Documentation such as Documentation/boards/kvx.rst and tooling such as
> conftest.py suggests /build is a good choice for build output directory.
> The build system does set up a .gitignore in the build directory but
> this has no effect if /build is a symlink to outside the tree.
> 
> Similarly, YOCTOs "devtool" sets up the symlinks /oe-logs and
> /oe-workdir to point to the respective paths in yoctos build tree.
> 
> Include those in .gitignore.
> 
> Signed-off-by: Jonas Rebmann <jre@pengutronix.de>
> ---
> Changes in v2:
> - EDITME: describe what is new in this series revision.
> - EDITME: use bulletpoints and terse descriptions.

- Include /oe-logs and /oe-workdir (Thanks, Sasha)

> - Link to v1: https://lore.barebox.org/barebox/20251017-gitignore-build-v1-1-f25d35c3bff4@pengutronix.de
> ---
>   .gitignore | 3 +++
>   1 file changed, 3 insertions(+)
> 
> diff --git a/.gitignore b/.gitignore
> index 98bb4dac89..a235f9f7de 100644
> --- a/.gitignore
> +++ b/.gitignore
> @@ -53,6 +53,9 @@ policy-list
>   /TAGS
>   /barebox*
>   /System.map
> +/build
> +/oe-logs
> +/oe-workdir
>   
>   #
>   # git files that we don't want to ignore even it they are dot-files
> 
> ---
> base-commit: 8defba1d0ab1aef9dd5d57710e18d0d02e2c48e2
> change-id: 20251017-gitignore-build-d90cb643b130
> 
> Best regards,
> --
> Jonas Rebmann <jre@pengutronix.de>
> 
> 
> 

-- 
Pengutronix e.K.                           | Jonas Rebmann               |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-9    |



