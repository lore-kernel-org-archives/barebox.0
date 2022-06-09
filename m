Delivery-date: Thu, 09 Jun 2022 14:16:17 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nzH5F-008jgN-OW
	for lore@lore.pengutronix.de; Thu, 09 Jun 2022 14:16:17 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nzH5E-0003JG-C8
	for lore@pengutronix.de; Thu, 09 Jun 2022 14:16:17 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=73E3nKjUFKr45naOvecN8rzJcHA04QGJeMRWvgM3Zlo=; b=Ow5p+AZ+lc3C8z
	oWSg/iWdAT6Es+H5HwfMbDXhG8sGHTF20lEQaXB4VwZexwyG1v/IVTA4IIpSwoP6rB3vtkx51U4Rl
	PrOuriwz5sesIH2whdK6wljZfb2Ir7/CkfPAuapQJYSzR9V8qdZCEd1GK+sLFMzHtsWShx9ftB9Yd
	s3mJ1fpUVBPZxFKFDM8QIw2dhfNzTnMDhtntdOBUXsdxhFk1j2FMv0RgoFl/6vrfXhoyErIRb07e0
	fF2INRpnmr6AJc46SNDulrIQjBOZEY467yGeV+vaXQ7B41YY2zlV2YJR8V3KYpUxkvIaiud2Y+NtG
	+JkKhlYxWWLNC3zEPhnw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzH3b-001dcS-Qd; Thu, 09 Jun 2022 12:14:36 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzGsE-001Yhd-CV
	for barebox@lists.infradead.org; Thu, 09 Jun 2022 12:02:52 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1nzGsC-0000oY-8F; Thu, 09 Jun 2022 14:02:48 +0200
Message-ID: <daabc46c-604b-fb49-3ad0-d0fd20def0ff@pengutronix.de>
Date: Thu, 9 Jun 2022 14:02:47 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Content-Language: en-US
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20220609111703.2446899-1-a.fatoum@pengutronix.de>
 <20220609111703.2446899-2-a.fatoum@pengutronix.de>
 <20220609114001.GR1615@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20220609114001.GR1615@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220609_050250_493038_DC699AFB 
X-CRM114-Status: GOOD (  28.24  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v2 2/2] fastboot: inform user if barebox update falls back
 to raw copy
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 09.06.22 13:40, Sascha Hauer wrote:
> On Thu, Jun 09, 2022 at 01:17:03PM +0200, Ahmad Fatoum wrote:
>> Fastboot will fall back to a raw copy even for bbu- partitions if
>> no barebox_update was found or if support isn't compiled in.
>>
>> Coupled with eMMC boot partitions, this could lead to
>> `barebox_update -t mmc` updating the boot partition, while a
>> `fastboot flash bbu-mmc` will write the image to the user area instead.
> 
> Have you seen this happen?

Without patch 1/2 applied, this happened to me, yes, because
I failed to add the new filetype to filetype_is_barebox_image.

>> It's worth telling the user when this happens, so add a status message.
> 
> when a eMMC boot partition is registered for barebox update then the
> update should really go there. When it goes into the user area instead
> it's a bug. We shouldn't issue a warning then but deny the update and
> fix the underlying bug.

There's no generic flag to detect this. The device file is the same
for both eMMC boot and user handlers, but it depends on the barebox_update
handler what's done with it.

Cheers,
Ahmad
 
> Sascha
> 
>>
>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>> ---
>> v1 -> v2:
>>   - print message in case barebox_update handler is not found
>> ---
>>  common/fastboot.c | 8 +++++++-
>>  1 file changed, 7 insertions(+), 1 deletion(-)
>>
>> diff --git a/common/fastboot.c b/common/fastboot.c
>> index 330a06f5a32f..24eddf1cc3a5 100644
>> --- a/common/fastboot.c
>> +++ b/common/fastboot.c
>> @@ -683,8 +683,14 @@ static void cb_flash(struct fastboot *fb, const char *cmd)
>>  		};
>>  
>>  		handler = bbu_find_handler_by_device(data.devicefile);
>> -		if (!handler)
>> +		if (!handler) {
>> +			fastboot_tx_print(fb, FASTBOOT_MSG_INFO,
>> +					  "No suitable barebox_update handler found");
>> +			fastboot_tx_print(fb, FASTBOOT_MSG_INFO,
>> +					  "Falling back to raw copy to %s", filename);
>> +
>>  			goto copy;
>> +		}
>>  
>>  		fastboot_tx_print(fb, FASTBOOT_MSG_INFO,
>>  				  "This is a barebox image...");
>> -- 
>> 2.30.2
>>
>>
>> _______________________________________________
>> barebox mailing list
>> barebox@lists.infradead.org
>> http://lists.infradead.org/mailman/listinfo/barebox
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

