Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp2-g21.free.fr ([212.27.42.2])
	by canuck.infradead.org with esmtp (Exim 4.72 #1 (Red Hat Linux))
	id 1PwzGr-0004Cu-PO
	for barebox@lists.infradead.org; Tue, 08 Mar 2011 15:56:26 +0000
Message-ID: <4D7651A2.90301@eukrea.com>
Date: Tue, 08 Mar 2011 16:56:18 +0100
From: =?UTF-8?B?RXJpYyBCw6luYXJk?= <eric@eukrea.com>
MIME-Version: 1.0
References: <4D764613.5020708@telemotive.de>
	<AANLkTi=CXxPuac0Jub=uyD-A0qvDMgK2UVYv++JP_X+T@mail.gmail.com>
In-Reply-To: <AANLkTi=CXxPuac0Jub=uyD-A0qvDMgK2UVYv++JP_X+T@mail.gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: Install barebox to target
To: thomas.mayer@telemotive.de
Cc: barebox@lists.infradead.org

Hi Thomas,

> 2011/3/8 Thomas Mayer<thomas.mayer@telemotive.de>:
>> according to the cpu datasheet  the bootloader has to store at offset
>> 0x400 (1KByte).
>> I tried to dd barebox that way  but it didn't work (command: "dd
>> if=barebox.bin of=/dev/sdb bs=512 seek=2&&  sync&&  sync").
>> I also tried to use the prebuild freescale redboot binary with mmc
>> support and this works.
>>
>> Have you any idea what I'm doing wrong?
>> Is it possible that a mmc binary need a special flash header to work
>> correctly?
>
check arch/arm/boards/eukrea_cpuimx35/flash_header.c
it works fine on our i.MX35 baord but I had to hack CPUIMX35_FLASH_HEADER_BASE 
to get it working.

Eric

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
