Delivery-date: Mon, 17 Jan 2022 12:49:48 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n9QWC-004X0n-Qw
	for lore@lore.pengutronix.de; Mon, 17 Jan 2022 12:49:48 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n9QWB-0000jH-2W
	for lore@pengutronix.de; Mon, 17 Jan 2022 12:49:47 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ItIwn3XIy1VJW5VBdO/V5tR+I3SW7hfdcG5mi1tmE2s=; b=u+WzZT65zAY88RyWfgZhRxnovD
	7udx8wBqltmMWaFr/xkW6HOIjcyQHrBwp/6EH4Y1qp9pLF5WPHcBXXGX4mEkhNcQm6jLZtqed1bLl
	Q0DFDdHJBOVq06KE1kILxyKF1FXzijJvaQhbG4Bn/I4X0EQmSmzz7eGbAnCUUSnu/1m3b735nKtW4
	1X/vlEC0+85HEZr6bDp2j0F+PsGouNHvB6d//k+H5OEWRT2SphWSGCc8tO7EjPlWAuCsmMZp7fvQU
	QXJdNf/wK1P7O+78HR6+7n60HXpk59l6Deeflnu0BchaOmoQvSYCkmNoedykqLqpkuTGDkFd5CmjU
	Rgp8+ngQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n9QUy-00EhMj-Sa; Mon, 17 Jan 2022 11:48:32 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n9QUt-00EhLd-C2
 for barebox@lists.infradead.org; Mon, 17 Jan 2022 11:48:29 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1n9QUs-0000Zi-6x; Mon, 17 Jan 2022 12:48:26 +0100
To: Jules Maselbas <jmaselbas@kalray.eu>
Cc: barebox@lists.infradead.org
References: <20220110221255.5003-1-jmaselbas@kalray.eu>
 <20220110221255.5003-4-jmaselbas@kalray.eu>
 <ec782b1e-ffed-3f01-71a7-f28c161d802d@pengutronix.de>
 <20220114111404.GB29876@tellis.lin.mbt.kalray.eu>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <cbfacecf-06b8-81d1-50cc-7398fd003903@pengutronix.de>
Date: Mon, 17 Jan 2022 12:48:25 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <20220114111404.GB29876@tellis.lin.mbt.kalray.eu>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220117_034827_448021_AE4CCF7F 
X-CRM114-Status: GOOD (  24.63  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 3/5] scripts: Add qoiconv to convert png to qoi
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 14.01.22 12:14, Jules Maselbas wrote:
> On Fri, Jan 14, 2022 at 11:29:58AM +0100, Ahmad Fatoum wrote:
>> On 10.01.22 23:12, Jules Maselbas wrote:
>>> ImageMagick will eventually support the qoi image format, in the
>>> mean time add a png to qoi conversion program.
>>>
>>> Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
>>> ---
>>>  scripts/Kconfig     |    5 +
>>>  scripts/Makefile    |    1 +
>>>  scripts/qoiconv.c   |   91 +
>>>  scripts/stb_image.h | 7756 +++++++++++++++++++++++++++++++++++++++++++
>>>  4 files changed, 7853 insertions(+)
>>>  create mode 100644 scripts/qoiconv.c
>>>  create mode 100644 scripts/stb_image.h
>>>
>>> diff --git a/scripts/Kconfig b/scripts/Kconfig
>>> index 9b744deba9..747f665e02 100644
>>> --- a/scripts/Kconfig
>>> +++ b/scripts/Kconfig
>>> @@ -110,6 +110,11 @@ config RK_USB_LOADER
>>>  
>>>  	  You need libusb-1.0 to compile this tool.
>>>  
>>> +config QOICONV
>>> +	bool "QOI image format conversion" if COMPILE_HOST_TOOLS
>>> +	help
>>> +	  This enable converting png to qoi images to generate boot logo.
>>> +
>>>  endmenu
>>>  
>>>  menu "Target Tools"
>>> diff --git a/scripts/Makefile b/scripts/Makefile
>>> index dc5fa75f90..cbaf2d55ff 100644
>>> --- a/scripts/Makefile
>>> +++ b/scripts/Makefile
>>> @@ -8,6 +8,7 @@ hostprogs-always-y					+= fix_size
>>>  hostprogs-always-y					+= bareboxenv
>>>  hostprogs-always-y					+= bareboxcrc32
>>>  hostprogs-always-y					+= kernel-install
>>> +hostprogs-always-$(CONFIG_QOICONV)			+= qoiconv
>>>  hostprogs-always-$(CONFIG_CRYPTO_RSA_BUILTIN_KEYS)	+= rsatoc
>>>  HOSTCFLAGS_rsatoc = `pkg-config --cflags openssl`
>>>  HOSTLDLIBS_rsatoc = `pkg-config --libs openssl`
>>> diff --git a/scripts/qoiconv.c b/scripts/qoiconv.c
>>> new file mode 100644
>>> index 0000000000..010c70ead0
>>> --- /dev/null
>>> +++ b/scripts/qoiconv.c
>>> @@ -0,0 +1,91 @@
> Probably missing SPDX identifiers as well
> 
>>> +/*
>>> +
>>> +Command line tool to convert between png <> qoi format
>>> +
>>> +Requires "stb_image.h" and "stb_image_write.h"
>>> +Compile with: 
>>> +	gcc qoiconv.c -std=c99 -O3 -o qoiconv
>>> +
>>> +Dominic Szablewski - https://phoboslab.org
>>> +
>>> +
>>> +-- LICENSE: The MIT License(MIT)
>>> +
>>> +Copyright(c) 2021 Dominic Szablewski
>>> +
>>> +Permission is hereby granted, free of charge, to any person obtaining a copy of
>>> +this software and associated documentation files(the "Software"), to deal in
>>> +the Software without restriction, including without limitation the rights to
>>> +use, copy, modify, merge, publish, distribute, sublicense, and / or sell copies
>>> +of the Software, and to permit persons to whom the Software is furnished to do
>>> +so, subject to the following conditions :
>>> +The above copyright notice and this permission notice shall be included in all
>>> +copies or substantial portions of the Software.
>>> +THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
>>> +IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
>>> +FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.IN NO EVENT SHALL THE
>>> +AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
>>> +LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
>>> +OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
>>> +SOFTWARE.
>>> +
>>> +*/
>>
>> Can you not reuse the header added in the previous commit?
> I am not sure what you mean here, the qoi.h header is reused from
> lib/gui/qoi.h, see the include below.
> Are you sugesting to _not_ reuse the header?

All good then. I missed that.

> 
> 
>>> +
>>> +
>>> +#define STB_IMAGE_IMPLEMENTATION
>>> +#define STBI_ONLY_PNG
>>> +#define STBI_NO_LINEAR
>>> +#include "stb_image.h"
>>> +
>>> +#define QOI_IMPLEMENTATION
>>> +#include "../lib/gui/qoi.h"
> included here.
> 
> 
> 
> 
> 
> 
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

