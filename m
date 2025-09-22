Delivery-date: Mon, 22 Sep 2025 17:45:56 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v0ijk-0060KE-0P
	for lore@lore.pengutronix.de;
	Mon, 22 Sep 2025 17:45:56 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v0ijj-00046C-I3
	for lore@pengutronix.de; Mon, 22 Sep 2025 17:45:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=25QzIyhFyBs9pQubikmolkXKpbC1lSNA0fMFpSBlzeI=; b=N10MfBEx+lVrYCPRd8V0gQd5Ob
	KcqAXn0jR3TvvwCWGOEOOR3Ta1P1557M64gK5VfhcaZT9GI1xB2FQ1JogH2FgSHT7MTqsDbZT0C+F
	6XnkAiP1GksbflbC9sHrWt45etMMjQxFrsEPOwvT6XCyzPdhJXjzfqBpHljmYBoFqYBL+oC+w2lOM
	uqyOUJ0jVD8PwXQoWudqdIV3smsW2kPKDLL65ha9Dw+gjPERJ85ttFrLn7WzE03eLlvZEiCb8dAGr
	DR7jn57xL8BSiK+IiNmyk3zVmzIslDg/BYZ5Rp3vSdV5ovlgR60hLlwvwg+DbVWGmzYgO5+fEbrR0
	LLaWV2jg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v0ijI-0000000Asjt-2YWX;
	Mon, 22 Sep 2025 15:45:28 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v0ijG-0000000AsjN-1A3E
	for barebox@lists.infradead.org;
	Mon, 22 Sep 2025 15:45:27 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1v0ijE-0003y8-Ru; Mon, 22 Sep 2025 17:45:24 +0200
Message-ID: <c01232e3-ac69-4e71-8448-16a1de33a843@pengutronix.de>
Date: Mon, 22 Sep 2025 17:45:24 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Tobias Waldekranz <tobias@waldekranz.com>, barebox@lists.infradead.org
References: <20250918074455.891780-1-tobias@waldekranz.com>
 <20250918074455.891780-11-tobias@waldekranz.com>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250918074455.891780-11-tobias@waldekranz.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250922_084526_319541_C01BD7DB 
X-CRM114-Status: GOOD (  16.76  )
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
X-Spam-Status: No, score=-1.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	SUBJECT_IN_BLACKLIST,SUBJECT_IN_BLOCKLIST autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 10/11] ci: pytest: Centralize feature discovery to a
 separate step
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 18.09.25 09:43, Tobias Waldekranz wrote:
> This avoids the need for each step to (re)discover features. Start off
> by only checking for 'testfs', but this can easily be expanded in the
> future.
> 
> Signed-off-by: Tobias Waldekranz <tobias@waldekranz.com>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  .github/workflows/test-labgrid-pytest.yml | 22 +++++++++++++++-------
>  1 file changed, 15 insertions(+), 7 deletions(-)
> 
> diff --git a/.github/workflows/test-labgrid-pytest.yml b/.github/workflows/test-labgrid-pytest.yml
> index adec3defc1..6918ea1b98 100644
> --- a/.github/workflows/test-labgrid-pytest.yml
> +++ b/.github/workflows/test-labgrid-pytest.yml
> @@ -64,6 +64,17 @@ jobs:
>      - name: Checkout code
>        uses: actions/checkout@v4
>  
> +    - name: Determine used features
> +      id: used-features
> +      run: |
> +        for i in ${{matrix.lgenv}}; do
> +          if grep -wq 'testfs' "$i"; then
> +            echo "testfs=true" >>$GITHUB_OUTPUT
> +            exit
> +          fi
> +        done
> +        echo "testfs=false" >> $GITHUB_OUTPUT
> +
>      - name: Build
>        id: build
>        run: |
> @@ -83,17 +94,14 @@ jobs:
>          fi
>  
>      - name: Populate testfs
> +      if: steps.used-features.outputs.testfs == 'true'
>        run: |
>          export KBUILD_OUTPUT=build-${{matrix.arch}}-${{matrix.defconfig}}
>          export KBUILD_DEFCONFIG=${{matrix.defconfig}}
>  
> -        for i in ${{matrix.lgenv}}; do
> -          grep -wq 'testfs' "$i" || continue
> -
> -          # Just use already built dtc
> -          export PATH="$PATH:${KBUILD_OUTPUT}/scripts/dtc/"
> -          exec scripts/generate_testfs.sh
> -        done
> +        # Just use already built dtc
> +        export PATH="$PATH:${KBUILD_OUTPUT}/scripts/dtc/"
> +        exec scripts/generate_testfs.sh
>  
>      - name: labgrid-pytest
>        if: steps.build.outcome == 'success'


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


