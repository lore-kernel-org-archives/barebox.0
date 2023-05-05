Delivery-date: Fri, 05 May 2023 10:08:25 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1puqUM-005fRX-AB
	for lore@lore.pengutronix.de; Fri, 05 May 2023 10:08:25 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1puqUK-0005m5-8x
	for lore@pengutronix.de; Fri, 05 May 2023 10:08:24 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=CaJ9Kv6kHcfHfAOFCEi2nSJLyI/3Nsr9fWnnGwgnJ+c=; b=lZKS2wLcRBV6R7oOaaSt26TJq5
	1Kna8bSTOufHcxAylxZyqml+PemoPhkwzU1+KyOnoz6d+iiQV/1/JCmz2NkpjFhHIJ6iSEcaqgltN
	SjkKShlikSuSCurxUd1hC5lHehtezAwDMsrN1m09CuLGwEHNSYAaaPE2MhzmokUcFpNUPy24hHfeI
	zEqjgiegNsX6F4mRYWTmgdMx6W3eRkVSagB3h1Ne1GoxLpDeZ+R/dyMF9PKrii2SfgfgK0e9XULkV
	8I6hJdNX0e9exHoia9ds3vbwx6ubvKxR5oJrqMAp/SFZf+4TRoKE9BKOL9HRaP9A7v8Hn/akpYE1H
	4ABJa8yQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1puqTH-009zGM-2U;
	Fri, 05 May 2023 08:07:19 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1puqTF-009zFu-0E
	for barebox@lists.infradead.org;
	Fri, 05 May 2023 08:07:18 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <j.zink@pengutronix.de>)
	id 1puqTC-0005fy-07; Fri, 05 May 2023 10:07:14 +0200
Message-ID: <b4402d4d-eebc-f91d-5cd4-f11df763615c@pengutronix.de>
Date: Fri, 5 May 2023 10:07:13 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Content-Language: en-US, de-DE
To: Ahmad Fatoum <a.fatoum@pengutronix.de>, barebox@lists.infradead.org
Cc: kernel@pengutronix.de, patchwork-jzi@pengutronix.de
References: <20230505075308.1015157-1-j.zink@pengutronix.de>
 <20230505075308.1015157-2-j.zink@pengutronix.de>
 <32e5a633-8921-0d69-0a1e-03efa8162493@pengutronix.de>
From: Johannes Zink <j.zink@pengutronix.de>
In-Reply-To: <32e5a633-8921-0d69-0a1e-03efa8162493@pengutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230505_010717_111170_321FF010 
X-CRM114-Status: GOOD (  19.55  )
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
X-Spam-Status: No, score=-7.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v1 1/3] imx-usb-loader: error with success when displaying
 help on purpose
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Ahmad,

thank you for your review.

On 5/5/23 09:56, Ahmad Fatoum wrote:
> On 05.05.23 09:53, Johannes Zink wrote:
>> Previously, whenever the usage was displayed, the imx-usb-loader exited
>> with error code.
>>
>> When the usage is displayed due to invalid tool invocation, returning an
>> error code is valid behaviour, but when displaying the usage with the -h
>> command line option, success should be returned.
>>
>> Signed-off-by: Johannes Zink <j.zink@pengutronix.de>
> 
> Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> 
> The diff doesn't show that the other usage() callsite has an exit(1)
> following it. Please note such things in the commit message in the
> future.

Ack, gonna add it in v2. Also, I will fix the subject line to "...exit 
with success..." instead of "...error with success...".

Johannes

> 
>> ---
>>   scripts/imx/imx-usb-loader.c | 2 +-
>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/scripts/imx/imx-usb-loader.c b/scripts/imx/imx-usb-loader.c
>> index 41d57906c752..17b83b611765 100644
>> --- a/scripts/imx/imx-usb-loader.c
>> +++ b/scripts/imx/imx-usb-loader.c
>> @@ -1527,7 +1527,6 @@ static void usage(const char *prgname)
>>   		"-s           skip DCD included in image\n"
>>   		"-v           verbose (give multiple times to increase)\n"
>>   		"-h           this help\n", prgname);
>> -	exit(1);
>>   }
>>   
>>   int main(int argc, char *argv[])
>> @@ -1558,6 +1557,7 @@ int main(int argc, char *argv[])
>>   			break;
>>   		case 'h':
>>   			usage(argv[0]);
>> +			exit(0);
>>   		case 'd':
>>   			devtype = optarg;
>>   			break;
> 

-- 
Pengutronix e.K.                | Johannes Zink                  |
Steuerwalder Str. 21            | https://www.pengutronix.de/    |
31137 Hildesheim, Germany       | Phone: +49-5121-206917-0       |
Amtsgericht Hildesheim, HRA 2686| Fax:   +49-5121-206917-5555    |



