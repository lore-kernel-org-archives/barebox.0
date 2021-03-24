Delivery-date: Wed, 24 Mar 2021 09:28:55 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lOysp-0006D8-Hf
	for lore@lore.pengutronix.de; Wed, 24 Mar 2021 09:28:55 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lOyso-0003PH-8C
	for lore@pengutronix.de; Wed, 24 Mar 2021 09:28:55 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=fL+N6UZ89kqLlsmWCEOs+3ff6AQSuN3nZKdbQhXSqe8=; b=Xh7dSi48YDFHCVRnbXvTN93Rt
	kLWMYCsIXZBLdWQ/0EejRjHEsiyzis+HS6RaPTcCKrepCjVlcmRtXHwinbUlAKDaRRyPSVktZIumv
	csdMXG2KabYNEU5QXYJuVM3FYiFpgDXOt4jlgLoBWQWD9juHHAW5GoB1uXRc4yW3IzxNTr3SqXdwa
	yWeq6lcxL2LQRs6mlO5312gbvNlXZmc7OTjZtFUjXI7K6RIlie1ZDeT6vjui6gh4oo7HID5KyKzyg
	R7xlhpjaDvjhR4hyrgvx5hTtQdIghq1gZjuP0YZ19hhPH780yc1C+U/saEEFKtuZcYOOK3eDvI7uH
	9aTETyrlA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lOyra-00Gc2r-Nu; Wed, 24 Mar 2021 08:27:39 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lOyr8-00GbsV-Mn
 for barebox@lists.infradead.org; Wed, 24 Mar 2021 08:27:19 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1lOyr7-00037N-4l; Wed, 24 Mar 2021 09:27:09 +0100
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org, rcz@pengutronix.de
References: <20210321151344.5810-1-a.fatoum@pengutronix.de>
 <20210321151344.5810-16-a.fatoum@pengutronix.de>
 <20210324004335.8ec9b1a909b2ea1eae712ec5@gmail.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <91bbfeef-133f-2366-7700-1ade1d458445@pengutronix.de>
Date: Wed, 24 Mar 2021 09:27:08 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <20210324004335.8ec9b1a909b2ea1eae712ec5@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210324_082711_624874_36792B15 
X-CRM114-Status: GOOD (  18.02  )
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
	MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v3 15/21] RISC-V: erizo: migrate to PBL
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Antony,

On 23.03.21 22:43, Antony Pavlov wrote:
> On Sun, 21 Mar 2021 16:13:38 +0100
> Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:
> 
> Hi!
> 
> I have good news and bad news.
> 
> The good news is that erizo barebox successfully runs on real FPGA hardware.
> 
> The bad news is that there is no "stack" region in erizo iomem output;

Just sent out a fix. I missed that common code can no longer request
the stack memory region as we have a dynamic STACK_BASE now.

> also barebox relocated to te middle of RAM not to the top of RAM:
> 
> barebox:/ iomem
> 0x00000000 - 0xffffffff (size 0x00000000) iomem
>   0x80000000 - 0x807fffff (size 0x00800000) ram0
>     0x802ffd80 - 0x803ffd7f (size 0x00100000) malloc space
>     0x803ffd80 - 0x803fffc3 (size 0x00000244) board data
>     0x80400000 - 0x80436cff (size 0x00036d00) barebox
>     0x80436d00 - 0x8043eec7 (size 0x000081c8) barebox data
>     0x8043eec8 - 0x8044336f (size 0x000044a8) bss
>   0x90000000 - 0x9000001f (size 0x00000020) 90000000.uart@90000000.of
>   0x91000000 - 0x91000003 (size 0x00000004) 91000000.gpio@91000000.of
>   0x91000004 - 0x91000007 (size 0x00000004) 91000000.gpio@91000000.of
> barebox:/ 

Stack is:
	0x805e0000 - 0x805fffff (size 0x00020000) stack

ARM placed the top most memory region 1M from the end of memory. I chose
2M for RISC-V, because Qemu for Virt places the FDT into the last 2M.

I've adjust the virt entry point to take care of this and removed the 2M.
My memory map is now:

0x00000000 - 0xffffffff (size 0x00000000) iomem
  0x80000000 - 0x807fffff (size 0x00800000) ram0
    0x804ffd80 - 0x805ffd7f (size 0x00100000) malloc space
    0x805ffd80 - 0x805fffc3 (size 0x00000244) board data
    0x80600000 - 0x80636c7f (size 0x00036c80) barebox
    0x80636c80 - 0x8063ee53 (size 0x000081d4) barebox data
    0x8063ee54 - 0x806432ff (size 0x000044ac) bss
    0x807e0000 - 0x807fffff (size 0x00020000) stack
  0x90000000 - 0x9000001f (size 0x00000020) 90000000.uart@90000000.of
  0x91000000 - 0x91000003 (size 0x00000004) 91000000.gpio@91000000.of
  0x91000004 - 0x91000007 (size 0x00000004) 91000000.gpio@91000000.of

barebox is now 2M from the end of RAM. This is because barebox PBL
doesn't have information on how big barebox proper BSS is. I am doing
it like ARM and assume 1M.

Thanks for testing and let me know if this works for you,
Ahmad

> 
> Please compare with mips malta and arm vexpress-a9 iomem output:
> 
> barebox@qemu malta:/ iomem
> 0x00000000 - 0xffffffff (size 0x00000000) iomem
>   0x180003f8 - 0x180003ff (size 0x00000008) 180003f8.serial@180003f8.of
>   0x1e000000 - 0x1e3fffff (size 0x00400000) 1e000000.flash@1e000000.of
>   0x1f000900 - 0x1f00093f (size 0x00000040) 1f000900.serial@1f000900.of
>   0x1f000b00 - 0x1f000b1f (size 0x00000020) 1f000b00.gpio@1f000b00.of
>   0xa0000000 - 0xafffffff (size 0x10000000) kseg1_ram0
>     0xafb39000 - 0xafb3ffff (size 0x00007000) stack
>     0xafb40000 - 0xaff3ffff (size 0x00400000) malloc space
>     0xaff40000 - 0xaffa3fdf (size 0x00063fe0) barebox
>     0xaffa3fe0 - 0xafff249f (size 0x0004e4c0) barebox data
>     0xafffa4a0 - 0xafffe60b (size 0x0000416c) bss
> barebox@qemu malta:/ 
> 
> 
> barebox@V2P-CA9:/ iomem
> 0x00000000 - 0xffffffff (size 0x00000000) iomem
>   0x10004000 - 0x10004fff (size 0x00001000) amba
>   0x10005000 - 0x10005fff (size 0x00001000) amba
>   0x10006000 - 0x10006fff (size 0x00001000) amba
>   0x10007000 - 0x10007fff (size 0x00001000) amba
>   0x10009000 - 0x10009fff (size 0x00001000) amba
>   0x1000a000 - 0x1000afff (size 0x00001000) amba
>   0x1000b000 - 0x1000bfff (size 0x00001000) amba
>   0x1000c000 - 0x1000cfff (size 0x00001000) amba
>   0x10011000 - 0x10011fff (size 0x00001000) amba
>   0x10012000 - 0x10012fff (size 0x00001000) amba
>   0x10017000 - 0x10017fff (size 0x00001000) amba
>   0x1001f000 - 0x1001ffff (size 0x00001000) amba
>   0x10020000 - 0x10020fff (size 0x00001000) amba
>   0x40000000 - 0x43ffffff (size 0x04000000) 40000000.flash@0,00000000.of
>   0x44000000 - 0x47ffffff (size 0x04000000) 40000000.flash@0,00000000.of
>   0x60000000 - 0x9fffffff (size 0x40000000) ram0
>     0x6fefe1c0 - 0x7fdfc37f (size 0x0fefe1c0) malloc space
>     0x7fdfc380 - 0x7fdfffe3 (size 0x00003c64) board data
>     0x7fe00000 - 0x7fe5749f (size 0x000574a0) barebox
>     0x7fe574a0 - 0x7feabb9f (size 0x00054700) barebox data
>     0x7feabba0 - 0x7feae90f (size 0x00002d70) bss
>     0x7ffe8000 - 0x7ffeffff (size 0x00008000) stack
> barebox@V2P-CA9:/ 
> 
> 
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

