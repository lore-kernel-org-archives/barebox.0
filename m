Delivery-date: Mon, 01 Mar 2021 12:06:51 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lGgO3-0004XI-3w
	for lore@lore.pengutronix.de; Mon, 01 Mar 2021 12:06:51 +0100
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lGgO2-00017a-A1
	for lore@pengutronix.de; Mon, 01 Mar 2021 12:06:50 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:From:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=WLidJu3IDT7o052/7MDBvAp0c3l+ZgTJBbdhmhrba6Q=; b=tpn6Be0Np6C2gUgJi/vYJnog2
	NVcpzFWQcU/d8twzvm8bkZ9nUyY9NdEiz3BGlQxxq5aCptdZeocn0y0RApYjp59hnfApHVa+kQ42v
	SNANO/ZsO4giEetibQT7mFO+8jYdq8QHEYUCQZTkFczvfZJ+g1jTOg+iqePIoxjX782GRbaWXBUP9
	fcp8s+B7rksmQ4gGrx/W9yOXxvFG/vUlAeTbUvyu1zYrNvENAC6WL9yPWJaqIV8n6PVi5L8amwQ3h
	QDfCeyk04kCBgCc4rQJWDHEIoJ9qOrth4i5ADsr2JPgGyLlbuT9JUN5P35yXImXoivfU789SHUYYT
	OfJN+cxDQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1lGgMv-0006n8-QG; Mon, 01 Mar 2021 11:05:41 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lGgMt-0006mW-3Y
 for barebox@lists.infradead.org; Mon, 01 Mar 2021 11:05:40 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1lGgMq-0000uq-MA; Mon, 01 Mar 2021 12:05:36 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: Jules Maselbas <jmaselbas@kalray.eu>, Stafford Horne <shorne@gmail.com>
References: <20210223095902.GD5549@pengutronix.de>
 <7c538f1d-9cc4-c25c-0ccd-44831597c80e@kalray.eu>
 <20210225124500.GA365039@lianli.shorne-pla.net>
 <20210225130240.GA5081@tellis.lin.mbt.kalray.eu>
 <ba82e9ef-9d9a-179c-1688-a9aeb12413d3@pengutronix.de>
Message-ID: <36fa4f92-6f5d-d24c-988c-e85c207864bb@pengutronix.de>
Date: Mon, 1 Mar 2021 12:05:35 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <ba82e9ef-9d9a-179c-1688-a9aeb12413d3@pengutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210301_060539_193391_A597D137 
X-CRM114-Status: GOOD (  19.21  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Cc: Yann Sionneau <ysionneau@kalray.eu>,
 Barebox List <barebox@lists.infradead.org>, Sascha Hauer <sha@pengutronix.de>,
 shorne@opencores.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1231::1
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: nios2 and openrisc in barebox
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello,

On 25.02.21 16:33, Ahmad Fatoum wrote:

> On 25.02.21 14:02, Jules Maselbas wrote:
>> On Thu, Feb 25, 2021 at 09:45:00PM +0900, Stafford Horne wrote:
>>> Hello,
>>>
>>> I am the maintainer of most OpenRISC things right now.  I would be happy to
>>> help, but I don't really use barebox right now.  Most of my deployments I use
>>> with litex FPGA SoC's that has its own bootloader.
>>>
>>> That said, we have a setjmp/longjmp implementation in our glibc port which I
>>> have been testing for upstreaming lately.
>>>
>>>   https://github.com/stffrdhrn/or1k-glibc/blob/or1k-port-2/sysdeps/or1k/setjmp.S
>>>   https://github.com/stffrdhrn/or1k-glibc/blob/or1k-port-2/sysdeps/or1k/__longjmp.S
>>>
>>> I had a look at the barebox docs and openrisc port, it seems like there is
>>> support for our standard platform, or1ksim, which is the same as my de0-nano
>>> fpga board/soc and qemu.  I should be able to make use of this.
>>>
>>> Is there a branch where you are doing the green thread work?  I could add and
>>> test the OpenRISC implementation.
>> Hi,
>>
>> I've done this yesterday, I've push a branch[1] that has the green
>> thread paches applied (except patches on usb mass storage gadget).
>> https://github.com/jmaselbas/barebox/tree/test_setjmp 
> 
> Great. Thanks. I'm preparing an updated version that will clean it up
> a bit, but the heart part of architectures providing setjmp/longjmp/initjmp
> will stay the same.
> 
> Small request:
>   If you implement initjmp, could you have it save into jmp_buf a frame
>   pointer value of NULL if applicable? That way, should backtrace be
>   implemented (or done via JTAG), they have a defined end.

Dismiss this last request. C code will just zero-initialize jmp_buf,
so initjmp needs only fill out return address and stack pointer. I just
sent out a series, which can be used to develop this one.

@Jules, any chance you could take over the kvx port? :-)

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

