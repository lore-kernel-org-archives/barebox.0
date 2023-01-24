Delivery-date: Tue, 24 Jan 2023 13:00:21 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pKHyQ-000RnW-Kg
	for lore@lore.pengutronix.de; Tue, 24 Jan 2023 13:00:21 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pKHyO-0006eP-2G
	for lore@pengutronix.de; Tue, 24 Jan 2023 13:00:20 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qfzKPDN3p1g20woGWKzcLO88yQ5kvxIyl5nNcOQtsWI=; b=ucwltjrNX3r1Lc/AeNf7gXQIC9
	SGOhq7bU6/0JdhR+XFX732zNd2hrNq0hzkrJx5kBbzqSMu90nhxUSego2YalT4HMiCtJZ+uzxy6lx
	p23rnrtG1F0olbtvi4OYkW5XorqzVZlthSTqqxsimHiBvaPCSUYDR1s9gGXhcuzjW6GyaDgJk+rnf
	iTdTuyoS5POlLxLKzOn6X9MDmmmYsU+X6/5bM+lGGhG24STsLwDE668jp6SYcGBxYOpJtwlC5reXx
	rzJmlHOprVLV7Nmu1kbjRM6zEj6ZLT4oAmS1PljuH0VOiUZiI7LzerEZf8Ku7EpHYGmPjT6/1x86r
	5oBsPW7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKHwi-003afH-PN; Tue, 24 Jan 2023 11:58:36 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKHwd-003abj-PT
	for barebox@lists.infradead.org; Tue, 24 Jan 2023 11:58:33 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1pKHwM-0006Sx-GC; Tue, 24 Jan 2023 12:58:14 +0100
Message-ID: <d4107732-a5e6-e4f9-797b-21a9fbb3b7e0@pengutronix.de>
Date: Tue, 24 Jan 2023 12:58:13 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Content-Language: en-US
To: John Watts <contact@jookia.org>
Cc: barebox@lists.infradead.org
References: <20230123201817.1084728-1-contact@jookia.org>
 <ab972e58-2d3a-8ee3-c251-788fe5179e1d@pengutronix.de>
 <Y8/FeZWD4ce50TTx@novena-choice-citizen>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <Y8/FeZWD4ce50TTx@novena-choice-citizen>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230124_035831_853078_21238FB9 
X-CRM114-Status: GOOD (  20.62  )
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
Subject: Re: [PATCH 1/2] imx6-mmdc: Work around ERR050070
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 24.01.23 12:48, John Watts wrote:
> On Tue, Jan 24, 2023 at 09:27:42AM +0100, Ahmad Fatoum wrote:
>>> +static bool wlcalib_failed(void __iomem *ips)
>>> +{
>>> +	int i;
>>> +
>>> +	for (i = 0; i < 4; ++i) {
>>> +		if (readb(P0_IPS + MPWLHWERR + i) == 0)
>>
>> s/P0_OPS/ips/ ?
> 
> Oops, good catch! Will fix in V2.
> 
>>
>> Also does it need to be bytewise reads? If not, you could rewrite
>> as return readl(ips + MPWLHWERR) == 0;
> 
> The MPWHLHWERR register contains 4 bytes giving some status for each lane,
> that would only fail if all lanes fail which is different behaviour to
> the existing behaviour fails if any lanes fail at calibrating.

Yes. readl() would've only made sense if 0 was the success, not the
error indicator.

> 
>>
>>> +			return true;
>>
>> Write level calibration has failed when MPWLHWERR == 0 and succeeded
>> when there is some other value? That sounds odd.
> 
> It is odd, but that's what the data sheet says, the errata says and what
> and what seem. Maybe I should note it down?

Yes, a comment would be good.

> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



