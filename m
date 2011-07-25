Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wy0-f177.google.com ([74.125.82.177])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QlGra-0002fK-VD
	for barebox@lists.infradead.org; Mon, 25 Jul 2011 08:50:11 +0000
Received: by wyf23 with SMTP id 23so3493193wyf.36
	for <barebox@lists.infradead.org>; Mon, 25 Jul 2011 01:50:06 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20110725025751.GC10295@game.jcrosoft.org>
References: <1311535336-4534-1-git-send-email-antonynpavlov@gmail.com>
	<1311535336-4534-7-git-send-email-antonynpavlov@gmail.com>
	<20110725025751.GC10295@game.jcrosoft.org>
Date: Mon, 25 Jul 2011 12:50:06 +0400
Message-ID: <CAA4bVAGHxrNbq-UvcuTyyuLVxyQg-Q5Do+CMt114PgiQ53dR9w@mail.gmail.com>
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
Subject: Re: [PATCH 08/10] MIPS: add initial D-Link DIR-320 wireless router
	support
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On 25/07/2011, Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com> wrote:
> On 23:22 Sun 24 Jul     , Antony Pavlov wrote:

Thanks for your notes.

>> Can be started from CFE using tftp, e.g.:
>>
>>   CFE> ifconfig eth0 -addr=192.168.0.99
>>   CFE> boot -tftp -addr=a0800000 -raw 192.168.0.1:barebox.bin
> how abaut put this in doxygen?

You are right.

>> +
>> +/* we are expecting always one serial interface */
>> +static struct device_d dir320_serial_device = {
>> +	.name = "serial_ns16550",
>> +	.map_base = DEBUG_LL_UART_ADDR,
>> +	.size = 8,
>> +	.platform_data = (void *)&serial_plat,
>> +};
> please rebase this against next branch
>
> map_base and size are depricated

Ok

-- 
Best regards,
  Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
