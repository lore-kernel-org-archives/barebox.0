Delivery-date: Tue, 23 Mar 2021 16:49:20 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lOjHU-0005Pq-Kk
	for lore@lore.pengutronix.de; Tue, 23 Mar 2021 16:49:20 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lOjHT-0007Wz-S3
	for lore@pengutronix.de; Tue, 23 Mar 2021 16:49:20 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=AFNVWVsstFx67GK5kyFZSszGagp0JaSag5p2hBY6U7o=; b=igaxX6vwPqfMwugJ3yqjf6O+3
	sG+q0w7wI5I8iKia63TTOgl6btrhiVcCfTDik4yFiFu2G11fQQ3hx81Ifjscnkq8bcjpPLo1zQ8Wy
	dRpncuXBTxnOjDSLwqux6Ofm8WV0ah+3JE+QxJwZ/m4oAmHawlPduegeINJMsOhJGZiiSACe2OhE+
	x9OZTi6HrO1xuDrurGzX8ntwPK6KDwiYgT3+OVF/Zk8wXf8hjPQQCY41+AxWcgEDBOJ/p40nT5NlU
	Ek+KwSvp4wEuBPHa8nR+UvvV7sgZ2PYp/guT6+9Cxi0sQtxc0VJQRSH3ZkTbrcpx3y7CaxdmXi//6
	G/6L/7feg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lOjFz-00FGoM-9t; Tue, 23 Mar 2021 15:47:47 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lOjFt-00FGo3-Nl
 for barebox@lists.infradead.org; Tue, 23 Mar 2021 15:47:43 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1lOjFr-0007RQ-5V; Tue, 23 Mar 2021 16:47:39 +0100
To: "Barbier, Renaud" <renaud.barbier@abaco.com>,
 "barebox@lists.infradead.org" <barebox@lists.infradead.org>,
 Roland Hieber <rhi@pengutronix.de>
References: <MN2PR16MB3135009790C9E05DD2D996BB91170@MN2PR16MB3135.namprd16.prod.outlook.com>
 <70a0b276-296e-f8b9-dcf5-22293209d55d@pengutronix.de>
 <MN2PR16MB3135E3998BF7EA4489AE059891649@MN2PR16MB3135.namprd16.prod.outlook.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <4cc07830-1073-b638-6929-10c677243f05@pengutronix.de>
Date: Tue, 23 Mar 2021 16:47:37 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <MN2PR16MB3135E3998BF7EA4489AE059891649@MN2PR16MB3135.namprd16.prod.outlook.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210323_154742_042605_530FEB0B 
X-CRM114-Status: GOOD (  15.66  )
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
X-Spam-Status: No, score=-3.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: bareboxenv-target
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Renaud,

On 23.03.21 15:44, Barbier, Renaud wrote:
>>> Could it it be related to  how our toolchain got build?
>>
>> Just ran into the same issue. Cause is as Roland describes the lack of --sysroot
>> as default and that it comes in via $CC, which Kbuild doesn't expect.
>>
>> I guess this would break building kernel host tools too or how do they solve it?
>>>
>>> Not working either:
>>>  [renaud@ediowsrv01]$ make tools/leds
>>>   DESCEND  leds
>>> arm-oe-linux-gnueabi-gcc -Wall -Wextra -g -I../../include/uapi -o uledmon uledmon.c
>>> uledmon.c:14:10: fatal error: fcntl.h: No such file or directory
>>>    14 | #include <fcntl.h>
>>>       |          ^~~~~~~~~

Thanks for trying it out. Well, this is a general incompatibility of the SDK's environment
setup script with Kbuild then. I am wondering why they decided on not having a default
--sysroot. Raising the issue upstream could shed some light on this and perhaps result
in a fix. I don't think there is anything to fix here at the barebox side.

FTR: we use meta-ptx extensively and AFAIK we haven't run into this issue. It only
popped up when using the SDK build, so bitbake seems to do the right thing in that case.

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

