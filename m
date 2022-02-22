Delivery-date: Tue, 22 Feb 2022 15:16:06 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nMVxW-006t43-FY
	for lore@lore.pengutronix.de; Tue, 22 Feb 2022 15:16:06 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nMVxV-0004j5-3o
	for lore@pengutronix.de; Tue, 22 Feb 2022 15:16:05 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:MIME-Version:
	Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ibyW47Ftd+I7b6XY0DVT/OZJo+oWMyjqnAO69Eeil88=; b=lzyaHqzva/KIS+PTn4EXhvkuW0
	km3J0Ylf0QnHOrCMhCn2Qf7vlUbDgiDDEtr9E6w6w8Ak7708q7/NTD/K4gLcaDxgW6g9p8CXFRzm6
	5+gPBzmd1LvHwSdCHRhoDVONVTgr6P7tSe+5kHGGWUgT/3d1QlQHOQ9uhN0SfajxxXfuIYcOLzTNU
	T/PEXu8jSAdI6CU/sIAxEfH6L4rzBIwdOa1sAx0MsQx1hfET10zhHIsutLBGOCgT1l/15CwBMnlvJ
	qA5tt3IlNGetNZron4/uGMvXPy77pQRW0v9I1buPYLXCBeqeI9ZGpQtm42Zh5cSqpJTFdPZ3bE9CK
	JC94qf9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nMVvj-009pvL-NM; Tue, 22 Feb 2022 14:14:15 +0000
Received: from mout.gmx.net ([212.227.15.18])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nMVvd-009psQ-UA
 for barebox@lists.infradead.org; Tue, 22 Feb 2022 14:14:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1645539241;
 bh=2axwihAIY14HOCrPO2gq9xQ8dPj7Y/beVAfta05NC+M=;
 h=X-UI-Sender-Class:Date:Subject:To:References:From:In-Reply-To;
 b=EofnEbi8MpnykhtoE7qFbQJCpoyL1d564g+syRk/FM0hnpmM6aNYibcxyuMorobAT
 m85Ryaoip59qVaAjCNbUpSEJXAyCltqLAZAWQUiSqLDJzuX2pqUKNdDrhd3mv3mPrW
 LsijB4ErSVFIp2WgwswVOD+U10INrzk0JVP7OIEw=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.86.95] ([95.91.192.147]) by mail.gmx.net (mrgmx005
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1MSKyI-1np05p3At6-00SiyZ; Tue, 22
 Feb 2022 15:14:01 +0100
Message-ID: <628ee195-3c15-882e-84ca-bb5ecdd25450@rempel-privat.de>
Date: Tue, 22 Feb 2022 15:13:59 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: Ahmad Fatoum <a.fatoum@pengutronix.de>,
 Juergen Borleis <jbe@pengutronix.de>, barebox@lists.infradead.org
References: <20220222104859.44391-1-jbe@pengutronix.de>
 <20220222104859.44391-3-jbe@pengutronix.de>
 <1ef7b4b9-21e2-54ac-409e-792e3656fe0b@pengutronix.de>
From: Oleksij Rempel <linux@rempel-privat.de>
In-Reply-To: <1ef7b4b9-21e2-54ac-409e-792e3656fe0b@pengutronix.de>
X-Provags-ID: V03:K1:pzoz61tqe6gCN5QEHCmgJnkwCgM/Qk3RwtrWaVMiVLdwrWt3wvC
 +YMrGQz2OMr9JsGIIV95/NC2O0zYp3EEGUm/C3Q4uIRMaGxEG7ArtQQvXJasCPxlf2noE7p
 2JY02Dv3C4QgXThQarAbgH971Li4xmE/NAKBzHcFSlhdkohORlKROiXpuO/r5BwgtrKcf9Y
 w9F59h2P2GPM9bofpoPMw==
X-UI-Out-Filterresults: notjunk:1;V03:K0:TSiWcQ1OEkU=:+kzCf81z2rPt9A+TjHxvH5
 VEGn1f9lm9jZscH8G4KK40p36EoBlkJtJ/d8Guq1QGcx7kzKC45JP7euRev+Z/QKppNifdLKQ
 atqaOY1oyM/WrFPUQiZZrUiTgcBrzB2igvfLNX1vaWM5+564jaylc5hFykZq89TtOxKVTyvi5
 vHNN+UZAoVozW+kUnSceo5a55fIjmhe95s9wBBD3R1QHmqhWkB+1UR0I7AcBUyB+UeR1fzukB
 l5BZ2AZn9zTKVPXjjkncx6FXIIe8N9WLq0/I+ZkAz+RDBkAzaUsWEaEW4wgrZ0tiJzJwMMZzx
 T1bwY0XHgdyQ4BfPIaF2GGzXFyxyNsIArneiCrNwNlUGPEF1U6Va5pKIcwI5nWzl2U5X3jTwB
 0CWtuxcc6ayOcC3vUJaB3KH92X38l8ppzhiOFlKqIYZ9YmTjPCFFnTJvH4je1wl1hueH6DYNZ
 w7TZX9aTdj547Anw14XFKagbbiCfTdtfLdZx5CRy12y5f6eYzjOdsIn9PxVBuAD9MpRITHXz8
 0QwvspQlSw2IwdUN5U3QPifOqFMANK0elMVQs8LG1ud5Q6jd16sCtIikXBbAF6knEK+feH+P5
 fBHNuzokMH8rr9uWOnvHhtoG1H+th1pOGLloDUTAJ0EXTVP6EFLVrE2mY7S84RY6/REoDIJEU
 OP1jjjiNm/tkEbB2bKM6Tr5eRo1UUibGvymyHVJhlta99d2j4Ri1I0c4SeXXdOJJw83Ml6KUy
 4R1W4gUkiprPJjNOGMaZ8wueDyrn3Ri122VLOjm1lvavUynbEWn5rk84/GfYQ2j8cdcasdKln
 kuYBiBCswVb6e0CRgBam7jjymp8Uw/CGqU5XuVpiq/3+igjdRozs8wmAvuaEXpZC7oaOUV0mg
 +V+OgJf847bYRvvVHUj8EBPzaxL9/LM2H1KD/umz3A/LjCPB7+NeS8OyWXyO4quIjYJBJqVoN
 wJQ8kryYNjnawQOWNVcem3gL/sn3tSQsycZi9Ziok4NHEa9fkh0dkIs2sHc0Dfh4cybEJFl5J
 kIk8Uzy/VdKyhfOcYe1X5S5J5myOsRmi4pXwXkcqZBrZPW3KlRNvFmNWhs0e0GDwlffKG883M
 yvNFLdQLO85a3I=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220222_061410_357988_A4EB4371 
X-CRM114-Status: GOOD (  11.12  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 3/3] ARM: webasto-marvel: share the run-time setup with
 the ccbv2 variant
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Am 22.02.22 um 12:19 schrieb Ahmad Fatoum:
> On 22.02.22 11:48, Juergen Borleis wrote:
>> Signed-off-by: Juergen Borleis <jbe@pengutronix.de>
>> ---
>>   arch/arm/boards/webasto-ccbv2/board.c    |  6 +++++-
>>   arch/arm/boards/webasto-ccbv2/lowlevel.c | 24 ++++++++++++++++++------
>>   images/Makefile.imx                      |  2 ++
>>   3 files changed, 25 insertions(+), 7 deletions(-)
>>
>> diff --git a/arch/arm/boards/webasto-ccbv2/board.c b/arch/arm/boards/webasto-ccbv2/board.c
>> index 4777713..fd6ea6f 100644
>> --- a/arch/arm/boards/webasto-ccbv2/board.c
>> +++ b/arch/arm/boards/webasto-ccbv2/board.c
>> @@ -22,7 +22,10 @@ static int ccbv2_probe(struct device_d *dev)
>>   	imx6_bbu_internal_mmcboot_register_handler("emmc", "/dev/mmc1",
>>   			BBU_HANDLER_FLAG_DEFAULT);
>>
>> -	barebox_set_hostname("weabsto-ccbv2");
>> +	if (of_machine_is_compatible("webasto,imx6ul-marvel"))
>> +		barebox_set_hostname("webasto-marvel");
>
> Nitpick: barebox_set_hostname(device_get_match_data(dev));

If host name is not set by board code, it will be automatically generated by barebox from devicetree
compatible.

--
Regards,
Oleksij

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

