Delivery-date: Thu, 13 Apr 2023 11:41:44 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pmtSZ-00251z-DZ
	for lore@lore.pengutronix.de; Thu, 13 Apr 2023 11:41:44 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pmtSZ-0005vp-1G
	for lore@pengutronix.de; Thu, 13 Apr 2023 11:41:43 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+fUsGUgUmh/Wp7Im+eU311VhBuI9Rg/GGlYZK9UL4Vc=; b=N3KXd9PDevORb55XEpGmovZHGt
	25XUhAbFRLmCl/ZYFoyFTO28B/e9aA4ghHCFh6Yfai1XY9DpFQs4qOq5JnhM/Reo6PPkjO9C036ie
	trDbZJFdONdBb/8E99AAWewzRuNyFb1ZCFjHhCbx4Hg54ae3Wsq5PXTMlfaaG9P2qVg+tZ4ROiSui
	WMQYDYGx2OfWkNAzc96l446W1slIul9FIiRM3CT+mg30yK6+VHrODS9fWXUhIyyK2SgbbDHIyBfhm
	TpI3Yk/yZHwBwL+nn/ZjYWg9pjZ4mzWz33UNLXemq+jMEwiMIWpw66iL5wwOMRxBB3+gtZQLAtGUs
	9Nj2G4iA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pmtRL-005esC-02;
	Thu, 13 Apr 2023 09:40:27 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pmtRI-005eq9-09
	for barebox@lists.infradead.org;
	Thu, 13 Apr 2023 09:40:25 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1pmtRE-0005hS-Qr; Thu, 13 Apr 2023 11:40:20 +0200
Message-ID: <169e8325-9b89-5cb1-cd90-cf5a0f817b02@pengutronix.de>
Date: Thu, 13 Apr 2023 11:40:20 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Content-Language: en-US
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org, rcz@pengutronix.de, mol@pengutronix.de
References: <20230413084547.1331906-1-a.fatoum@pengutronix.de>
 <20230413092043.GW19113@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230413092043.GW19113@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230413_024024_085858_944DCBD6 
X-CRM114-Status: GOOD (  20.76  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,URIBL_BLOCKED autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v2] kbuild: use printf instead of echo -e extension
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 13.04.23 11:20, Sascha Hauer wrote:
> Hi Ahmad,
> 
> The subject seems outdated, you are not using printf at all here.

Oh right. I tried printf first, but foreach concatenates with
spaces in-between and printf ignores everything not referenced
by the format string...

> On Thu, Apr 13, 2023 at 10:45:47AM +0200, Ahmad Fatoum wrote:
>> We are using echo -e, so the \n in the string being echo'd are
>> interpreted. As -e is not POSIX and dash doesn't provide it,
>> we use a strange /usr/bin/env echo -e construct hoping that
>> whatever non-builtin echo is first in the search path supports -e.
>>
>> As the new lines are just used to separate CPP directives, we can
>> just pass the directives as $(CPP) flags. This has the same result,
>> but is potable and avoids NixOS complaining when building barebox.
> 
> s/potable/portable/

Will fix.

> Good idea to get rid of the echo -e dependency entirely, I like it :)
> 
> You could replace the '-' for stdin with /dev/null and then drop the
> echo |. Maybe this makes it a bit easier to read.

I had thought about that, but deemed

  In file included from <command-line>:3:
  /home/afa/fragment1.dts:6:2: warning: #warning hey [-Wcpp]

to be less confusing than it mentioning /dev/null. Now that I actually
tried it out though, the warning also references command-line, so
you will change for v3.

Thanks,
Ahmad

> 
> Sascha
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



