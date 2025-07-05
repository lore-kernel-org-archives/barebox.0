Delivery-date: Sat, 05 Jul 2025 09:02:36 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uXwuy-00EFSg-0d
	for lore@lore.pengutronix.de;
	Sat, 05 Jul 2025 09:02:36 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uXwux-0004VK-Hr
	for lore@pengutronix.de; Sat, 05 Jul 2025 09:02:36 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:To:Subject
	:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UqqY1H1mrfnT6brjvadnKBKJDBGV9EEcD9FHY0Ayi0M=; b=r/1D6qy6rhrTta
	tXLOpo9FqygPyZDCqAr3D+J+NkOPDMzeLUeNTEjPDbnhYEnTsNmHfJh3WNMVEQ2FnjPr6uOplNB5h
	oGRd4LgmZnDYwTJ/6cf0D9QFgY1YAo3r0tNo5sKe8lNzUzrxjVP1RO1s+dE2k43wr3r1N/IbDbrOZ
	GvyS4oIxUr/v4lnnByJLLnIuxhuvBU5jRZNVxmMI0I4be5rKZlfBYaqrfdwA3P/vXBjLhOccpX6mZ
	3zmKc80MJxCT0KzJGuSs3uz/rYGNQnEPCFUc5VFCQyhrZ+XQedTv0alr1lwha3novX4RpeaUQKrR7
	9oVYjvoNmM+eR1oFvDcw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uXwuI-0000000GB6a-1qZu;
	Sat, 05 Jul 2025 07:01:54 +0000
Received: from smtp1-g21.free.fr ([2a01:e0c:1:1599::10])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uXwuE-0000000GB3u-2nGN
	for barebox@lists.infradead.org;
	Sat, 05 Jul 2025 07:01:52 +0000
Received: from [IPV6:2a01:e0a:efa:53b0:468a:5bff:fe9a:3c4d] (unknown [IPv6:2a01:e0a:efa:53b0:468a:5bff:fe9a:3c4d])
	by smtp1-g21.free.fr (Postfix) with ESMTP id EEE29B005A4;
	Sat,  5 Jul 2025 09:01:38 +0200 (CEST)
Message-ID: <1dd8b780-1150-421a-932c-081aa31ae775@trabucayre.com>
Date: Sat, 5 Jul 2025 09:01:38 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Johannes Roith <johannes@gnu-linux.rocks>,
 Ahmad Fatoum <a.fatoum@pengutronix.de>
References: <db21b526-ba6f-4714-8dca-3ed57d7bf028@trabucayre.com>
 <c4307832-408c-4508-aa7a-46a448dbfe5b@pengutronix.de>
 <aGgRkmkiFhNGq+Qg@Precision-T3610>
Content-Language: en-US
From: Gwenhael Goavec-Merou <gwenj@trabucayre.com>
In-Reply-To: <aGgRkmkiFhNGq+Qg@Precision-T3610>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250705_000150_843584_2EAAB727 
X-CRM114-Status: GOOD (  22.97  )
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
Cc: barebox@lists.infradead.org
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: MMC prepare for zynq
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,
Thanks for informations: after deleting everything but the last two lines, 
barebox starts has expected.
Now I have and error with SDCard but maybe related to lines removes or something 
similar.

Thanks!

Gwenhael

Le 04/07/2025 à 7:38 PM, Johannes Roith a écrit :
> Hi Gwenhael, hi Ahmad
> 
> Am Fri, Jul 04, 2025 at 04:56:01PM +0200 schrieb Ahmad Fatoum:
>> Hi Gwenhael,
>>
>> On 7/3/25 09:18, Gwenhael Goavec-Merou wrote:
>>> Dear all,
>>>
>>> I'm trying to uses my zedboard with barebox but can't be able to boot this.
>>>
>>> According to mails found in this mailing list I have done this sequence:
>>>
>>> export ARCH=arm
>>> export CROSS_COMPILE=$SOMEWHERE/arm-buildroot-linux-gnueabihf-
>>>
>>> make zynq_defconfig
>>> make -j$(nproc)
>>
>> That looks correct IMO.
>>
>>> And copied in the first SDCard FAT partition:
>>> - images/barebox-avnet-zedboard.img as BOOT.bin
>>> - barebox.bin
>>
>> Which binary is barebox.bin?
> 
> The first one is the correct one. Just copy the images/barebox-avnet-zedboard.img
> with the name BOOT.bin to an SD-Card whose first partition is FAT32.
>>
>>> But I have nothing displayed through serial port.
>>
>> Two things come to mind:
>>
>> - The Image is 184K. Does the Zynq enforce a maximum limit on the BOOT.BIN?
> 
> Yes, there is a limitation for the size of the First Stage Bootloader
> (FSBL) as Xilinx calls it, which is the available SRAM size in the ZYNQ
> 7000 (192 kBytes). Currently Barebox PBL and Barebox Proper are combined
> to one image (images/barebox-avnet-zedboard.img) but you will get an
> error in the build process, if your image exceeds this size.
>>
>> - Does DEBUG_LL produce any output? For details on how to configure
>> DEBUG_LL, see the troubleshooting guide I just Cc'd you on.
>>
>>> Are there somewhere details on how to prepare SD Card for a zynq board?
>>
>> I haven't done work with the Zynq 7000 so far, but Lucas and Johannes
>> did. I Cc'd them as they may be able to give some tips for troubleshooting.
> 
> I would also take a look at this message on the mailing list:
> 
> https://lore.barebox.org/barebox/DB7PR02MB43323CD77E0507E560475BCAABF00@DB7PR02MB4332.eurprd02.prod.outlook.com/
> 
> Here, the content of the file
> arch/arm/boards/avnet-zedboard/zedboard.zynqcfg caused a boot error for
> barebox. With my Digilent Cora Z7 board, I also had to modify the file
> by deleting everything but the last line, to get barebox booting. Have
> you already tried this?
> 
>>
>> Cheers,
>> Ahmad
>>
>>>
>>> Thanks
>>>
>>> Gwenhael
>>>
>>>
>>
>> -- 
>> Pengutronix e.K.                  |                             |
>> Steuerwalder Str. 21              | http://www.pengutronix.de/  |
>> 31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
>> Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |
>>
> 
> Best regards,
> Johannes



