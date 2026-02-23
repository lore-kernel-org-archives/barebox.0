Delivery-date: Mon, 23 Feb 2026 12:53:19 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vuUV4-004oxN-17
	for lore@lore.pengutronix.de;
	Mon, 23 Feb 2026 12:53:19 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vuUV4-00027p-HV
	for lore@pengutronix.de; Mon, 23 Feb 2026 12:53:19 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=8ESQ8rc7O3dkOek4LwyBmNa9AE3i2j1UMZRFoKwsmKA=; b=M0YCi7qGFoLOo0Ct1PWshPipvW
	YNL5BpgpAB/bTGO6Lhv7cpNxU5GOW0GV+rX5PH12BjE9v3ydKU0y6QgUILQBgk7X9E8S1q8ae2oEg
	PnAYn1lChdTrjHniY2HiXm0uKvW3+lMLLZpXQDWxkoxA4cIZrHIdiiST9ig3c5dxLJ8nCvG4j1IzK
	EwOjjNbB9Cta+vQ7VEov3MFr6HDsxacup2JXhphUKUMzTTJhO+1/NYf5f3Sy6o1/PW39qPC8oiNef
	cZ/ESpyuXIqioM8J8/iMm4J9fScD/nGA10ike3Cwynw98SJLDPPxweMgzI/+rRUs23jYg962Qi6S/
	VwQXHnPA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuUUi-00000000Dwv-2YgW;
	Mon, 23 Feb 2026 11:52:56 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuUUg-00000000Dw2-1pcJ
	for barebox@lists.infradead.org;
	Mon, 23 Feb 2026 11:52:55 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1vuUUe-00025W-VE; Mon, 23 Feb 2026 12:52:53 +0100
Message-ID: <e9d4562c-b3cc-40e9-899f-f929e25d135f@barebox.org>
Date: Mon, 23 Feb 2026 12:52:52 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org, "Claude Opus 4.6" <noreply@anthropic.com>
References: <20260223113446.638135-1-a.fatoum@barebox.org>
 <20260223113446.638135-4-a.fatoum@barebox.org>
 <aZw_ESRF71GCfD6Y@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@barebox.org>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <aZw_ESRF71GCfD6Y@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260223_035254_479112_E4F5D7E9 
X-CRM114-Status: GOOD (  14.70  )
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
X-Spam-Status: No, score=-3.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 3/4] MAKEALL: error out on options placed after the
 defconfig argument
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 2/23/26 12:50 PM, Sascha Hauer wrote:
> On Mon, Feb 23, 2026 at 12:31:34PM +0100, Ahmad Fatoum wrote:
>> getopts stops parsing at the first non-option argument, so options
>> like -k after the defconfig name silently end up as positional
>> arguments. For bare defconfigs these get misinterpreted as pytest
>> options and are silently ignored, leading to a build without the
>> intended configuration.
>>
>> Detect this by checking for trailing arguments when any positional
>> argument is a bare defconfig (not a labgrid .yaml config, where
>> extra arguments are intentionally forwarded to pytest).
> 
> Can't we use getopt for MAKEALL instead of getopts? getopt just does the
> right thing.

When using MAKEALL with a labgrid yaml instead of a defconfig, it
derives the defconfig name and interprets the options after the yaml as
pytest options, so use of getopt would break that.

Cheers,
Ahmad

> 
> Sascha
> 
>>
>> Co-Authored-By: Claude Opus 4.6 <noreply@anthropic.com>
>> Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
>> ---
>>  MAKEALL | 9 +++++++++
>>  1 file changed, 9 insertions(+)
>>
>> diff --git a/MAKEALL b/MAKEALL
>> index c36aed625820..dd0b7f8003cc 100755
>> --- a/MAKEALL
>> +++ b/MAKEALL
>> @@ -440,6 +440,15 @@ else
>>  
>>  		configs+=($i)
>>  	done
>> +	if [ ${#pytest_opts[@]} -gt 0 ]; then
>> +		for i in "${configs[@]}"; do
>> +			if ! [[ $i =~ .yaml$ ]]; then
>> +				echo "error: unexpected arguments after defconfig: ${pytest_opts[*]}" >&2
>> +				echo "hint: place all options before the defconfig argument" >&2
>> +				exit 1
>> +			fi
>> +		done
>> +	fi
>>  	for i in "${configs[@]}"; do
>>  		config=$i
>>  		if [[ $i =~ ^.*/([^/]+)/([^@]*@|)([^.]+).yaml$ ]]; then
>> -- 
>> 2.47.3
>>
>>
>>
> 



