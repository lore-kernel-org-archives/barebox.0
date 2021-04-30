Delivery-date: Fri, 30 Apr 2021 13:54:57 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lcRjV-0004qU-FT
	for lore@lore.pengutronix.de; Fri, 30 Apr 2021 13:54:57 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lcRjU-0004Kp-PA
	for lore@pengutronix.de; Fri, 30 Apr 2021 13:54:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=BO0Jfq6SwWFwbxNEcW+ZsSER8NdtVZOzX3juKurCIfI=; b=a1PnBK7v1xj2ZIDgciUtWm/Oz
	YTIvHZKmzS4EM4A+JkasPmhgtNRwfTIjXABrlQohbWq7OiSfTkkNoZ2Qe8et1uFCKaMOtciGNGELN
	RHEWd6WOzD1QSGuoQVnBTHCmUDAEt4T0P8Y2+PuLXW51unx12Dv7jJNWH9/LqGCMXx+/24UoYvLSw
	sq7so7UnxLA16AIrFFIdCpI4MoV6YhcCJYOBLQe/lWffnQ1bkECjomUhX3Z9ewlJz/13Rlx7ezBvy
	3dQfAB/eZSADaDhG+oh5RJDRe4Ljr8l9wa676ZueREVM/Pw3viSfsiu9Njpmls5JXOv2TV4MzoHCx
	8ZuJPKxxA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lcRiP-007lGb-Ij; Fri, 30 Apr 2021 11:53:49 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lcRiG-007lGA-O0
 for barebox@desiato.infradead.org; Fri, 30 Apr 2021 11:53:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:
 Subject:Sender:Reply-To:Cc:Content-ID:Content-Description;
 bh=mna1p1W2d4QY12MkwGQF3hkqnYEN154m9+2+YtrBCwc=; b=A4emvsqO0pg1aNnMbYitqAJFIf
 leWt1zeUId5YVamPXRCPDeH8ZqYEm7D5Hnb/uvMqEinZ9KiOTJMtc5Yet9iRLP6a/rFw9jF0HSMPA
 +zI997fmRP2flxkLxZzSHhen80ChHSOAWpKlUvQTdz8oMGLiL6ARknUAnaFWz+r47zEQX7Dq8Flo5
 swxHRTA15pZPSbUcOcvMYzRzQuT1LQKf2Y9U+2yLhz/6vhyw5++KkID4kV999CZ8Hjlh0qjycdXwy
 Z6djOnhHp49WKUBsWerxltMopLqiBT6LiIeVQCh8fpT7A1goprILMkrFOGjyT36y2mm9vSurdK0cs
 yNK6mMew==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lcRiE-001LL2-3y
 for barebox@lists.infradead.org; Fri, 30 Apr 2021 11:53:39 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <bst@pengutronix.de>)
 id 1lcRiB-0004HN-EG; Fri, 30 Apr 2021 13:53:35 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>, barebox@lists.infradead.org
References: <20210430091930.30187-1-bst@pengutronix.de>
 <20210430091930.30187-2-bst@pengutronix.de>
 <fbfe039a-d803-e0eb-8ea2-91229a6541e1@pengutronix.de>
From: Bastian Krause <bst@pengutronix.de>
Message-ID: <1a0b3e31-6606-44a9-a66c-0b94a556fba4@pengutronix.de>
Date: Fri, 30 Apr 2021 13:53:35 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.9.0
MIME-Version: 1.0
In-Reply-To: <fbfe039a-d803-e0eb-8ea2-91229a6541e1@pengutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210430_045338_189104_213B65C8 
X-CRM114-Status: GOOD (  20.48  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 2/2] scripts: imx-usb-loader: print USB VID/PID of
 excluded devices
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 4/30/21 11:47 AM, Ahmad Fatoum wrote:
> 
> On 30.04.21 11:19, Bastian Krause wrote:
>> On hosts with multiple USB devices connected, multiple "excluded by
>> device path option" messages can be observed. Add the USB VID/PID to
>> these messages to give them some additional value.
>>
>> Signed-off-by: Bastian Krause <bst@pengutronix.de>
>> ---
>>  scripts/imx/imx-usb-loader.c | 11 +++++++++--
>>  1 file changed, 9 insertions(+), 2 deletions(-)
>>
>> diff --git a/scripts/imx/imx-usb-loader.c b/scripts/imx/imx-usb-loader.c
>> index 6f9104e816..765ba61310 100644
>> --- a/scripts/imx/imx-usb-loader.c
>> +++ b/scripts/imx/imx-usb-loader.c
>> @@ -312,10 +312,17 @@ static int device_location_equal(libusb_device *device, const char *location)
>>  	};
>>  
>>  	/* walked the full path, all elements match */
>> -	if (path_step == path_len)
>> +	if (path_step == path_len) {
>>  		result = 1;
>> -	else if (verbose)
>> +	} else if (verbose) {
>> +		struct libusb_device_descriptor desc;
>> +
>> +		if (!libusb_get_device_descriptor(device, &desc));
>> +			fprintf(stderr, "USB device [%04x:%04x]",
>> +				desc.idVendor, desc.idProduct);
>> +
>>  		fprintf(stderr, " excluded by device path option\n");
> 
> find_imx_dev already does libusb_get_device_descriptor(), so you could
> pass along the desc and print it here instead of asking for it again?

Sure, will send a v2.

Bastian

> 
>> +	}
>>  
>>  done:
>>  	free(loc);
>>
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

