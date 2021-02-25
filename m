Delivery-date: Thu, 25 Feb 2021 16:34:44 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lFIf6-0007Sr-OX
	for lore@lore.pengutronix.de; Thu, 25 Feb 2021 16:34:44 +0100
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lFIf5-00018s-NW
	for lore@pengutronix.de; Thu, 25 Feb 2021 16:34:44 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=iXls71ZkBpuRi7EJAUjdvNgnucw4S7O/Nx3aZVCNrys=; b=ENf+aPLtHWjJXOIY14yvUJ5Uw
	CJOpeZDGEp6r4S8gQs+7egAK5xNL9lDol+26UhGqR/bMw8NvkJazvxlB/rqynKdZXNPGFHMgRtjy6
	x6nBUZBJfSxdfce7eqYxq2vHmTOHsM/SkKJH102KvKvvJSLIEdP1deAkLmo4CNzE6YN1t51TUYkvk
	p7Vz6yr6Hw17axPWqGkKCNYPzSpJm43xfu/xCdmFxY9E06T2xJ6MaxwaPhrB0AKxfo66sAo98NhR7
	EPDqllgBA0h1TyjvknqJDaNfyraQgK4LdqsQ3J9F584DEpK2fmMQQO1elVzx575C37Lt54RC5bmXi
	B0110Husw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1lFIde-0000UP-0J; Thu, 25 Feb 2021 15:33:14 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lFIda-0000TX-8n
 for barebox@lists.infradead.org; Thu, 25 Feb 2021 15:33:11 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1lFIdY-00015n-DZ; Thu, 25 Feb 2021 16:33:08 +0100
To: Jules Maselbas <jmaselbas@kalray.eu>, Stafford Horne <shorne@gmail.com>
References: <20210223095902.GD5549@pengutronix.de>
 <7c538f1d-9cc4-c25c-0ccd-44831597c80e@kalray.eu>
 <20210225124500.GA365039@lianli.shorne-pla.net>
 <20210225130240.GA5081@tellis.lin.mbt.kalray.eu>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <ba82e9ef-9d9a-179c-1688-a9aeb12413d3@pengutronix.de>
Date: Thu, 25 Feb 2021 16:33:06 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <20210225130240.GA5081@tellis.lin.mbt.kalray.eu>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210225_103310_409077_6311E013 
X-CRM114-Status: GOOD (  20.51  )
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
X-Spam-Status: No, score=-3.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: nios2 and openrisc in barebox
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello,

On 25.02.21 14:02, Jules Maselbas wrote:
> On Thu, Feb 25, 2021 at 09:45:00PM +0900, Stafford Horne wrote:
>> Hello,
>>
>> I am the maintainer of most OpenRISC things right now.  I would be happy to
>> help, but I don't really use barebox right now.  Most of my deployments I use
>> with litex FPGA SoC's that has its own bootloader.
>>
>> That said, we have a setjmp/longjmp implementation in our glibc port which I
>> have been testing for upstreaming lately.
>>
>>   https://github.com/stffrdhrn/or1k-glibc/blob/or1k-port-2/sysdeps/or1k/setjmp.S
>>   https://github.com/stffrdhrn/or1k-glibc/blob/or1k-port-2/sysdeps/or1k/__longjmp.S
>>
>> I had a look at the barebox docs and openrisc port, it seems like there is
>> support for our standard platform, or1ksim, which is the same as my de0-nano
>> fpga board/soc and qemu.  I should be able to make use of this.
>>
>> Is there a branch where you are doing the green thread work?  I could add and
>> test the OpenRISC implementation.
> Hi,
> 
> I've done this yesterday, I've push a branch[1] that has the green
> thread paches applied (except patches on usb mass storage gadget).
> https://github.com/jmaselbas/barebox/tree/test_setjmp 

Great. Thanks. I'm preparing an updated version that will clean it up
a bit, but the heart part of architectures providing setjmp/longjmp/initjmp
will stay the same.

Small request:
  If you implement initjmp, could you have it save into jmp_buf a frame
  pointer value of NULL if applicable? That way, should backtrace be
  implemented (or done via JTAG), they have a defined end.

Cheers,
Ahmad

> To test greenthread your can run the `poller -c` command in barebox's
> prompt. To do you you'll need to enable CONFIG_POLLER_YIELD and define
> CONFIG_HAS_ARCH_SJLJ
> 
> Best,
> Jules
>  
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

