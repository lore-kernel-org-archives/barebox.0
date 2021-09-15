Delivery-date: Wed, 15 Sep 2021 12:25:41 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mQS6n-00046Z-O7
	for lore@lore.pengutronix.de; Wed, 15 Sep 2021 12:25:41 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mQS6m-00029W-MH
	for lore@pengutronix.de; Wed, 15 Sep 2021 12:25:41 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=x+/bFmrxjs1Fjx9uf7AQKeNzeVxaNU1wjCLNxLiLlHk=; b=1T0bbt/X8/7GClONZWvWOZI7Rg
	VGho0UU4Wo3ASQ6U0kBM5+jfRYlYxnTwSbzKjipS6B7IEstdw+wPW5j4c8EHvTB1okna5zSsZLXmV
	5xbNFfcCT9vzPzmGyN+UWAz8dY/G4eNtZXk2GK3ZpXJrakTPg0Gh24vUcv5YGHjpkq5lN5hXNC9vX
	MoCgIyO8yvYBxTWWu+SgpmzjzbM1rtnmpDIPKN18XHXfQmu/eY9QCHiA8tLwZAlmIlzkhMIJZU/QP
	7kuzzzQO6r8hsfiSeGSOj+ucF6gETmgt/cnSOhbnuK5g5bjk6hxyZI0acWxv+AgG0E1ZUg5vkW3YB
	0QcDEncQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mQS5B-008oE5-QX; Wed, 15 Sep 2021 10:24:01 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mQS56-008oDk-Pn
 for barebox@lists.infradead.org; Wed, 15 Sep 2021 10:23:58 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1mQS54-0001sh-5I; Wed, 15 Sep 2021 12:23:54 +0200
To: Trent Piepho <trent.piepho@igorinstitute.com>
Cc: Barebox List <barebox@lists.infradead.org>, ejo@pengutronix.de,
 rhi@pengutronix.de, uol@pengutronix.de, renaud.barbier@abaco.com
References: <20210914132016.22572-1-a.fatoum@pengutronix.de>
 <20210914132016.22572-4-a.fatoum@pengutronix.de>
 <CAMHeXxOisX+Nnqk-5SPF3uDwFH4TGOyNv13fX6vdshXJhm3gog@mail.gmail.com>
 <ca70d49c-a4eb-07ce-6615-0d5c52a797a9@pengutronix.de>
 <CAMHeXxOWaVhOxdusBwB7go9QARanQMRbB=Yj+H+EJke1W0crVQ@mail.gmail.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <16785ad0-b353-0c95-e09c-2e2767638e68@pengutronix.de>
Date: Wed, 15 Sep 2021 12:23:51 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <CAMHeXxOWaVhOxdusBwB7go9QARanQMRbB=Yj+H+EJke1W0crVQ@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210915_032356_896686_BED33B76 
X-CRM114-Status: GOOD (  37.06  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 4/4] scripts: allow building USB loader tools for target
 as well
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 15.09.21 11:38, Trent Piepho wrote:
> On Wed, Sep 15, 2021 at 1:50 AM Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:
>> On 14.09.21 21:11, Trent Piepho wrote:
>>> On Tue, Sep 14, 2021 at 6:21 AM Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:
>>>>
>>>> Users can override it as necessary, for example, with Yocto, pkg-config
>>>> will be for the cross environment, so target tools can now be built
>>>> with:
>>>
>>> I just added support to Buildroot for building imx-usb-loader from
>>> Barebox, since it's nicer than the standalone version of the program.
>>>
>>> Since pkgconfig was only used for host tools, I didn't need to make
>>> both host and target pkgconfig work.  But of course that will no
>>> longer be true after this patch.
>>
>> It still wouldn't break your workflow, imx-usb-loader wasn't built
>> for target so far.
> 
> But it wouldn't work for anyone who wanted both the host and target versions.

You have two options:

 - provide ${CROSS_COMPILE}pkg-config that calls your wrapper that has
   the necessary options set

 - export CROSS_PKG_CONFIG="YOUR_ENV_VARS pkg-config"

>>> There is a problem with only supplying CROSS_PKG_CONFIG.  To get both
>>> host and target pkgconfig to work, I also need to supply the env
>>> variables used by pkgconfig, PKG_CONFIG_SYSROOT and PKG_CONFIG_LIBDIR.
>>
>> You can set these on the environment before starting barebox build.
>> If you have a $(CROSS_COMPILE)pkg-config that doesn't need any further
>> configuration, you can use that.
> 
> The problem is they need different values for the target and for the
> host version of the package config.  The way you have done this it is
> only possible for there to be one value that is used both when the
> host version is called and the same values when the cross pkg-config
> is called.

The example in the commit message is one way to do it with Yocto.
You could still build both host and target tools in the same go.

>>> The former makes the paths returned by pkgconfig correct and the
>>> latter controls which set, target or host, of .pc files will be used.
>>>
>>> Maybe something like this in the Makefile:
>>>
>>> CROSS_PKG_CONFIG ?= $(CROSS_COMPILE)pkg-config
>>> CROSS_PKG_CONFIG_SYSROOT ?= $(PKG_CONFIG_SYSROOT)
>>> CROSS_PKG_CONFIG_LIBDIR ?= $(PKG_CONFIG_LIBDIR)
>>> CROSS_PKG_CONFIG_ENV := \
>>>        PKG_CONFIG_LIBDIR=$(CROSS_PKG_CONFIG_LIBDIR) \
>>>        PKG_CONFIG_SYSROOT=$(CROSS_PKG_CONFIG_SYSROOT)
>>>
>>> HOST_LIBUSB_CFLAGS := $(shell $(PKG_CONFIG) --cflags)
>>> CROSS_LIBUSB_CFLAGS := $(shell $(CROSS_PKG_CONFIG_ENV)
>>> $(CROSS_PKG_CONFIG) --cflags)
>>>
>>> Then use those everywhere someone wants the libusb cflags.  Repeat for LDFLAGS.
>>
>> I am not really sold on this. Linux doesn't mess with PKG_CONFIG_ variables
>> either. For perf the assume $(CROSS_COMPILE)pkg-config to be available.
>> I think it's a suitbale default for us too. The lines above can go into
>> a shell script wrapper.
> 
> Linux allows you to build the tools individually,  e.g. for tmon we have this:
> 
> make -C $(LINUX_DIR)/tools CC=$(TARGET_CC)
> PKG_CONFIG_PATH=$(STAGING_DIR)/usr/lib/pkgconfig tmon
> 
> Can Barebox build do this?  This way there are multiple make calls,
> with different options, to build a kernel for the target, dtc for the
> host, tmon for the target, and so on.

I don't need this flexibility. I am fine with changing the config
if only specific applications sohuld be built.
 
> So Linux build may not be an ideal pattern to copy.  It can not build
> a tool for both host and target in one build.

And barebox can do this now. So all good?

>>> You'll get fewer repeated invocations of pkg-config this way too.
>>
>> Ye, I thought about that as well, but we do it like this for the host tools,
>> so I left it for now. It's not much overhead and it makes it a bit easier
>> to follow what is used.
> 
> It looks like Linux build assigns pkg-config output to a variable in
> every instance but dtc's build.  I think the existing Barebox
> makefiles are just a bit sloppy in how they call pkg-config.

Send patches?

Cheers,
Ahmad


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

