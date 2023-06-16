Delivery-date: Fri, 16 Jun 2023 11:21:06 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qA5dj-008sv8-B9
	for lore@lore.pengutronix.de; Fri, 16 Jun 2023 11:21:06 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qA5dg-0007XE-SC
	for lore@pengutronix.de; Fri, 16 Jun 2023 11:21:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=dfCxKtc3VeK0yid9qzITUoiDvNxcgFahhOvGBgNvrAA=; b=XNd4+gH1z19P8B9A6NykM5wxmM
	qPM4tMiVVi6bp42Jwo8GuqumWrzyvOiuTFE7r/oNxPpJnXL2FSB+sGeOHybL1UF2r/92Q+e20s+Mf
	6/Srk4bIfT4GCPZfOH2xgzt068Wb6uNVp2dTQoTvRcVvVkEeaVvwLr7Wxc+wNfKXJAd2ULkeHg0OL
	tuwGvKABjGzyZ3REQ8p8XH48aqX1pCArHcJS9wXhPBq1/XfLnQA+LcszuF2vJPevAtorGBwtyr4Mg
	jAcuFsqdBSwtNu3rdvRC7TXHmXQiQ5fjPSNVtosNfu6zVmBOIvCcKJ5VwyBc3MpQ6VCnZice+mggS
	qSjOZ4cQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qA5cP-00HRCj-37;
	Fri, 16 Jun 2023 09:19:45 +0000
Received: from smtp86.ord1d.emailsrvr.com ([184.106.54.86])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qA5cN-00HRBt-03
	for barebox@lists.infradead.org;
	Fri, 16 Jun 2023 09:19:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mev.co.uk;
	s=20221208-6x11dpa4; t=1686907179;
	bh=C422+3L+9vEKwHRn90E5puRoDHhszl9ME7FB7VOwZm8=;
	h=Date:Subject:To:From:From;
	b=tHPlvLNCNAVtd9J5i5x7vliwp4piDyME8Q1xsFuA3nXEjvm8jyDlnfk5y6+DJEi4F
	 OGxRVYjEgMpa6ksoSGPcuerb7+n/KzxO0BTOdIjK+UgKDpxCXkxIl1hXT3eeYoGaiR
	 WZljO3hMPHKwqys5TX5WNI6dj+w+Hp0A0pSk3j1o=
X-Auth-ID: abbotti@mev.co.uk
Received: by smtp19.relay.ord1d.emailsrvr.com (Authenticated sender: abbotti-AT-mev.co.uk) with ESMTPSA id C9DA7600F8;
	Fri, 16 Jun 2023 05:19:38 -0400 (EDT)
Message-ID: <6fea1e1e-9995-8319-90e5-397781f26893@mev.co.uk>
Date: Fri, 16 Jun 2023 10:19:38 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20230615135526.30878-1-abbotti@mev.co.uk>
 <20230615155738.39998-1-abbotti@mev.co.uk>
 <20230616064158.GH18491@pengutronix.de>
Content-Language: en-GB
From: Ian Abbott <abbotti@mev.co.uk>
Organization: MEV Ltd.
In-Reply-To: <20230616064158.GH18491@pengutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Classification-ID: 8049bcef-f32e-437c-a037-3a62266a58d7-1-1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230616_021943_300777_ECE7D16F 
X-CRM114-Status: GOOD (  17.68  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v2] scripts: socfpga_import_preloader: Translate DOS line
 endings
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 16/06/2023 07:41, Sascha Hauer wrote:
> Hi Ian,
> 
> On Thu, Jun 15, 2023 at 04:57:38PM +0100, Ian Abbott wrote:
>> If the handoff files were generated on a Windows system, they will have
>> DOS line endings.  The `indent` program (with the options used by the
>> script) does a lousy job tidying up those files, leaving ASCII CR
>> characters embedded in the lines.  This is particularly bad for array
>> initializers that have one value per line, because they all end up on a
>> single line with embedded ASCII CR characters between each value.
>>
>> Add an initial `sed` command to `copy_source()` to match and remove an
>> ASCII CR character from the end of each input line.
>>
>> Also output a message before running `unifdef` and fix the spelling of
>> "paths" in one of the other messages.
>>
>> Signed-off-by: Ian Abbott <abbotti@mev.co.uk>
>> ---
>> v2: Corrected tabs in echoed output.
>> ---
>>   scripts/socfpga_import_preloader | 6 +++++-
>>   1 file changed, 5 insertions(+), 1 deletion(-)
>>
>> diff --git a/scripts/socfpga_import_preloader b/scripts/socfpga_import_preloader
>> index bd54e1b913..26a8556b1a 100755
>> --- a/scripts/socfpga_import_preloader
>> +++ b/scripts/socfpga_import_preloader
>> @@ -79,6 +79,10 @@ copy_source() {
>>   
>>   	cp $src $tgt
>>   
>> +	echo "	Translating DOS line endings..."
>> +	sed -i "s/`echo -e '\r'`$//" $tgt
> 
> Why `echo -e '\r'` here? A plain \r should work as well.

A plain \r doesn't work, but \\\r works. I prefer '\r'.

-- 
-=( Ian Abbott <abbotti@mev.co.uk> || MEV Ltd. is a company  )=-
-=( registered in England & Wales.  Regd. number: 02862268.  )=-
-=( Regd. addr.: S11 & 12 Building 67, Europa Business Park, )=-
-=( Bird Hall Lane, STOCKPORT, SK3 0XA, UK. || www.mev.co.uk )=-



