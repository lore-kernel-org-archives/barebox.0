Delivery-date: Tue, 10 Jun 2025 14:34:36 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uOyBY-005nZc-0h
	for lore@lore.pengutronix.de;
	Tue, 10 Jun 2025 14:34:36 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uOyBX-00034r-Kx
	for lore@pengutronix.de; Tue, 10 Jun 2025 14:34:36 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=6W5Oj79/u3jsZLV8JndeGSig6oEW6n45IPcmoUEptMQ=; b=AQxRdwVwOVvarVIR1nAMBLf9sr
	z5NrW9f+RDQ1vXcLO5M23szxiqeFkan4vzRjQAKWbdN5ezbGP+wKoM2kOKNrNM543lGmFZqXxjEnv
	scD8JTWtFSkvqRcX/u62QNm2ATdy3JujcToW5YP9BmOFGxVlbazpTOOdpUkoC2xV/WX72Q7YOZYgL
	ZPx6s34jm3RIZQD6dbO2f8MtBYWnVPFCPTWYGU8XZ78iRD04icQP+e1jwXAXI8HVm0UMPvVTT5uzN
	LAYMOCUHIkEsm72khjPTjDNZpZg+vAn3Sk82DEp0btLN58Zxk/3hGZ11ZjdyuODngugTQxdD27EEV
	lVtIc9Sw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uOyB7-00000006mUz-1xwR;
	Tue, 10 Jun 2025 12:34:09 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uOxZA-00000006hEy-2HlR
	for barebox@lists.infradead.org;
	Tue, 10 Jun 2025 11:54:57 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uOxZ7-0004xn-Vg; Tue, 10 Jun 2025 13:54:54 +0200
Message-ID: <08ead351-56f7-4b95-b982-4ddf8085839e@pengutronix.de>
Date: Tue, 10 Jun 2025 13:54:53 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Bastian Krause <bst@pengutronix.de>, barebox@lists.infradead.org
References: <20250610092718.258050-1-bst@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20250610092718.258050-1-bst@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250610_045456_591706_5CAA90D6 
X-CRM114-Status: GOOD (  16.50  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] Documentation: user: use https instead of git protocol
 for cloning
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Bastian,

On 6/10/25 11:27, Bastian Krause wrote:
> The git server at git.pengutronix.de no longer supports the git
> protocol, so switch to https.
> 
> Signed-off-by: Bastian Krause <bst@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

Alternatively, we could also mention

  ssh://public@git.pengutronix.de/barebox

But I don't have a preference either way.

Thanks,
Ahmad

> ---
>  Documentation/user/barebox.rst | 16 ++++++++--------
>  1 file changed, 8 insertions(+), 8 deletions(-)
> 
> diff --git a/Documentation/user/barebox.rst b/Documentation/user/barebox.rst
> index 338c2f5d03c..8b3a29fc1c0 100644
> --- a/Documentation/user/barebox.rst
> +++ b/Documentation/user/barebox.rst
> @@ -18,15 +18,15 @@ can be checked out as follows:
>  
>  .. code-block:: sh
>  
> -  $ git clone git://git.pengutronix.de/git/barebox.git
> +  $ git clone https://git.pengutronix.de/git/barebox
>    Cloning into 'barebox'...
> -  remote: Counting objects: 113356, done.
> -  remote: Compressing objects: 100% (25177/25177), done.
> -  remote: Total 113356 (delta 87910), reused 111155 (delta 85935)
> -  Receiving objects: 100% (113356/113356), 33.13 MiB | 183.00 KiB/s, done.
> -  Resolving deltas: 100% (87910/87910), done.
> -  Checking connectivity... done.
> -  Checking out files: 100% (5651/5651), done.
> +  remote: Enumerating objects: 330649, done.
> +  remote: Counting objects: 100% (3932/3932), done.
> +  remote: Compressing objects: 100% (2203/2203), done.
> +  remote: Total 330649 (delta 2421), reused 2217 (delta 1706), pack-reused 326717
> +  Receiving objects: 100% (330649/330649), 82.03 MiB | 14.88 MiB/s, done.
> +  Resolving deltas: 100% (265076/265076), done.
> +  Updating files: 100% (19054/19054), done.
>  
>  By default, the master branch is checked out. If you want to develop for
>  barebox, this is the right branch to send patches against.

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



