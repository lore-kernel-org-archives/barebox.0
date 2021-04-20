Delivery-date: Tue, 20 Apr 2021 23:49:46 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lYyFe-0000w5-Ic
	for lore@lore.pengutronix.de; Tue, 20 Apr 2021 23:49:46 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lYyFa-0005U6-SI
	for lore@pengutronix.de; Tue, 20 Apr 2021 23:49:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Sq2OeKiGblfiCXch6mhApLDt0abtZCy5O6WtcDasWCY=; b=WQcY650YFVek55T46Mi9E9Qml
	YjEZwjFlUzZa/OSQTF+RfhMvr1yzdjXTKWP5Mj5sZpot5A5FV62l00C1Oj/oOXIeN4RQlC2SDRGBo
	ctuYWeHfjg2Grh0FJ0W3VtPPyC2lwKEPZ95uPrBrfLV6SvdPtXIDYmjKqnUA1znWIfkabPlRzGCQG
	otD20V3PKc5u8aH3qkpnlxFIn1XslemBrjwtM/SBHhOu3t7o8v48/kfpXBUXiVUplAX4qnCbFU6hU
	wu/ZMlA0unRt4Dj0Ye5iJ6DxcvmQPIa7ZYa3opi2ZIyFPQjeZqEatHHG3I89qo01dQ0ZcG/yJ2pm4
	sZUrWHzFw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lYyEB-00D6vY-Uo; Tue, 20 Apr 2021 21:48:19 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lYyE6-00D6uq-2Q
 for barebox@desiato.infradead.org; Tue, 20 Apr 2021 21:48:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=l/Sy/KYx2WpnMTF27zCIjKQWX2Auau0BuKTQ/CM4qv4=; b=YxXsK7lbu0B2vBeqb1ZUmlmp2N
 UzhqPiCwjovGQ2fG25k7RecmyyOA28GzwFA8MSZVcNdCNN0UnA8ZI1dq/PCdl8QP/XCUagY3BjuG+
 Cst6jkDFXq6KLTGUBGJq/fPF3kvbuIiBo53uezS4ktH1Pv0FhblsCCi4HBhM8/Xeq7jgK2+qHu5EV
 fUmiVJiOixuPaQbkgLKMDvqyVPVV6X6EPDhMHy7oarcvCX3uFSyFxxaksXy6fYcFTBrkDzSOXz/D3
 n63RaV5Zm5ff5goE9XJNKBXa/XLh3MsQhtNRLEZr+H9Oe8jRrDl1hqJ52lVgTDOLMgtf7dkZmJYk4
 LUwHfhaw==;
Received: from mail-lj1-x229.google.com ([2a00:1450:4864:20::229])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lYyE0-00CRKr-So
 for barebox@lists.infradead.org; Tue, 20 Apr 2021 21:48:08 +0000
Received: by mail-lj1-x229.google.com with SMTP id a36so34507656ljq.8
 for <barebox@lists.infradead.org>; Tue, 20 Apr 2021 14:48:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=l/Sy/KYx2WpnMTF27zCIjKQWX2Auau0BuKTQ/CM4qv4=;
 b=Awhc+L5utbrFReidipBTrO8r2EJynqzEOXh8IYAehCbSWk2HptV+sr40YILWK5INZf
 tKnzoCvT+Lg2pXKpG1L0WtpZdQDIbxrqPyOaUzBuszLFrq9CCeitGmD15y6hbiOi2KKZ
 kMxd3WCdQ8d6ocsT//syVEGsR4Pf6gKFZzh1ttB7xfihH81DqBZTXhqtQFB5qb78OV0i
 4dCW2Nu+5iUYIaLrm0Y/jLlChvloNVNVHikFJf/3FNVsHz4XKqEmKf7mXe7qs4jBjXm2
 on+rAcdKQMfYrMamAlWmvEr4hpxc93VWpvz9WQYzu5C0vQLLK8EGkzzCGmlYpQF4HvWR
 N6QA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=l/Sy/KYx2WpnMTF27zCIjKQWX2Auau0BuKTQ/CM4qv4=;
 b=SKrldIjZKuHOlBTHGN8trNVeQc1Za4uP4ZYQlA+NC/ICDEcqRAWOjAfHZCd4N+qo16
 mv0v19Unk8+2zJP1JKOf7RYHEyGB82rW9wvABUAYjCHkaNGGOhiY35yacTcUaQkJ7WRe
 SWzzNR/5qAanrrDmBgakQYdCDNHLl4JCR1VLTD/rHys7WOfa7DFgIEIxAWl/6VB7Sldy
 1yl3I4OsSjorCTo5z1LBat+TUP3znyHMZ0GzZGkpE3EU864Ev+4OHu8Ksi3cmix3q5i5
 2/Z7nyCR7jKzHX9zc7iKmkg+zx/+Lu7z/XaGkqMroMpk8zZHhXQSer3uxYNAWlbuESNF
 rngA==
X-Gm-Message-State: AOAM5319y88+u+MoTjkk+lAuEN3HUmSgOH3fJCGRO0T/AZfk7DKhUbJ8
 oqpespwtbZH82UQIhNJl1R8=
X-Google-Smtp-Source: ABdhPJyef+Akn1V9AvLDnwXK1GzpSOUytA3Q8UipwUXbIxfIOsbEOmQ1VfsL23OTcI2thLutDCOVTQ==
X-Received: by 2002:a2e:8688:: with SMTP id l8mr16352348lji.98.1618955282654; 
 Tue, 20 Apr 2021 14:48:02 -0700 (PDT)
Received: from chr (109-252-61-237.nat.spd-mgts.ru. [109.252.61.237])
 by smtp.gmail.com with ESMTPSA id a28sm17918lfb.88.2021.04.20.14.48.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 20 Apr 2021 14:48:02 -0700 (PDT)
Date: Wed, 21 Apr 2021 00:47:51 +0300
From: Peter Mamonov <pmamonov@gmail.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <20210420214750.GA2612@chr>
References: <20200707135608.31901-1-pmamonov@gmail.com>
 <c50f7807-9bfa-bc70-d771-f798422760e1@pengutronix.de>
 <20200708210231.GA24761@chr>
 <8868950a-5efc-e46d-2d8d-56c37b15d28b@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8868950a-5efc-e46d-2d8d-56c37b15d28b@pengutronix.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210420_144804_977959_1DAC1E37 
X-CRM114-Status: GOOD (  38.76  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: RFC: types conflicts
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello, Ahmad,

On Mon, Apr 19, 2021 at 09:58:06AM +0200, Ahmad Fatoum wrote:
> Hello Peter,
> 
> On 7/8/20 11:02 PM, Peter Mamonov wrote:
> >>> I tried to build MicroPython using barebox toolchain and found a number of
> >>> conflicts between barebox and compiler headers. Below you will find the patch
> >>> which demostrates some of them. In this particular example the problem arises
> >>> due to simultaneous inclusion of some compiler headers along with barebox
> >>> version of `strings.h`, which in turn includes barebox analogs of those headers
> >>> from `include/linux`. I belive there should be a segregation between headers in
> >>> `include` and in `include/linux`, i.e. headers from `include/` should not
> >>> reference <linux/*.h> headers. Yet I understand this is somewhat problematic.
> >>> What do you think?
> >>
> >> barebox code shouldn't make use of any compiler headers at all, except for <stdarg.h>.
> >> The only exception are arch/sandbox/os and scripts/, which reference libc headers.
> >> Everything else should comes out of barebox' include/ directory.
> >>
> >> If you have foreign code that you want to port into barebox, either modify it
> >> to use barebox headers or change the include order when building it to use _local_
> >> versions of the headers it requires.
> > 
> > Ok, I've got your point. Yet I want to point out that addition of *unmodified*
> > code in a form of git submodule would greatly simplify further support of this 
> > port. Unfortunately modifying include order will not help in this case, since, 
> > for example, both `barebox/include/linux/stddef.h` (included from 
> > `barebox/include/string.h` via <linux/string.h>, etc.) and 
> > `/usr/lib/gcc-cross/<ARCH>-linux-gnu/X/include/stdbool.h` define `true`/`false` 
> > macros. On the other hand `/usr/include/linux/stddef.h` and 
> > `/usr/lib/gcc/<ARCH>-linux-gnu/X/include/stdbool.h` coexist in GNU/Linux system 
> > nicely, since no header from `/usr/include/` does reference <linux/*.h> 
> > headers.
> 
> Even if our headers didn't clash, our symbols might. You want to use the
> same declaration/prototype everywhere a symbol is used.
> 
> If you have external code that uses, say, <string.h>. You write your own string.h,
> and ensure it's first in include path for all the code in the HAL (or w/e) directory
> you have. In that file you could have your wrappers and then #include_next <stdio.h>
> if needed.
> 
> If you have global symbols clashing in incompatible ways, you could perhaps
> postprocess the micropython object code with objcopy to give all symbols a
> micropython_ prefix..?
> 
> The proper abstraction is probably to have a module, but that seems only supported
> on ARM.
> 
> >>> diff --git a/commands/types_conflict.c b/commands/types_conflict.c
> >>> new file mode 100644
> >>> index 0000000000..70fee8d6f4
> >>> --- /dev/null
> >>> +++ b/commands/types_conflict.c
> >>> @@ -0,0 +1,12 @@
> >>> +#include <stdbool.h>
> >>> +#include <stdint.h>
> >>> +#include <stddef.h>
> >>> +
> >>> +#include <string.h>
> >>
> >> barebox (except sandbox) is meant to be compiled with freestanding C implementations
> >> that aren't required to provide a <string.h>. So no barebox code should depend on
> >> compiler-provided <string.h>.
> > 
> > Actually `string.h` comes from barebox's `include/` dir, while `std*.h` come 
> > from compiler's include dir. 
> > 
> > 
> > PS: By the way, do you think Barebox will benefit from importing MicroPython 
> > (https://micropython.org/) and exposing some of Barebox APIs to it?
> 
> We have setjmp/longjmp on all architectures now, so it should make porting MicroPython
> easier. I probably wouldn't use it, but I guess it could have some educational value
> for people interested to go from MicroPython + Microcontroller to an
> application processor..?
> 
> It'd be cool to have for sure ;)

Looks like it requires considerable amount of effort, yet no obvious benefit 
for the community is to be achieved, so I opt to abandon it.  

Regards,
Peter

> 
> Cheers,
> Ahmad
> 
> > Regards,
> > Peter
> 
> -- 
> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

