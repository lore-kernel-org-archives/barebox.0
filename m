Delivery-date: Wed, 03 Mar 2021 15:17:05 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lHSJF-000865-B7
	for lore@lore.pengutronix.de; Wed, 03 Mar 2021 15:17:05 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lHSJE-00010e-BY
	for lore@pengutronix.de; Wed, 03 Mar 2021 15:17:05 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=hG9ydWTHWa78PAlKsI1fbLmJ8ZYdcRbs0Ytdr/6ehQE=; b=kWJun96QEAEbTtE+cb4mkfEYB
	B2gzXn/u/jteuiiguAE8aBZhDyIHR/Vc41rWyBZdRdeDqbWQXYOmy2VaoTIdhS8mxSECea+gJS6KV
	BeysJe5zXWOtbxTFvGNbAflVDLCd9Z9ba51Z48PioHZdFYGG0g0sEWTLLr3SeN5W5qf+e5aEDqIB5
	5sRqWrqqmrsiV7mK/yGosNEVM1eXU/eIM8wH/GeKRbyjooMMrBzASBTjVnLqatFnUEAXOtBJo6/Nw
	ekfRMxcD5vTZxc+TpqvioGbsQPhg8xXLBZhTI+O0E0jHP4MWBXB2nzc/zq7e3cmPW5x4KM2XsLX91
	Qo325LvtQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lHSH5-0055aD-Al; Wed, 03 Mar 2021 14:15:11 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lHS5x-0052Nq-La
 for barebox@desiato.infradead.org; Wed, 03 Mar 2021 14:03:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender
 :Reply-To:Content-ID:Content-Description;
 bh=1bdPRXdFa8ZekE01dafkgBMjgDN+s6qbNV/ZDCvbexQ=; b=mpgKP3EVm3TwP9r8VWBNd4rKXe
 /BoWT+RJWoAfllu0CVCyjLM60vYewZbPXdMEqEWOUucBRbCfpJ9+6ISOloL1+E6dtPhbxnAUR603w
 Tzt3DDlnDWcY6DeSW3ceIBVb+TV8M1tCbIk2Z/UloA2iUnSDXUsKm4PP3KIb2Z3ct27UUBYrmpBt8
 8FRF8hiEptE97X5ZF/euWaJwPu2nbIlnBUksppf7W4c13EpN3nXs0EdHllEIqf1KGKLwcLy6MSi85
 BlJTIh0OkB6GgjjLfPFLtu40ARUo/23MoYqHedcYgLozWK/2ev9og4IJT5pOFxVDe0WxPfuk8dDpH
 HuSlqpIQ==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lHS5n-002tOt-TG
 for barebox@lists.infradead.org; Wed, 03 Mar 2021 14:03:16 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[127.0.0.1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1lHS5n-0006xF-91; Wed, 03 Mar 2021 15:03:11 +0100
To: Stafford Horne <shorne@gmail.com>, Barebox <barebox@lists.infradead.org>
References: <20210303135026.3450789-1-shorne@gmail.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <57222afc-9d92-e52d-34d4-0737eff1ec82@pengutronix.de>
Date: Wed, 3 Mar 2021 15:03:11 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <20210303135026.3450789-1-shorne@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210303_140316_557953_E0DF7FF7 
X-CRM114-Status: GOOD (  17.02  )
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
Cc: Openrisc <openrisc@lists.librecores.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 0/4] OpenRISC fixes and setjmp/longjmp work
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Stafford,

On 03.03.21 14:50, Stafford Horne wrote:
> Hello,
> 
> These are the patches I came up with to get the setjmp/longjmp routines to work
> on OpenRISC.  It seems to be working well.
> 
> The patches are on github here:
>   https://github.com/stffrdhrn/barebox/tree/openrisc-bthread
> 
> I had to revert a commit to remove openrisc to do this work, I hope that can be
> reverted.

Great. Thanks for taking the time!
Could this be tested on qemu-system-or1k? If so, it would be great to have this
documented in-tree, so future changes could be tested.

Cheers,
Ahmad

> 
> Test output:
> 
>     barebox@or1ksim:/ bthread -v
>     bthread_printer yield #1
>     bthread_printer yield #2
>     bthread_printer yield #3
>     bthread_printer yield #4
>     36441 bthread yield calls in 1s
>     barebox@or1ksim:/ bthread -v
>     bthread_printer yield #1
>     bthread_printer yield #2
>     bthread_printer yield #3
>     bthread_printer yield #4
>     36504 bthread yield calls in 1s
>     barebox@or1ksim:/ bthread
> 
>     bthread - print info about registered bthreads
> 
>     print info about registered barebox threads
> 
>     Options:
> 	    -i      Print information about registered bthreads
> 	    -t      measure how many bthreads we currently run in 1s
> 	    -c      count maximum context switches in 1s
> 	    -v      verify correct bthread operation
> 
>     barebox@or1ksim:/ bthread -c
>     bthread -c
>     269536 bthread context switches possible in 1s
> 
> Stafford Horne (4):
>   openrisc: Use movhi to zero registers
>   openrisc: Add gitignore for dtb files
>   openrisc: Add linkage.h
>   openrisc: Implement setjmp/longjmp/initjmp
> 
>  arch/openrisc/Kconfig               |  1 +
>  arch/openrisc/cpu/start.S           |  6 ++--
>  arch/openrisc/dts/.gitignore        |  1 +
>  arch/openrisc/include/asm/linkage.h |  7 ++++
>  arch/openrisc/include/asm/setjmp.h  | 17 +++++++++
>  arch/openrisc/lib/Makefile          |  1 +
>  arch/openrisc/lib/setjmp.S          | 56 +++++++++++++++++++++++++++++
>  7 files changed, 86 insertions(+), 3 deletions(-)
>  create mode 100644 arch/openrisc/dts/.gitignore
>  create mode 100644 arch/openrisc/include/asm/linkage.h
>  create mode 100644 arch/openrisc/include/asm/setjmp.h
>  create mode 100644 arch/openrisc/lib/setjmp.S
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

