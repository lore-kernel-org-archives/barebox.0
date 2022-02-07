Delivery-date: Mon, 07 Feb 2022 09:16:14 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nGzC2-0084X0-GG
	for lore@lore.pengutronix.de; Mon, 07 Feb 2022 09:16:14 +0100
Received: from bombadil.infradead.org ([198.137.202.133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nGzC1-0005vs-4a
	for lore@pengutronix.de; Mon, 07 Feb 2022 09:16:13 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A7O374sFYVT5t0rM96RPaXXMGhD79NkdWNnd9XXPsf0=; b=nI9wKb8VLviht9
	cu+JQkyK+TKKZHc3FNppSY3ZiOufUm9mrpRAY5J8l07LUkHWXbd21bbuziENxhiFuZxu06tukUsaT
	tuJGXMffYr41a5B4OzfV/Z6HK/wSX4b7xg4K8ORoKdbeojtDUJnbY4dHJ+LwfgMwAeZFqmGJ6YU3P
	x0l8HCWOYZxPUuHaK+cqUFJ7YGVu40crtTxKobdohMfIWpm5lL3eEd4T1Y5tHsp96B6lZ56WdlR+l
	xov0thQ9Hn/FApsk6yx/UruEGMsfDWuGabG1f5mhPe2JKhg+3R/dZMGJb6VGq8oD6vlC1MZjIRYj1
	NgnWG4NSm0Wo8E5TK+lg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nGzAq-009JQ6-Ca; Mon, 07 Feb 2022 08:15:00 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nGzAl-009JPl-8t
 for barebox@lists.infradead.org; Mon, 07 Feb 2022 08:14:56 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[127.0.0.1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1nGzAi-0005RO-9a; Mon, 07 Feb 2022 09:14:52 +0100
Message-ID: <7dbece94-3df4-a613-30ae-07c9a9fdb284@pengutronix.de>
Date: Mon, 7 Feb 2022 09:14:51 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: Sascha Hauer <sha@pengutronix.de>, Ahmad Fatoum <ahmad@a3f.at>
Cc: barebox@lists.infradead.org, Frank Wunderlich <frank-w@public-files.de>
References: <20220205231930.2948516-1-ahmad@a3f.at>
 <20220205231930.2948516-2-ahmad@a3f.at>
 <20220207080032.GO23490@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20220207080032.GO23490@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220207_001455_370757_BF25627F 
X-CRM114-Status: GOOD (  25.43  )
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
X-SA-Exim-Connect-IP: 198.137.202.133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 2/2] Documentation: user: barebox: mention generic dt 2nd
 stage support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Sascha,

On 07.02.22 09:00, Sascha Hauer wrote:
> On Sun, Feb 06, 2022 at 12:19:30AM +0100, Ahmad Fatoum wrote:
>> Most users interested in chainloading barebox will probably want to use
>> the generic DT format for that: It will pass the checks the boot command
>> may have and it will ensure the system is in the correct state, e.g.
>> that caches are disabled.
>>
>> Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
>> ---
>>  Documentation/user/barebox.rst | 18 +++++++++++++++---
>>  1 file changed, 15 insertions(+), 3 deletions(-)
>>
>> diff --git a/Documentation/user/barebox.rst b/Documentation/user/barebox.rst
>> index 8634d8e48eef..4abcf79c6d2a 100644
>> --- a/Documentation/user/barebox.rst
>> +++ b/Documentation/user/barebox.rst
>> @@ -203,9 +203,21 @@ Starting barebox
>>  Bringing barebox to a board for the first time is highly board specific, see your
>>  board documentation for initial bringup.
>>  
>> -barebox binaries are, where possible, designed to be startable second stage from another
>> -bootloader. For example, if you have U-Boot running on your board, you can start barebox
>> -with U-Boot's ``bootm`` command:
>> +For ARM and RISC-V, the barebox build can additionally generate a generic DT image
>> +(enable ``CONFIG_BOARD_ARM_GENERIC_DT`` or ``CONFIG_BOARD_RISCV_GENERIC_DT``,
>> +respectively). The resulting ``images/barebox-dt-2nd.img`` can be booted just
>> +like a Linux kernel that is passed an external device tree. For example:
>> +
>> +.. code-block:: console
>> +
>> +  U-Boot: tftp $kernel_addr barebox-dt-2nd.img
>> +  U-Boot: tftp $fdt_addr my-board.dtb
>> +  U-Boot: booti $kernel_addr - $fdt_addr
>> +
>> +For non-DT enabled-bootloaders or other architectures, often the normal barebox
>> +binaries can also be used as they are designed to be startable second stage
>> +from another bootloader, where possible. For example, if you have U-Boot running
>> +on your board, you can start barebox with U-Boot's ``bootm`` command:
> 
> Hm, that seems wrong. U-Boot's bootm command starts images generated
> with U-Boot's mkimage tool. A raw barebox image cannot be started with
> this command, one has to create a uImage from it before.

This is what the documentation is saying right now. It only appeared
in the diff, because I rephrased the start a bit. I don't have a
32-bit ARM U-Boot here to test, so I'd rather not rewrite that part
myself.

Cheers,
Ahmad

> 
> Sascha
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

