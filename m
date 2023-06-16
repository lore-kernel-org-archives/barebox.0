Delivery-date: Fri, 16 Jun 2023 14:03:36 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qA8Az-008zJB-ML
	for lore@lore.pengutronix.de; Fri, 16 Jun 2023 14:03:36 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qA8Ax-0001Vb-9U
	for lore@pengutronix.de; Fri, 16 Jun 2023 14:03:35 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=8Ojanmn9oocORZ1WEIxPS4DdOxjWNzTHm1gFgQq4k5w=; b=gLqYo181E7/G3ZTiiayPh5ovdm
	Ldpdt+X/g+vluclGraciI9koY4UFup+2fLe8WcpgiPSgr7ipG3D9cFToHRIQm+1UMdY+i1HL6Huom
	c9HAUoiYTilAbkx7ZvyKRyJDsfFqACGPBjFso2WZHaU/WAZ6OzASYQ8Be0gjKyJazAOCBh6C4bJUM
	dTgg9Vnt7YIbR5qFPLTVdIRkc77kXt5CTci26Qm/gkzU3jFih+haF0fzpdHr2ryKDyr+sewpsAYaY
	+UoKklkkeAqgFN50oLey8UvdXLLcRa8Y1im/jUhCpFkHqCCVjgWX7iI0sEI3uF9B3RyXqUSQ6ZegJ
	NpXv7Kiw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qA89g-000V1Z-0x;
	Fri, 16 Jun 2023 12:02:16 +0000
Received: from smtp91.iad3b.emailsrvr.com ([146.20.161.91])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qA89d-000V12-1k
	for barebox@lists.infradead.org;
	Fri, 16 Jun 2023 12:02:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mev.co.uk;
	s=20221208-6x11dpa4; t=1686916931;
	bh=2uxjFH9cTvW+bR3471AuThk7Moz/LioT89d53i3mQfo=;
	h=Date:Subject:To:From:From;
	b=tYqcHOm5TwcaZvhWDldSovGsY/RlZEB4YccNhPq2wMDK8Epkft63dl+75Fd6TNH7n
	 kp/tn/4iCB5BHBbsvooCPXWnLN8FZAOu6azTxYe0p8RslFPPO68P816h39Xc0qMUaK
	 RVBnfnWJgAj6gwEVQWKkehWKRXeriREE2F4U1p4w=
X-Auth-ID: abbotti@mev.co.uk
Received: by smtp4.relay.iad3b.emailsrvr.com (Authenticated sender: abbotti-AT-mev.co.uk) with ESMTPSA id EA29E200D9;
	Fri, 16 Jun 2023 08:02:10 -0400 (EDT)
Message-ID: <86b0308b-2cb5-a2ee-4776-43d30231d2d0@mev.co.uk>
Date: Fri, 16 Jun 2023 13:02:10 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20230615135526.30878-1-abbotti@mev.co.uk>
 <20230615155738.39998-1-abbotti@mev.co.uk>
 <20230616064158.GH18491@pengutronix.de>
 <6fea1e1e-9995-8319-90e5-397781f26893@mev.co.uk>
 <20230616103054.GI18491@pengutronix.de>
Content-Language: en-GB
From: Ian Abbott <abbotti@mev.co.uk>
Organization: MEV Ltd.
In-Reply-To: <20230616103054.GI18491@pengutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Classification-ID: d1d4cf48-d8bf-4cda-953f-5fe108888b10-1-1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230616_050213_836521_94C972C1 
X-CRM114-Status: GOOD (  19.10  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v2] scripts: socfpga_import_preloader: Translate DOS line
 endings
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Sascha,

On 16/06/2023 11:30, Sascha Hauer wrote:
> On Fri, Jun 16, 2023 at 10:19:38AM +0100, Ian Abbott wrote:
>> On 16/06/2023 07:41, Sascha Hauer wrote:
>>> Hi Ian,
>>>
>>> On Thu, Jun 15, 2023 at 04:57:38PM +0100, Ian Abbott wrote:
>>>> If the handoff files were generated on a Windows system, they will have
>>>> DOS line endings.  The `indent` program (with the options used by the
>>>> script) does a lousy job tidying up those files, leaving ASCII CR
>>>> characters embedded in the lines.  This is particularly bad for array
>>>> initializers that have one value per line, because they all end up on a
>>>> single line with embedded ASCII CR characters between each value.
>>>>
>>>> Add an initial `sed` command to `copy_source()` to match and remove an
>>>> ASCII CR character from the end of each input line.
>>>>
>>>> Also output a message before running `unifdef` and fix the spelling of
>>>> "paths" in one of the other messages.
>>>>
>>>> Signed-off-by: Ian Abbott <abbotti@mev.co.uk>
>>>> ---
>>>> v2: Corrected tabs in echoed output.
>>>> ---
>>>>    scripts/socfpga_import_preloader | 6 +++++-
>>>>    1 file changed, 5 insertions(+), 1 deletion(-)
>>>>
>>>> diff --git a/scripts/socfpga_import_preloader b/scripts/socfpga_import_preloader
>>>> index bd54e1b913..26a8556b1a 100755
>>>> --- a/scripts/socfpga_import_preloader
>>>> +++ b/scripts/socfpga_import_preloader
>>>> @@ -79,6 +79,10 @@ copy_source() {
>>>>    	cp $src $tgt
>>>> +	echo "	Translating DOS line endings..."
>>>> +	sed -i "s/`echo -e '\r'`$//" $tgt
>>>
>>> Why `echo -e '\r'` here? A plain \r should work as well.
>>
>> A plain \r doesn't work, but \\\r works. I prefer '\r'.
> 
> Strange, would be interesting to know where the difference is.
> Here both of these commands have behave the same:
> 
> echo hallo | unix2dos | sed "s/`echo -e '\r'`$//" | hexdump -C
> echo hallo | unix2dos | sed "s/\r$//" | hexdump -C
> 
> They both result in:
> 
> 00000000  68 61 6c 6c 6f 0a                                 |hallo.|
> 00000006

Sorry, I misinterpreted what you wrote. I thought you meant replace 
'\r'` with \r, rather than replace `echo -e '\r'` with \r.

I've never seen \r in a sed regular expression before. It seems to be a 
GNU sed extension. POSIX only supports \\ and \n.

-- 
-=( Ian Abbott <abbotti@mev.co.uk> || MEV Ltd. is a company  )=-
-=( registered in England & Wales.  Regd. number: 02862268.  )=-
-=( Regd. addr.: S11 & 12 Building 67, Europa Business Park, )=-
-=( Bird Hall Lane, STOCKPORT, SK3 0XA, UK. || www.mev.co.uk )=-



