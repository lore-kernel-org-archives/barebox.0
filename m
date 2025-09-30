Delivery-date: Tue, 30 Sep 2025 15:49:06 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v3aj4-002nTM-04
	for lore@lore.pengutronix.de;
	Tue, 30 Sep 2025 15:49:06 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v3aj3-0000aV-Fo
	for lore@pengutronix.de; Tue, 30 Sep 2025 15:49:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:To:Subject
	:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dQNNydk60lxkPyH60Ndyk5sHa7ujRwntlK9DvQsfL8I=; b=rVxTa5g5V2vH7E
	TZPccufzWxkJqFw1cFbtGnCE7v28xvWkDPCYj/a3ZvEmOL3RPrX5B0jo/ym4EwNWTrhCKpnjkAX+c
	VOiygHkZv/KRBTOAdDmj3e6fv7Rgd3wAJEkpm5CbOastkaJJhRO5hholP6elRhNrzVWA6dZ3+RthI
	/mzDFcJ7qeSENXmC350ROZmU34GVQrAgqHOhgKrs+ifTY+8TwLYSVQx33pRem/VczSo3WgiAiByx0
	SYs+ICCChkYuvQconBGksL4bZnixjefIY2A1Nu603oTe7Qjo3Vc5MLHiNsnHu71w8pJxT+R1DzoJX
	h0kiWRW+HLwL7ihkQC2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v3aid-00000005Qo5-0ybV;
	Tue, 30 Sep 2025 13:48:39 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v3aia-00000005Qnh-1Tv6
	for barebox@lists.infradead.org;
	Tue, 30 Sep 2025 13:48:37 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1v3aiY-0000QA-SH; Tue, 30 Sep 2025 15:48:34 +0200
Message-ID: <338f34dd-b9e0-41b0-9eae-b198faab8772@pengutronix.de>
Date: Tue, 30 Sep 2025 15:48:34 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Alexander Shiyan <eagle.alexander923@gmail.com>
References: <aNugWfoJR_2AirEx@pengutronix.de>
 <CAP1tNvTR9SkajSZaeh2Jsb_FNu=w87Et5oAcc1=FoZiK=_-rCQ@mail.gmail.com>
 <00e828e8-be6f-40bf-b83d-026fdf0fbe8a@pengutronix.de>
 <CAP1tNvQVbf3OSd22RfZzRDTs5c5m_dbgodqZ9+1kRD=U2SmSRg@mail.gmail.com>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <CAP1tNvQVbf3OSd22RfZzRDTs5c5m_dbgodqZ9+1kRD=U2SmSRg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250930_064836_393399_090F113D 
X-CRM114-Status: GOOD (  11.45  )
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
Cc: Barebox List <barebox@lists.infradead.org>, Michael Tretter <mtr@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: v2025.09.0
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Alexander,

On 9/30/25 3:25 PM, Alexander Shiyan wrote:
> shc@shc /home/ARM64/barebox $ openssl version
> OpenSSL 1.1.1s  1 Nov 2022

See the patch I just Cc'd you on. I'd suggest you update your OpenSSL
version though.

Cheers,
Ahmad

> shc@shc /home/ARM64/barebox $ pkg-config --cflags openssl
> 
> shc@shc /home/ARM64/barebox $ pkg-config --libs openssl
> -lssl -lcrypto
> 
> вт, 30 сент. 2025 г. в 16:15, Ahmad Fatoum <a.fatoum@pengutronix.de>:
> 
>> On 9/30/25 3:10 PM, Alexander Shiyan wrote:
>>> Hello.
>>>
>>> shc@shc /home/ARM64/barebox $ LANG=en PATH=$PATH:/usr/local/usr64/bin
>>> make ARCH=arm64 CROSS_COMPILE=aarch64-buildroot-linux-gnu- -j25
>>> CREATE  include/config.h
>>> HOSTCC  scripts/rkimage
>>> scripts/rkimage.c:16:10: fatal error: openssl/core_names.h: No such
>>> file or directory
>>> 16 | #include <openssl/core_names.h>
>>> |          ^~~~~~~~~~~~~~~~~~~~~~
>>> compilation terminated.
>>> make[1]: *** [scripts/Makefile.host:107: scripts/rkimage] Error 1
>>> make: *** [Makefile:1095: scripts] Error 2
>>
>> What's your version of OpenSSL? Can you run with V=1 and paste the full
> ...
>>>> I am happy to release barebox-2025.09.0.
> ...
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



