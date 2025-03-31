Delivery-date: Mon, 31 Mar 2025 10:04:49 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tzA8W-006UIw-2j
	for lore@lore.pengutronix.de;
	Mon, 31 Mar 2025 10:04:48 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tzA8W-0001dV-9G
	for lore@pengutronix.de; Mon, 31 Mar 2025 10:04:48 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Uvwqh1ase/qwmhetP+1yuWQBceeP05slBMxClVbAWBc=; b=rU/aC+sg4eQQuFkn1yVL1DiEo5
	YhDRY57lmcIPNWiNkxpHpruaIWKpRKHtoyN/QpRmdZI5OOxEAH5nwflMYVQ7Ss/+qIINFfy0+yVbm
	PkUQ0u+4bgTjelTnP9K+o2SoOJsMrGMI66jmUHhq8U1hUZwu4FBPS2vQG2qHs/XH4mZbsoP0GERfA
	LYwFY2qajpCkJ5Lx9ELhsr0RU1C5gwr3K9E42jF4OCMbNdGU/dNK4IcRHHLi9RngyRjl0yc18ntol
	J5vPjPTuZlW0JIc1SNRECCkD5UYzZznK5sN+4NM9SDB/14gORDdykaFd5hYf5LpeB2I5h/VC3ab4m
	oGLhxnXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tzA7p-0000000HI6Y-2hgW;
	Mon, 31 Mar 2025 08:04:05 +0000
Received: from smtp15.bhosted.nl ([2a02:9e0:8000::26])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tzA59-0000000HHgu-0jYl
	for barebox@lists.infradead.org;
	Mon, 31 Mar 2025 08:01:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=protonic.nl; s=202111;
	h=content-transfer-encoding:content-type:in-reply-to:from:references:cc:to:
	 subject:mime-version:date:message-id:from;
	bh=Uvwqh1ase/qwmhetP+1yuWQBceeP05slBMxClVbAWBc=;
	b=espf1ACEwjxe9/wzQeun8LxNdlSPENFjUT4UGNa056w2kyOb74xbBKoaPQ8oEDNKw4Euy9qia6jsl
	 wkSo18S0C9QR87/RAuCv4P7gNiRSmNwPIkn4vWjXOrVPcQLn/tmdrt2RgEiHcPRh0P5GSSZiAj2RMs
	 fkCz3SBMj33EypxMEn6Tsd+w6ruU/CBOrdhkn6ViRKiRprOPpQtJuR6re6hDyWn5uTBSYatCFUsUGR
	 m7d7OIYBoMtq40wfIKAPL6ceJ1ehsRDqYH0UBkVkL+a/7tLg5yM785SHUB5ihB2NPu3FkwQNloXMIG
	 F/yHp2Q6WuDawgT4UT+vZ5QToG/2Xbg==
X-MSG-ID: 50616415-0e06-11f0-b160-00505681446f
Message-ID: <c2a3ca37-34d3-4fe6-883c-b4d4f3c04c7b@protonic.nl>
Date: Mon, 31 Mar 2025 10:01:12 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20250327100122.654317-1-robin@protonic.nl>
 <Z-pH9YkFy9vGiFKU@pengutronix.de>
Content-Language: en-US, nl-NL
From: Robin van der Gracht <robin@protonic.nl>
Organization: Protonic Holland
In-Reply-To: <Z-pH9YkFy9vGiFKU@pengutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250331_010119_632745_0E3A8158 
X-CRM114-Status: GOOD (  15.20  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: boards: protonic-imx6: Re-introduce generic boot
 target board string
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Sascha,

On 31-03-2025 09:44, Sascha Hauer wrote:
> Hi Robin,
>
> On Thu, Mar 27, 2025 at 11:01:22AM +0100, Robin van der Gracht wrote:
>> This allows using a single bootable usb drive for multiple boards.
>>
>> Signed-off-by: Robin van der Gracht <robin@protonic.nl>
>> ---
>>   arch/arm/boards/protonic-imx6/board.c | 2 +-
>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/arch/arm/boards/protonic-imx6/board.c b/arch/arm/boards/protonic-imx6/board.c
>> index 19e58627c6..e4debb1c66 100644
>> --- a/arch/arm/boards/protonic-imx6/board.c
>> +++ b/arch/arm/boards/protonic-imx6/board.c
>> @@ -374,7 +374,7 @@ static int prt_imx6_usb_boot(struct bootentry *entry, int verbose, int dryrun)
>>   
>>   	*second_word = 0;
>>   
>> -	if (strcmp(buf, priv->name)) {
>> +	if (strcmp(buf, priv->name) && strcmp(buf, "prti6qp")) {
> Where does this "prti6qp" string come from? It sounds like a very
> specific machine, but is used as a generic value to short circuit the
> compatible check.
>
> Shouldn't it be something like "prt,generic-imx6" or whatever else this
> image is supposed to work on?

Ack. This is something that grew like this historically. But we can 
still change
that to something more sensible. I like your suggestion and will create 
a new patch.

Thank you.

Regards,
Robin


