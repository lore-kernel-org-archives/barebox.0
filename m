Delivery-date: Mon, 22 Mar 2021 05:39:39 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lOCLr-0002uU-J8
	for lore@lore.pengutronix.de; Mon, 22 Mar 2021 05:39:39 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lOCLq-0001KI-Io
	for lore@pengutronix.de; Mon, 22 Mar 2021 05:39:39 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=n/U08GtcePOnFyqMm9KQzolLF3gs14MeAiRb48IgCUA=; b=gQAXyiNLzvRCB8AuCLTYITtPG
	0zErhSdpbP2srXnZ3imPizgJSl6uAM6iGV788BGqfDsf4OkdU4Qa3tvCSr21LMZNUpJm6LS6NXGOp
	AbL9pSL0kL/qjpJ2PHqnsXVJu5fbtzj9tDShZK++lZKEukzxP8Uv5PXBeV37LEdUWQu/zAohxZlce
	LtjgjT7lA4k8cooHEXrOGuvlBavZrLQTpIYMhAAy4lc7qMu9pYbmGwTapC7848orHp1563+Pv19Fz
	Ln3KYKdlN9C22KSazvQqYu+P5khgbShq6jJOjCHe9S9bzZTDnw1RfgAJ2Jd2ChSV5C6cU8MoXmVlo
	AwClFcphQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lOCKU-00ArEf-Ne; Mon, 22 Mar 2021 04:38:15 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lOCKN-00ArE1-AY
 for barebox@lists.infradead.org; Mon, 22 Mar 2021 04:38:10 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lOCKK-0001CU-5T; Mon, 22 Mar 2021 05:38:04 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lOCKJ-0003ie-Cd; Mon, 22 Mar 2021 05:38:03 +0100
Date: Mon, 22 Mar 2021 05:38:03 +0100
To: Ahmad Fatoum <ahmad@a3f.at>
Cc: barebox@lists.infradead.org
Message-ID: <20210322043803.GD23724@pengutronix.de>
References: <20210319084621.2476100-1-ahmad@a3f.at>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210319084621.2476100-1-ahmad@a3f.at>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 05:37:37 up 32 days,  8:01, 49 users,  load average: 0.95, 0.39, 0.20
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210322_043807_819623_E06E1C4A 
X-CRM114-Status: GOOD (  19.02  )
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
X-Spam-Status: No, score=-2.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] bthread: disable ASan accounting for fibers on 32-bit
 sandbox
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Mar 19, 2021 at 09:46:21AM +0100, Ahmad Fatoum wrote:
> For the sandbox architecture, we use __sanitizer_start_switch_fiber
> and __sanitizer_finish_switch_fiber to tell ASan when we switch stacks.
> 
> If we don't, ASan complains that:
> 
>   ==2472828==WARNING: ASan is ignoring requested __asan_handle_no_return:
>     stack top: 0xff9fc000; bottom 0xf3be8000; size: 0x0be14000 (199311360)
>   False positive error reports may follow
>   For details see https://github.com/google/sanitizers/issues/189
> 
> This works on 64-bit sandbox, but 32-bit sandbox currently crashes on
> bthread -v:
> 
> ==2469590==AddressSanitizer CHECK failed: ../../../../../src/libsanitizer/asan/asan_poisoning.cpp:37 "((AddrIsAlignedByGranularity(addr + size))) != (0)" (0x0, 0x0)
>     #0 0xf7a4aa46 in AsanCheckFailed ../../../../../src/libsanitizer/asan/asan_rtl.cpp:73
>     #1 0xf7a6b5cf in __sanitizer::CheckFailed(char const*, int, char const*, unsigned long long, unsigned long long) ../../../../../src/libsanitizer/sanitizer_common/sanitizer_termination.cpp:78
>     #2 0xf7a4489f in __asan::PoisonShadow(unsigned long, unsigned long, unsigned char) ../../../../../src/libsanitizer/asan/asan_poisoning.cpp:37
>     #3 0xf7a4c81b in __asan_handle_no_return ../../../../../src/libsanitizer/asan/asan_rtl.cpp:595
>     #4 0x566a1ce7 in bthread_schedule /home/a3f/dl/barebox-stm32mp/common/bthread.c:178
>     #5 0x566a1d54 in bthread_reschedule /home/a3f/dl/barebox-stm32mp/common/bthread.c:165
>     #6 0x566a1d80 in bthread_trampoline /home/a3f/dl/barebox-stm32mp/common/bthread.c:56
>     #7 0x567f5bfb in coroutine_bootstrap (/home/a3f/dl/build/barebox/sandbox/barebox+0x1bdbfb)
>     #8 0x567f5c4b in coroutine_trampoline (/home/a3f/dl/build/barebox/sandbox/barebox+0x1bdc4b)
>     #9 0xf7f7056f  (linux-gate.so.1+0x56f)
>     #10 0xf7f70558  (linux-gate.so.1+0x558)
>     #11 0x56892fff  (/home/a3f/dl/build/barebox/sandbox/barebox+0x25afff)
> 
> Just disable the special ASan accounting there until this is figured
> out. bthreads still function there, but ASan may yield false positives
> according to the message. This does not affect non-sandbox platforms.
> 
> Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>

Applied, thanks

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

