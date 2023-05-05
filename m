Delivery-date: Fri, 05 May 2023 10:34:00 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1puqt7-005h7a-Ph
	for lore@lore.pengutronix.de; Fri, 05 May 2023 10:34:00 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1puqt5-00010g-Pe
	for lore@pengutronix.de; Fri, 05 May 2023 10:34:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=iQb5Vm4VJPvB5oKtLw50m07ZnNt2Tv2rrWdm5xOgLqk=; b=YqeHrUdKlQuuI4VVDzC7bcgO6y
	r7Br7AuhM4tkGX0Nj0/Rss48DPLRcfckFm6Gw0D6vq+pQmmECLFl21PM3QzZDBMvuXMbwljKa/sFa
	0an8SCB7L6O6vTABYF+1qnGP0nEWdAIW7qxo8L3SqvteZ4gUDcSGlvFcPZuVFbwSBkvC0jONCdh95
	AyPH4seC5+h2bAqL7JUR9xKAiccCp5ff77sYjlLaDLHmtD/3pBjyjOHpvb2vyF8CVMtPNNAEXiLxl
	l33wfskfpwrHbXRGBrFNHV62gd0dkAepkUXb6iQhx27n9yzPd4cri8V4qIGWg3pV2UM5QTRR7Gowu
	JKujj2aA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1puqrt-00A2G7-33;
	Fri, 05 May 2023 08:32:45 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1puqrq-00A2FV-2J
	for barebox@lists.infradead.org;
	Fri, 05 May 2023 08:32:44 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1puqrp-0000uf-5q; Fri, 05 May 2023 10:32:41 +0200
Message-ID: <38f99beb-1990-b764-4b5b-c9a03bfd4d0a@pengutronix.de>
Date: Fri, 5 May 2023 10:32:40 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Content-Language: en-US
To: Johannes Zink <j.zink@pengutronix.de>, barebox@lists.infradead.org
References: <20230505075308.1015157-1-j.zink@pengutronix.de>
 <20230505075308.1015157-4-j.zink@pengutronix.de>
 <68c294c2-e2e2-b305-acf8-5ecd14b82991@pengutronix.de>
 <d1ff09f0-f337-bfda-ba75-2f5e74087d70@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <d1ff09f0-f337-bfda-ba75-2f5e74087d70@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230505_013242_777411_BCD5FC33 
X-CRM114-Status: GOOD (  28.02  )
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
X-Spam-Status: No, score=-7.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v1 3/3] imx-usb-loader: add commandline option for
 displaying version number
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 05.05.23 10:26, Johannes Zink wrote:
> Hi Ahmad,
> 
> thanks for reviewing this series.
> 
> On 5/5/23 10:02, Ahmad Fatoum wrote:
>> On 05.05.23 09:53, Johannes Zink wrote:
>>> For debugging purposes of the imx-usb-loader it can be helpful to
>>> display the version number as a commandline option.
>>
>> This breaks builds outside of Kbuild, which is the only way to build a
>> (currently non-functional) imx-usb-loader for Windows. See
>>
>> https://lore.barebox.org/barebox/20230411093844.1297004-1-a.fatoum@pengutronix.de/
>>
> 
> I see, I was not aware that there are users of an out-of-Kbuild build.

It's not a nice workaround, but it's better than nothing and I'd
prefer it to not be build-broken (and hopefully it will even be
functional soon).

>> What you may be able to do instead is -include $(objtree)/include/generated/utsrelease.h
>>
>> and then have an
>>
>>    #ifndef UTS_RELEASE
>>    #define UTS_RELEASE "external" // or something
>>    #endif
>>
>> at the start of the file?
>>
> 
> sounds good to me, gonna add this to v2. Out of interest: does the outside-of-kBuild use a custom makefile? Otherwise -include would probably complain that the file is unknown...

Just the commands in the above referenced cover letter. The user would skip the
include line and it would just work.

>> (Not sure how long GCC has had support for __has_include)
> 
> I'd prefer not to use __has_include, as this might not be supported with redmondish toolchains, introducing an issue to fix another does not seem too appealing to me ;-)

That's out of scope anyway. GCC is the only thing you need to consider,
even clang can't build barebox for arm32 for example.

Cheers,
Ahmad

> 
> Johannes
> 
>>
>> Cheers,
>> Ahmad
>>
>>>
>>> Signed-off-by: Johannes Zink <j.zink@pengutronix.de>
>>> ---
>>>   scripts/imx/Makefile         |  2 +-
>>>   scripts/imx/imx-usb-loader.c | 21 ++++++++++++++++++++-
>>>   2 files changed, 21 insertions(+), 2 deletions(-)
>>>
>>> diff --git a/scripts/imx/Makefile b/scripts/imx/Makefile
>>> index dbfa82910a55..43584427d27d 100644
>>> --- a/scripts/imx/Makefile
>>> +++ b/scripts/imx/Makefile
>>> @@ -3,7 +3,7 @@
>>>   hostprogs-always-$(CONFIG_ARCH_IMX_IMXIMAGE)    += imx-image
>>>   hostprogs-always-$(CONFIG_ARCH_IMX_USBLOADER)    += imx-usb-loader
>>>   -HOSTCFLAGS_imx-usb-loader.o = `pkg-config --cflags libusb-1.0`
>>> +HOSTCFLAGS_imx-usb-loader.o = `pkg-config --cflags libusb-1.0` -I$(objtree)/include/generated
>>>   HOSTLDLIBS_imx-usb-loader  = `pkg-config --libs libusb-1.0`
>>>     imx-usb-loader-target-userccflags += `$(CROSS_PKG_CONFIG) --cflags libusb-1.0`
>>> diff --git a/scripts/imx/imx-usb-loader.c b/scripts/imx/imx-usb-loader.c
>>> index e49c0bea6ca4..d4f876bb1c99 100644
>>> --- a/scripts/imx/imx-usb-loader.c
>>> +++ b/scripts/imx/imx-usb-loader.c
>>> @@ -32,6 +32,7 @@
>>>   #include <libusb.h>
>>>   #include <getopt.h>
>>>   #include <linux/kernel.h>
>>> +#include <utsrelease.h>
>>>     #include "../common.h"
>>>   #include "../compiler.h"
>>> @@ -1526,9 +1527,17 @@ static void usage(const char *prgname)
>>>           "-p <devpath> Specify device path: <bus>-<port>[.<port>]...\n"
>>>           "-s           skip DCD included in image\n"
>>>           "-v           verbose (give multiple times to increase)\n"
>>> +        "--version    display version number\n"
>>>           "-h           this help\n", prgname);
>>>   }
>>>   +static void version(const char *prgname)
>>> +{
>>> +    fprintf(stderr, "%s %s\n",
>>> +        prgname, UTS_RELEASE);
>>> +    exit(EXIT_SUCCESS);
>>> +}
>>> +
>>>   int main(int argc, char *argv[])
>>>   {
>>>       libusb_device **devs;
>>> @@ -1544,10 +1553,20 @@ int main(int argc, char *argv[])
>>>       char *initfile = NULL;
>>>       char *devpath = NULL;
>>>       char *devtype = NULL;
>>> +    int opt_version = 0;
>>> +    struct option long_options[] = {
>>> +        {"version", no_argument, &opt_version, 1},
>>> +        { }
>>> +    };
>>>         w.do_dcd_once = 1;
>>>   -    while ((opt = getopt(argc, argv, "cvhd:i:p:s")) != -1) {
>>> +    while ((opt = getopt_long(argc, argv, "cvhd:i:p:s", long_options, NULL)) != -1) {
>>> +        if (opt_version) {
>>> +            version(argv[0]);
>>> +            exit(EXIT_SUCCESS);
>>> +        }
>>> +
>>>           switch (opt) {
>>>           case 'c':
>>>               verify = 1;
>>
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



