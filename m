Delivery-date: Fri, 26 May 2023 10:21:08 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q2ShC-00EoF2-2c
	for lore@lore.pengutronix.de; Fri, 26 May 2023 10:21:08 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q2Sh9-0005JL-Co
	for lore@pengutronix.de; Fri, 26 May 2023 10:21:08 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+vDZMWajaDH+0NlL4zOurybbsOToUQtkL28vDmv5djk=; b=CKaHIZj1WqxI5zgDAfDPY66dkG
	OwYbSsM0Q2/n/Vbt9HfufMxhx1ih//v6psNqSg/CF2FpDKjuUoDTzyDtGkQnS0neXjfe13B671EX3
	Rqc/grmZ3VFpz9xIYsdnDwKPCMTKeEBN7uIYI/RWtQll4ieZrnRY40lsISRDoIQuHGPBH4fmeQBHA
	7J9VpfC6OfnZWkvT1zoGiN/0F0YJSOHUnQ/BOqTFsJ5VArsFHzk45N8VPW6zmZoWaKkjNut/W4PLJ
	B7dV10pIfVpVF+oX4qgweDbPYv1TuLNMqdNe5XGsXR7iReZUn6WlYCN85Id9oHO0RiCe40swPq0aw
	cHJSF/iQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q2Sg9-001aFh-3D;
	Fri, 26 May 2023 08:20:05 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q2Sg5-001aEC-2J
	for barebox@lists.infradead.org;
	Fri, 26 May 2023 08:20:03 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <j.zink@pengutronix.de>)
	id 1q2Sg0-0004jA-Et; Fri, 26 May 2023 10:19:56 +0200
Message-ID: <338a5c29-cd1a-98e1-42d9-3829ef5946ba@pengutronix.de>
Date: Fri, 26 May 2023 10:19:53 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US, de-DE
To: Ahmad Fatoum <a.fatoum@pengutronix.de>, barebox@lists.infradead.org
Cc: patchwork-jzi@pengutronix.de, kernel@pengutronix.de, ahmad@a3f.at,
 afa@pengutronix.de
References: <20230526070847.52738-1-j.zink@pengutronix.de>
 <31d9b6dc-096a-33b5-279e-e2b05363fdba@pengutronix.de>
From: Johannes Zink <j.zink@pengutronix.de>
In-Reply-To: <31d9b6dc-096a-33b5-279e-e2b05363fdba@pengutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230526_012001_754364_2D2730E1 
X-CRM114-Status: GOOD (  25.73  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] fixup! imx-usb-loader: add commandline option for
 displaying version number
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Ahmad,

On 5/26/23 09:50, Ahmad Fatoum wrote:
> On 26.05.23 09:08, Johannes Zink wrote:
>> As Ahmad pointed out in [1], compilation failed if the prepare make
>> target was not called before compiling the imx-usb-loader, which caused
>> the generated file not to exist when building for the sandbox target and
>> broke the build.
> 
> This needs to be v2 as patch is in master.

I see. I will send a v2 then, including some more fixes.

> 
>>
>> As the included utsrelease file only contains a UTS_RELEASE macro
>> generated from the KERNELVERSION make variable: use the variable
>> directly and pass it via HOSTCFLAGS as a define.
> 
> I think you lose dependency tracking this way. If you update e.g. EXTRAVERSION
> (like umpf does) and imx-usb-loader was already built, it won't be rebuilt
> to report the new version.

ack, good catch. Will send a new version fixing this, the data is 
available anyway, so let's use it. Do you prefer handing all substrings 
down to the C file piece-by-piece or should I assemble the entire 
version string in the makefile and hand it down as one piece?

> 
>> Leave the remaining
>> code untouched to still support compiling the imx-usb-loader from an
>> external makefile which does not define the UTS_RELEASE macro.
>>
>> while at it: also propagate the version number to the target imx-usb-loader.
> 
> Good catch.
> 
>>
>> Fixes: c1b50061f4b3 ("imx-usb-loader: add commandline option for
>> displaying version number")
>>
>> [1] 20230525181320.2277320-1-ahmad@a3f.at
> 
> You can like it via lore.barebox.org to make lookup easier.

Ack, will fix this in v2.

Johannes

> 
>>
>> Signed-off-by: Johannes Zink <j.zink@pengutronix.de>
>> ---
>>   scripts/imx/Makefile | 4 ++--
>>   1 file changed, 2 insertions(+), 2 deletions(-)
>>
>> diff --git a/scripts/imx/Makefile b/scripts/imx/Makefile
>> index b3be3886d8eb..dca6be2fe1f4 100644
>> --- a/scripts/imx/Makefile
>> +++ b/scripts/imx/Makefile
>> @@ -3,10 +3,10 @@
>>   hostprogs-always-$(CONFIG_ARCH_IMX_IMXIMAGE)	+= imx-image
>>   hostprogs-always-$(CONFIG_ARCH_IMX_USBLOADER)	+= imx-usb-loader
>>   
>> -HOSTCFLAGS_imx-usb-loader.o = `pkg-config --cflags libusb-1.0` -include $(objtree)/include/generated/utsrelease.h
>> +HOSTCFLAGS_imx-usb-loader.o = `pkg-config --cflags libusb-1.0` -DUTS_RELEASE='"$(KERNELVERSION)"'
>>   HOSTLDLIBS_imx-usb-loader  = `pkg-config --libs libusb-1.0`
>>   
>> -imx-usb-loader-target-userccflags += `$(CROSS_PKG_CONFIG) --cflags libusb-1.0`
>> +imx-usb-loader-target-userccflags += `$(CROSS_PKG_CONFIG) --cflags libusb-1.0` -DUTS_RELEASE='"$(KERNELVERSION)"'
>>   imx-usb-loader-target-userldlibs += `$(CROSS_PKG_CONFIG) --libs libusb-1.0`
>>   
>>   HOSTCFLAGS_imx.o = -I$(srctree)/include/mach
> 

-- 
Pengutronix e.K.                | Johannes Zink                  |
Steuerwalder Str. 21            | https://www.pengutronix.de/    |
31137 Hildesheim, Germany       | Phone: +49-5121-206917-0       |
Amtsgericht Hildesheim, HRA 2686| Fax:   +49-5121-206917-5555    |



