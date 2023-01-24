Delivery-date: Tue, 24 Jan 2023 13:09:23 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pKI7A-000S2v-S7
	for lore@lore.pengutronix.de; Tue, 24 Jan 2023 13:09:23 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pKI78-0008AK-3W
	for lore@pengutronix.de; Tue, 24 Jan 2023 13:09:22 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=CXP08nRvBs4E4tBHXZR/qoA4ntpzDU+sTu0qS88Ylho=; b=tZm4FK6djoiNBVYp7Fa14+FIM2
	FPd0G/cZAt0SuhjMLYS1g30KELos8z5isuPJ7D8ndpAGliG4X6yrWialhJiVDQqk9kbuL6wzO7Ak9
	8uXBBxJR4c86eUGy9PSIoQ1oz4n1b9KXeZEvR8k2N344wyQl8WwjgsdJRSeqdkq4mEjpy2vrOy/LO
	g3Bn5RGIz8bKdSQRYDPUaNr6PU7JrqkQAw1oWXJCNi+0NwRxrVdv3YLZ+OX5onEP84PEnkQYzWbEx
	ZPf10uWGXIqRL0tVcdquOz44xbgHspRVqZGBnEHVUfiqEg+VWxJWlMLvh31gIapOJpwhX4YGsAK7/
	E/QHgEAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKI5t-003eNR-CN; Tue, 24 Jan 2023 12:08:05 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKI5l-003eLh-KU
	for barebox@lists.infradead.org; Tue, 24 Jan 2023 12:07:59 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1pKI5k-0007u3-4w; Tue, 24 Jan 2023 13:07:56 +0100
Message-ID: <ffc4d382-52fe-3472-6d1e-3762ba95417c@pengutronix.de>
Date: Tue, 24 Jan 2023 13:07:55 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Content-Language: en-US
To: John Watts <contact@jookia.org>
Cc: barebox@lists.infradead.org
References: <20230123201817.1084728-1-contact@jookia.org>
 <20230123201817.1084728-2-contact@jookia.org>
 <eb9bd043-b6ee-4338-ac56-4f7836cecd04@pengutronix.de>
 <Y8/IqyxBWfHDdri5@novena-choice-citizen>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <Y8/IqyxBWfHDdri5@novena-choice-citizen>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230124_040757_709068_4F4E8F6F 
X-CRM114-Status: GOOD (  20.49  )
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
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,URIBL_BLOCKED autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 2/2] imx6-mmdc: Revert calibration configuration on
 failure
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 24.01.23 13:01, John Watts wrote:
> On Tue, Jan 24, 2023 at 09:29:02AM +0100, Ahmad Fatoum wrote:
>>>  int mmdc_do_write_level_calibration(void)
>>>  {
>>> +	u32 ldectrl[4] = {0};
>>
>> Initial value never read back.
>>
> 
> Remove the = {0}?

Ye.

> 
>>>  	/* check for any errors on both PHYs */
>>> -	if (wlcalib_failed(P0_IPS) || wlcalib_failed(P1_IPS))
>>> +	if (wlcalib_failed(P0_IPS) || wlcalib_failed(P1_IPS)) {
>>> +		pr_debug("Calibration failed, rolling back calibration data\n");
>>
>> Still you only restore P0 calibration data, even if it succeeded,
>> but P1 failed. Is this intended?
> 
> Not quite sure what you mean. I restore both P0 and P1 calibration data I
> think?

Was a bit too early for me. I overlooked this somwhow.

> 
> If you're asking whether it is correct behaviour to REVERT all calibration
> data, instead of for each channel, I'm not sure. It seems like the safest
> thing to do to me since it's unclear why the calibration process has failed.
> 
> This is the behaviour U-Boot does and seems to work in the wild.

Sorry for the noise,
Ahmad

> 
> John.
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



