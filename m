Delivery-date: Mon, 22 Sep 2025 17:41:51 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v0ifn-0060CS-1E
	for lore@lore.pengutronix.de;
	Mon, 22 Sep 2025 17:41:51 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v0ifm-000318-Pz
	for lore@pengutronix.de; Mon, 22 Sep 2025 17:41:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=oCD9QAFofPthglJpL0AYMGVkMVulSr3t0E5LxvAplEI=; b=vLIAJE+VXRscOSWWnq0/1LBONI
	7WD+SS83VORYxj6gIpxN7BWNLxKjiSws60iUbMJ5p/GHVSyhYOtF+CDTL4J2c71tLgpO+zeH9fp8i
	+EImph+4eiAUxs+MLZV3e7y6qYTZo8jRt3mDgEhrJ6XZUU+mbfkf1Y57O2u385MUFPw+hXGF8Wk+e
	hVWUM5fTY1UpWQ3lruZNvTqAlQTuTrI6wA5zWl3uWKWm6DHdmPLPv3PCX4UVMW8Lrp+yEi/BD/FU5
	LU21y04NnIqRH0z/OuZCGiQnUwZONfDsfF+3Y9E5kur00Z+MxFoTvxsjfoGhbi4BD6+rptHHz77AE
	YoaFaEVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v0ifR-0000000ArHm-0W8J;
	Mon, 22 Sep 2025 15:41:29 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v0ifP-0000000ArGN-0zCF
	for barebox@lists.infradead.org;
	Mon, 22 Sep 2025 15:41:28 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1v0ifN-0002tw-P4; Mon, 22 Sep 2025 17:41:25 +0200
Message-ID: <c8dea274-fc20-4f51-818e-897ca9acdf0d@pengutronix.de>
Date: Mon, 22 Sep 2025 17:41:25 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Tobias Waldekranz <tobias@waldekranz.com>, barebox@lists.infradead.org
References: <20250918074455.891780-1-tobias@waldekranz.com>
 <20250918074455.891780-9-tobias@waldekranz.com>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250918074455.891780-9-tobias@waldekranz.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250922_084127_276532_7F2AADD2 
X-CRM114-Status: GOOD (  17.67  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 08/11] ci: pytest: Generate test data for dm-verity
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 18.09.25 09:43, Tobias Waldekranz wrote:
> Create a small FAT fs with a couple of files, and the corresponding
> hash tree. Then create a modified copy that we can use to make sure
> that errors are detected.
> 
> Signed-off-by: Tobias Waldekranz <tobias@waldekranz.com>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  scripts/generate_testfs.sh | 44 ++++++++++++++++++++++++++++++++++++++
>  1 file changed, 44 insertions(+)
> 
> diff --git a/scripts/generate_testfs.sh b/scripts/generate_testfs.sh
> index 3c200bd401..1c358ff846 100755
> --- a/scripts/generate_testfs.sh
> +++ b/scripts/generate_testfs.sh
> @@ -28,3 +28,47 @@ generate_fit()
>  	       ${KBUILD_OUTPUT}/testfs/barebox-gzipped.fit
>  }
>  [ -f .github/testfs/${KBUILD_DEFCONFIG}-gzipped.its ] && generate_fit
> +
> +alias pad128k="dd if=/dev/zero bs=128k count=1 status=none"
> +
> +generate_dm_verity()
> +{
> +    work=$(mktemp -d)
> +    cd ${work}
> +
> +    # Create two dummy files; use lots of padding to make sure that
> +    # when we alter the contents of 'english' in root-bad, 'latin' is
> +    # still be readable, as their contents wont (a) share the same
> +    # hash block and (b) the block cache layer won't accedentally read
> +    # the invalid block.
> +
> +    pad128k  >latin
> +    echo -n "veritas vos liberabit" >>latin
> +    pad128k >>latin
> +
> +    pad128k  >english
> +    echo -n "truth will set you free" >>english
> +    pad128k >>english
> +
> +    truncate -s 1M good.fat
> +    mkfs.vfat good.fat
> +    mcopy -i good.fat latin english ::
> +
> +    veritysetup format \
> +		--root-hash-file=good.hash \
> +		good.fat good.verity
> +
> +    sed 's/truth will set you free/LIAR LIAR PANTS ON FIRE/' \
> +	<good.fat >bad.fat
> +
> +    cd -
> +    cp \
> +	${work}/good.fat \
> +	${work}/good.verity \
> +	${work}/good.hash \
> +	${work}/bad.fat \
> +	${KBUILD_OUTPUT}/testfs
> +
> +    rm -rf ${work}
> +}
> +generate_dm_verity


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


