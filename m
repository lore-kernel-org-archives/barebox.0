Delivery-date: Tue, 30 Nov 2021 14:54:17 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ms3aL-0003Xn-7p
	for lore@lore.pengutronix.de; Tue, 30 Nov 2021 14:54:17 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ms3aK-0002uR-7J
	for lore@pengutronix.de; Tue, 30 Nov 2021 14:54:17 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:Cc:To:Subject:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=vBEbwiVGZpeIvrYrXpp5m/EkVfXdO8FhrZJxYk6s/vo=; b=ezMNa8HDB67jKorejZRDJbWR2i
	5j0JNpR/qByAcoRQHvgFjiiI/bGfKkUYGTs4Kl71bfJANRSjRySx9avOnRcXNQmLwmyNFBAsqBOp5
	C7rFKJly4bmyMLH7eVFViHNV8hlkONiO9x8Rm3NvFy6w72Fz4brOD6BKBdtdJFNkOpqRtZDBZilLu
	rsHz7JssDyW0MnmtfU1JdVQ7BXAe8JPOsxZiOZRohv4oP8Nr9K+9eu9PxNukxIBLT8zqaYNd447Dg
	OXSA5zjBOR3zcmKXTpi0oh1/vmx+ab3xAGrqjvzLZ+6fzLZc41Jdi64fKMVEnoAJVXCxbrViZz2AF
	1u29snxw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ms3Yk-005QYy-Si; Tue, 30 Nov 2021 13:52:38 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ms3Yf-005QY2-8O
 for barebox@lists.infradead.org; Tue, 30 Nov 2021 13:52:34 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1ms3Yc-0002nZ-Hr; Tue, 30 Nov 2021 14:52:30 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20211125161042.3829996-1-a.fatoum@pengutronix.de>
 <20211125161042.3829996-3-a.fatoum@pengutronix.de>
 <20211130104748.GV28260@pengutronix.de>
Message-ID: <2281e96d-43b0-35b6-00fa-0bd75829c2de@pengutronix.de>
Date: Tue, 30 Nov 2021 14:52:30 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <20211130104748.GV28260@pengutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211130_055233_336153_2E41A264 
X-CRM114-Status: GOOD (  18.85  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-6.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,URIBL_BLOCKED autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 2/7] state: make first boot less verbose
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Sascha,

On 30.11.21 11:47, Sascha Hauer wrote:
> On Thu, Nov 25, 2021 at 05:10:37PM +0100, Ahmad Fatoum wrote:
>> First boot with uninitialized state is needlessly verbose:
>>
>>   state: New state registered 'state'
>>   state: Detected old on-storage format
>>   ERROR: state: Error, invalid header crc in raw format, calculated 0x7bd5c66f, found 0x00000000
>>   state: Ignoring broken bucket 0@0x00000000...
>>   state: Detected old on-storage format
>>   ERROR: state: Error, invalid header crc in raw format, calculated 0x7bd5c66f, found 0x00000000
>>   state: Ignoring broken bucket 1@0x00040000...
>>   state: Detected old on-storage format
>>   ERROR: state: Error, invalid header crc in raw format, calculated 0x7bd5c66f, found 0x00000000
>>   state: Ignoring broken bucket 2@0x00080000...
>>   ERROR: state: Failed to find any valid state copy in any bucket
>>   ERROR: state: Failed to read state with format raw, -2
>>
>> This has confused barebox-state novices more than once. Let's handle
>> the zeroed state case specially and reduce output in that case, so
>> it now looks like this:
>>
>>   state: New state registered 'state'
>>   state: Detected old on-storage format
>>   state: Detected old on-storage format
>>   state: Detected old on-storage format
>>   state state.of: Fresh state detected, continuing with defaults
>>
>> This is only the output when CRC is zero (hinting at zeroed state
>> partition). If crc != zero, then output is a little more verbose than
>> before:
> 
> Should we handle crc == 0xffffffff in the same way for flash devices?

I never minded it in practice, because it's only there the very first
time. The problem is with emulated targets, where you see it every time
and sometimes from people who don't know it's expected. I've tested this
with cfi-flash and mtd-ram in QEMU and TinyEMU and there I read zeroes, so
that's what's addressed.

If you think it's worthwhile to do it for crc == ~0 as well, feel free to fix up
on apply. :-)

Cheers,
Ahmad

> 
> Sascha
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

