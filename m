Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wy0-f177.google.com ([74.125.82.177])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QbUJd-0004xP-K1
	for barebox@lists.infradead.org; Tue, 28 Jun 2011 09:10:43 +0000
Received: by wyf23 with SMTP id 23so4642205wyf.36
	for <barebox@lists.infradead.org>; Tue, 28 Jun 2011 02:10:38 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20110628072147.GG6069@pengutronix.de>
References: <1309194834-2292-1-git-send-email-antonynpavlov@gmail.com>
	<1309194834-2292-2-git-send-email-antonynpavlov@gmail.com>
	<20110628072147.GG6069@pengutronix.de>
Date: Tue, 28 Jun 2011 13:03:36 +0400
Message-ID: <BANLkTi=MjbrK7EKMv7=u7S+M2bju4umBZA@mail.gmail.com>
From: Antony Pavlov <antonynpavlov@gmail.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 2/2] Add MIPS arch support to barebox
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 28/06/2011, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> On Mon, Jun 27, 2011 at 09:13:54PM +0400, Antony Pavlov wrote:
>> Only supported board is qemu malta:
>>   * barebox works in uncached memory;
>>   * no peripherals support, but serial port.
>>
>> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
>
> Looks mostly good, some comments inline.

...

>>
>> diff --git a/arch/mips/boards/malta/serial.c
>> b/arch/mips/boards/malta/serial.c
>> new file mode 100644
>> index 0000000..b3ade0c
>> --- /dev/null
>> +++ b/arch/mips/boards/malta/serial.c
...
>
> The whole file is inside CONFIG_DRIVER_SERIAL_NS16550, so you can do
> a obj-$(CONFIG_DRIVER_SERIAL_NS16550) += serial.o in the Makefile
> instead.

Ok.


>> diff --git a/arch/mips/configs/malta_defconfig
>> b/arch/mips/configs/malta_defconfig
>
> Please generate your defconfig file with make savedefconfig

I have know nothing about savedefconfig. I will use it.

>> +/**
>> + * @file
>> + * @brief mips posix types
>> + *
>> + * Minimal set to make all the other header files copied from the Linxu
>> kernel happy
>
> s/Linxu/Linux/
>

I did't used spell checker, but I must do.

:)

...

>> +void reset_cpu(ulong addr)
>> +{
>> +	/** How to reset the machine? */
>
> I don't know either. We should add some printf here until we know.
>

qemu malta board has magic register to reset the machine
(see "SOFTRES Register" in qemu.git/hw/mips_malta.c).

For other board we can easily jump to start of bootrom. I think it is
possible in th future to introduce option to configure reset_cpu()'s
behavior.

-- 
Best regards,
  Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
