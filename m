Delivery-date: Fri, 12 Mar 2021 13:36:01 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lKh1N-0004Ty-Kv
	for lore@lore.pengutronix.de; Fri, 12 Mar 2021 13:36:01 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lKh1M-0002QW-Mv
	for lore@pengutronix.de; Fri, 12 Mar 2021 13:36:01 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=TBp2Dv8t8A9b6nS/2g2vwqreUwuE25a7CHvAShJlGDA=; b=CVhED6H7f6+uiahWn/e8ssukh
	rPzBI5dN6Mhd7H3KqgXY0+z041biO2tlbWIt71v/zb68qa9iR9YzK9/kIOrgvJLOgkyhw8g2xUxl5
	4DFANgAHvrDc96X2B1n6XxWwAgqZYbwmNlS1iQpq1ZKoqTzdBZqNbJo+NVfpmm6Ibo0ris0/RK6M9
	/SJm5w4Uc/zq9cCNw+LwbhdK6Zl+BMw/HHdomJLnEn73HcTnMCJmT35fToMOaf3wL19G7HDQ77AzT
	w2FUaN5zbJ09/w9R3cwpxLxTdM2oYVGgLjOr100q5Tokad1XxHP1ptRwnHc1dd0FYqTOOguNcYqKl
	RMvnk8ihg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lKh0T-00BRQG-CL; Fri, 12 Mar 2021 12:35:05 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lKh0K-00BROR-2g
 for barebox@lists.infradead.org; Fri, 12 Mar 2021 12:35:01 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1lKh0J-0002Gd-Df; Fri, 12 Mar 2021 13:34:55 +0100
To: "Gittinger Joerg (XC-ECO/ESH2)" <Joerg.Gittinger@de.bosch.com>,
 "barebox@lists.infradead.org" <barebox@lists.infradead.org>
Cc: Rouven Czerwinski <r.czerwinski@pengutronix.de>
References: <f9f47ca6b7cb4fe88344dea3c63b5d84@de.bosch.com>
 <33279efb-c168-04a4-10fe-8492d426679a@pengutronix.de>
 <091631c2e041496996d0904f0a6c8af7@de.bosch.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <be21afe1-2bf5-44e6-fa19-af17de3800d6@pengutronix.de>
Date: Fri, 12 Mar 2021 13:34:54 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <091631c2e041496996d0904f0a6c8af7@de.bosch.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210312_123456_494078_BD64F041 
X-CRM114-Status: GOOD (  20.68  )
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
X-Spam-Status: No, score=-3.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: AW: Aarch64 Qemu virt - crash
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Joerg,

On 12.03.21 13:23, Gittinger Joerg (XC-ECO/ESH2) wrote:
> Hi Ahmad,
> 
>>> Apparently the NOR cfi driver tries to figure out the flash width by writing to it. In QEMU aarch64 virt machine, the flash starts at 0x0, so the address is correct. 
>>> In barebox config the "QEMU arm64 virt machine" is selected. I tried with specifying a "-pflash ..." parameter at QEMU command line but still got the same exception. 
>>> MMU (SCTLR.M) is turned on - therefore I wonder why I get this exception. It seems that the MMU region for the flash is not or not correctly set up when the memory 
>>> access occurs..? Or do I do something wrong? Please let me know how I get it running.
> 
>> There was recent rework on this platform, please pull again. This particular issue is worked around with
>> 767edcc58757 ("mtd: cfi-flash: fail gracefully instead of crashing on NULL page")
> 
> Yes, cherry-picking this change solved the crash. Thanks.
> 
>> The root cause is that when MMU is enabled, barebox traps NULL pointer dereference and accessing the first page of a cfi-flash mapped at zero looks just like one.
>>
>> The proper fix would be to remap the cfi-flash for this board, but no one has come around to do this yet. An alternative if you need to pass data to barebox is to use 
>> VirtIO Block devices. They need no further configuration than qemu command line parameters. That's in next as well.
> 
> BTW, I tried disabling MMU in config as well as Rouven suggested (thanks). But this gives me a linker error:

Don't cherry pick, check out next. This is also fixed there.

> 
> ---------------------------------------------
> ...
>   LD      barebox
> aarch64-linux-gnu-ld: common/uimage.o: in function `zero_page_memcpy':
> /home/gjt2abt/src/barebox/include/zero_page.h:47: undefined reference to `zero_page_access'
> /home/gjt2abt/src/barebox/include/zero_page.h:47:(.text.uimage_sdram_flush+0xc4): relocation truncated to fit: R_AARCH64_CALL26 against undefined symbol `zero_page_access'
> aarch64-linux-gnu-ld: /home/gjt2abt/src/barebox/include/zero_page.h:49: undefined reference to `zero_page_faulting'
> /home/gjt2abt/src/barebox/include/zero_page.h:49:(.text.uimage_sdram_flush+0xd8): relocation truncated to fit: R_AARCH64_CALL26 against undefined symbol `zero_page_faulting'
> aarch64-linux-gnu-ld: /home/gjt2abt/src/barebox/include/zero_page.h:47: undefined reference to `zero_page_access'
> /home/gjt2abt/src/barebox/include/zero_page.h:47:(.text.file_to_sdram+0xd8): relocation truncated to fit: R_AARCH64_CALL26 against undefined symbol `zero_page_access'
> aarch64-linux-gnu-ld: /home/gjt2abt/src/barebox/include/zero_page.h:49: undefined reference to `zero_page_faulting'
> /home/gjt2abt/src/barebox/include/zero_page.h:49:(.text.file_to_sdram+0xf0): relocation truncated to fit: R_AARCH64_CALL26 against undefined symbol `zero_page_faulting'
> make: *** [Makefile:915: barebox] Error 1
> ---------------------------------------------
> 
> Regards,
> Joerg
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

