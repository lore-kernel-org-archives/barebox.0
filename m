Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pd0-x231.google.com ([2607:f8b0:400e:c02::231])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Ur8Y0-0004nA-F9
 for barebox@lists.infradead.org; Mon, 24 Jun 2013 15:19:18 +0000
Received: by mail-pd0-f177.google.com with SMTP id p10so527443pdj.22
 for <barebox@lists.infradead.org>; Mon, 24 Jun 2013 08:18:54 -0700 (PDT)
Message-ID: <51C8635C.4030702@gmail.com>
Date: Tue, 25 Jun 2013 00:18:52 +0900
From: NISHIMOTO Hiroki <hiroki.nishimoto.if@gmail.com>
MIME-Version: 1.0
References: <51C83929.70001@gmail.com> <51C85FAD.5090002@gmail.com>
In-Reply-To: <51C85FAD.5090002@gmail.com>
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
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] ns16550: add device tree support
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: barebox@lists.infradead.org

Sebastian,

Thanks for your reviwing.
I will re-send as v2.

NISHIMOTO Hiroki


> On 06/24/13 14:18, NISHIMOTO Hiroki wrote:
>> This patch adds device tree support for serial_ns16550 driver.
>>
>> Tested with pcduino (allwinner a10).
>>
>> Signed-off-by: NISHIMOTO Hiroki <hiroki.nishimoto.if@gmail.com>
>> ---
>>   .../devicetree/bindings/serial/ns16550_serial.txt  | 34 ++++++++++++++
>>   drivers/serial/serial_ns16550.c                    | 53 ++++++++++++++++++++--
>>   2 files changed, 84 insertions(+), 3 deletions(-)
>>   create mode 100644 Documentation/devicetree/bindings/serial/ns16550_serial.txt
>>
>> diff --git a/Documentation/devicetree/bindings/serial/ns16550_serial.txt b/Documentation/devicetree/bindings/serial/ns16550_serial.txt
>> new file mode 100644
>> index 0000000..848f949
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/serial/ns16550_serial.txt
>> @@ -0,0 +1,34 @@
>> +* NS16550 UART
>> +
>> +Required properties:
>> +- compatible : "ns16550_serial"
> 
> Hiroki,
> 
> as stated in Documentation/devicetree/bindings/README, barebox uses the same bindings as "the kernel" which is Linux I guess. Linux already has
> a binding for ns16550 compatible serial.
> 
> I suggest to use that binding as a reference although it is not
> documented but needs to be stripped from its source code.
> 
>> +- reg : offset and length of the register set for the device.
>> +
>> +
>> +Optional properties:
>> +- clock-frequency : the input clock frequency for the UART.
>> +- reg-shift : quantity to shift the register offsets by.  If this property is
>> +  not present then the register offsets are not shifted.
>> +- reg-io-width : the size (in bytes) of the IO accesses that should be
>> +  performed on the device.  If this property is not present then single byte
>> +  accesses are used.
>> +- disable-fifo :
>> +    0: enable tx/rx fifo (default value)
>> +    1: disable tx/rx fifo
>> +- console-stdin : activate stdin on this console.
>> +- console-stdout : activate stdout on this console.
>> +- console-stderr : activate stderr on this console.
> 
> ePAPR specification already defines stdout-path and stdin-path.
> Moreover, barebox has of_device_is_stdout_path to check if a device is
> referenced by stdout-path property.
> 
> Sebastian
> 


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
