Delivery-date: Mon, 31 May 2021 19:12:09 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lnlST-00060V-3M
	for lore@lore.pengutronix.de; Mon, 31 May 2021 19:12:09 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lnlSS-000725-8D
	for lore@pengutronix.de; Mon, 31 May 2021 19:12:08 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=QYjqe7pALKVfOaVToSL1wDlMaXt0bbTcrCWD1QW51hU=; b=MGd6UIs3hllfl/e3s3ACQRw7Mh
	AGvUUXk+Zz4MfUp7IgKmsWt8uZyVDn40QHY7+oev/uiE1Vm0y/2JAIHJduKB5pF2fydIMima2US/n
	Ih92YuQc5s8Y4RYZA0IEkzKDyvrm/v0FfjGjAxiDURqncVUA2OeTbeGS6w9+z5TjXLEeCMzvBFPa0
	KDEQ4RxE/JSqYkFPXolQ9g37Ri02IP2B/TTs3uIu7ZHn2v7wxgGyem/X2c7WKPLGULbgSe3GfIwcG
	P46l1TINJgFToI7ubc8P2XQLX0ybrTrC62rInlEd7nIBY6YCTIZedFPE7lWZpfDtni93u1NwtpI7s
	dIsDeD4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lnlR3-00CxKz-Nh; Mon, 31 May 2021 17:10:41 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lnlQx-00CxHR-Sl
 for barebox@lists.infradead.org; Mon, 31 May 2021 17:10:37 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1lnlQu-0006mp-WE; Mon, 31 May 2021 19:10:33 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: "Barbier, Renaud" <renaud.barbier@abaco.com>,
 "barebox@lists.infradead.org" <barebox@lists.infradead.org>,
 Roland Hieber <rhi@pengutronix.de>
References: <MN2PR16MB3135009790C9E05DD2D996BB91170@MN2PR16MB3135.namprd16.prod.outlook.com>
 <70a0b276-296e-f8b9-dcf5-22293209d55d@pengutronix.de>
 <MN2PR16MB3135E3998BF7EA4489AE059891649@MN2PR16MB3135.namprd16.prod.outlook.com>
 <4cc07830-1073-b638-6929-10c677243f05@pengutronix.de>
Message-ID: <5a36bbd2-dfb0-fba1-eda7-58df134b6dbf@pengutronix.de>
Date: Mon, 31 May 2021 19:10:32 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.2
MIME-Version: 1.0
In-Reply-To: <4cc07830-1073-b638-6929-10c677243f05@pengutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210531_101035_976363_03A152F8 
X-CRM114-Status: GOOD (  20.06  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: bareboxenv-target
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 23.03.21 16:47, Ahmad Fatoum wrote:
> Hello Renaud,
> 
> On 23.03.21 15:44, Barbier, Renaud wrote:
>>>> Could it it be related to  how our toolchain got build?
>>>
>>> Just ran into the same issue. Cause is as Roland describes the lack of --sysroot
>>> as default and that it comes in via $CC, which Kbuild doesn't expect.
>>>
>>> I guess this would break building kernel host tools too or how do they solve it?
>>>>
>>>> Not working either:
>>>>  [renaud@ediowsrv01]$ make tools/leds
>>>>   DESCEND  leds
>>>> arm-oe-linux-gnueabi-gcc -Wall -Wextra -g -I../../include/uapi -o uledmon uledmon.c
>>>> uledmon.c:14:10: fatal error: fcntl.h: No such file or directory
>>>>    14 | #include <fcntl.h>
>>>>       |          ^~~~~~~~~
> 
> Thanks for trying it out. Well, this is a general incompatibility of the SDK's environment
> setup script with Kbuild then. I am wondering why they decided on not having a default
> --sysroot. Raising the issue upstream could shed some light on this and perhaps result
> in a fix. I don't think there is anything to fix here at the barebox side.
> 
> FTR: we use meta-ptx extensively and AFAIK we haven't run into this issue. It only
> popped up when using the SDK build, so bitbake seems to do the right thing in that case.

FTR: There's a pending meta-ptx fix here:
https://github.com/pengutronix/meta-ptx/pull/74

The solution for now seems to be to:

export TARGETCFLAGS="${TARGET_LDFLAGS}${HOST_CC_ARCH}${TOOLCHAIN_OPTIONS}"
export userccflags="${TARGETCFLAGS}"

It's yet unclear whether userccflags is meant to be used this way, but it works
for barebox.

Cheers,
Ahmad

> 
> Cheers,
> Ahmad
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

