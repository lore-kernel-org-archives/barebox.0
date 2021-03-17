Delivery-date: Wed, 17 Mar 2021 11:57:04 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lMTrM-0004Fa-3z
	for lore@lore.pengutronix.de; Wed, 17 Mar 2021 11:57:04 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lMTrL-00014f-DN
	for lore@pengutronix.de; Wed, 17 Mar 2021 11:57:03 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=lFlwdMpuS8MttQJxdwGfRKQRLVNglpNXCYGJTYdLpWs=; b=JUv/8F5hTa+9mri2t54zq8zVv
	BDVa4MVIonlzbpDTymkCTPsykjaHLh0GG2+v3SNyiKcWxd/JVwIlHKIZuhLwxKGkP1SCJYmhLki+i
	szcTe4hUwKMf8GtE5lG4W5MxdlABnVGcsZmKuK66GVcLiinnHy1EI8NXVXEn8Piyv74FPq/w5AvqU
	1H64lMOQLNJumiEmbyafSmEkh7jb5gBYpMU3KlfCwsZFonby4MvgInZo2xzTEG07WQaiv9GNdziux
	QCl6ZthINShHdIdU6F7Et3wRatxt7v0AxaTgeVIe4BwjExbuZo/JLPqPjzB+wdqZN6pIFpNpXlxhn
	9OcenRVdw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lMTqX-002zAl-BP; Wed, 17 Mar 2021 10:56:13 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lMTqR-002zA8-AN
 for barebox@lists.infradead.org; Wed, 17 Mar 2021 10:56:09 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lMTqP-0000sh-PA; Wed, 17 Mar 2021 11:56:05 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lMTqP-0007GS-D3; Wed, 17 Mar 2021 11:56:05 +0100
Date: Wed, 17 Mar 2021 11:56:05 +0100
To: Ahmad Fatoum <ahmad@a3f.at>
Cc: barebox@lists.infradead.org, rcz@pengutronix.de
Message-ID: <20210317105605.GB23724@pengutronix.de>
References: <20210317104643.2058151-1-ahmad@a3f.at>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210317104643.2058151-1-ahmad@a3f.at>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 11:55:56 up 27 days, 14:19, 86 users,  load average: 0.12, 0.07, 0.07
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210317_105607_432232_8EC0FF5F 
X-CRM114-Status: GOOD (  18.48  )
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
X-Spam-Status: No, score=-3.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 0/8] <asm/setjmp.h>: Don't use __noreturn without header
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Mar 17, 2021 at 11:46:35AM +0100, Ahmad Fatoum wrote:
> __noreturn is defined in <linux/compiler.h>, which isn't included in
> every <asm/setjmp>, so arm32 that uses setjmp outside of bthreads fails
> to build. In order to keep changes to a minimum, just replace
> __noreturn with __attribute__((noreturn))
> 
> Tested on:
> arm32, aarch64, mipsel, mips, riscv32, riscv64
> 
> Ahmad Fatoum (8):
>   fixup! ARM: asm: setjmp: implement coroutine dependency initjmp()
>   fixup! kvx: Implement setjmp/longjmp/initjmp
>   fixup! mips: Implement setjmp/longjmp/initjmp for 32BIT
>   fixup! openrisc: Implement setjmp/longjmp/initjmp
>   fixup! powerpc: Implement initjmp/setjmp/longjmp
>   fixup! riscv: Implement setjmp/longjmp/initjmp for RV32I
>   fixup! sandbox: asm: implement setjmp/longjmp/initjmp
>   fixup! x86: implement setjmp/longjmp/initjmp

Applied, thanks

Sascha

> 
>  arch/arm/include/asm/setjmp.h      | 2 +-
>  arch/kvx/include/asm/setjmp.h      | 2 +-
>  arch/mips/include/asm/setjmp.h     | 2 +-
>  arch/openrisc/include/asm/setjmp.h | 2 +-
>  arch/powerpc/include/asm/setjmp.h  | 2 +-
>  arch/riscv/include/asm/setjmp.h    | 2 +-
>  arch/sandbox/include/asm/setjmp.h  | 2 +-
>  arch/x86/include/asm/setjmp.h      | 2 +-
>  8 files changed, 8 insertions(+), 8 deletions(-)
> 
> -- 
> 2.30.0
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
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

