Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from nasmtp01.atmel.com ([192.199.1.245]
 helo=DVREDG01.corp.atmel.com)
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XEYh0-0003rp-Lh
 for barebox@lists.infradead.org; Tue, 05 Aug 2014 06:57:58 +0000
Message-ID: <53E07FE4.6070107@atmel.com>
Date: Tue, 5 Aug 2014 14:55:32 +0800
From: Bo Shen <voice.shen@atmel.com>
MIME-Version: 1.0
References: <1407141112-3868-1-git-send-email-poggi.raph@gmail.com>
 <53DF4E49.3040501@atmel.com>
 <CACqcpZDrqaMNRj5NVmLgvoP1UYwZf03iZsAX32qspwgeZiRhig@mail.gmail.com>
 <53DF5293.2010305@atmel.com>
In-Reply-To: <53DF5293.2010305@atmel.com>
Content-Type: multipart/mixed; boundary="------------050101090800040400050709"
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH V2 0/2] Add device tree support of i2c Atmel driver
To: =?UTF-8?B?UmFwaGHDq2wgUG9nZ2k=?= <raphio98@gmail.com>
Cc: barebox@lists.infradead.org

--------------050101090800040400050709
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: 8bit

Hi Raphaël Poggi,

On 08/04/2014 05:29 PM, Bo Shen wrote:
> Hi Raphaël Poggi,
>
> On 08/04/2014 05:22 PM, Raphaël Poggi wrote:
>> Hi,
>>
>> I have tested it on a custom board which use a sam9m10 and it
>> worked... Tell me more when we have found something suspicious.
>
> I tested on sama5d3xek with qt1070 connect to i2c, and the i2c host
> register successfully, however can not access qt1070, if I use i2c-gpio
> driver, it works well.
>
> I am still working on it, if any news, I will let you know.

I have re-write the interrupt function as the enclosed patch. Then, the 
i2c host driver works properly.

Can you help test it also on your board?

Thanks.

> Best Regards,
> Bo Shen
>
>> Thanks for your test.
>>
>> Raphaël Poggi
>>

Best Regards,
Bo Shen

--------------050101090800040400050709
Content-Type: text/x-patch;
	name="0001-I2C-at91-fix-the-method-for-interrupt.patch"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename="0001-I2C-at91-fix-the-method-for-interrupt.patch"

From 1dd3da701f15d360b5432c9d2eb6e5ca1e5368ad Mon Sep 17 00:00:00 2001
From: Bo Shen <voice.shen@atmel.com>
Date: Tue, 5 Aug 2014 14:41:31 +0800
Subject: [PATCH] I2C: at91: fix the method for interrupt

As the i2c-at91 driver won't work in the interrupt mode,
so need to poll the interrupts.

Signed-off-by: Bo Shen <voice.shen@atmel.com>
---
 drivers/i2c/busses/i2c-at91.c | 38 +++++++++++++++++++++++---------------
 1 file changed, 23 insertions(+), 15 deletions(-)

diff --git a/drivers/i2c/busses/i2c-at91.c b/drivers/i2c/busses/i2c-at91.c
index 944a8b3..8e3afe6 100644
--- a/drivers/i2c/busses/i2c-at91.c
+++ b/drivers/i2c/busses/i2c-at91.c
@@ -174,24 +174,32 @@ static void at91_twi_read_next_byte(struct at91_twi_dev *dev)
 static int at91_twi_wait_completion(struct at91_twi_dev *dev)
 {
 	uint64_t start = get_time_ns();
-	unsigned int status = at91_twi_read(dev, AT91_TWI_SR);
-	unsigned int irqstatus = at91_twi_read(dev, AT91_TWI_IMR);
+	unsigned int status;
+	unsigned int irqstatus;
+
+	do {
+		status = at91_twi_read(dev, AT91_TWI_SR);
+		irqstatus = at91_twi_read(dev, AT91_TWI_IMR);
+
+		if (!(status & irqstatus)) {
+			if(is_timeout(start, AT91_I2C_TIMEOUT)) {
+				dev_warn(&dev->adapter.dev, "timeout waiting for bus ready\n");
+				return -ETIMEDOUT;
+			} else {
+				continue;
+			}
+		}
 
-	if (irqstatus & AT91_TWI_RXRDY)
-		at91_twi_read_next_byte(dev);
-	else if (irqstatus & AT91_TWI_TXRDY)
-		at91_twi_write_next_byte(dev);
-	else
-		dev_warn(&dev->adapter.dev, "neither rx and tx are ready\n");
+		if (irqstatus & AT91_TWI_RXRDY)
+			at91_twi_read_next_byte(dev);
+		else if (irqstatus & AT91_TWI_TXRDY)
+			at91_twi_write_next_byte(dev);
+		else
+			dev_warn(&dev->adapter.dev, "neither rx and tx are ready\n");
 
-	dev->transfer_status |= status;
+		dev->transfer_status |= status;
 
-	while(!(at91_twi_read(dev, AT91_TWI_SR) & AT91_TWI_TXCOMP)) {
-		if(is_timeout(start, AT91_I2C_TIMEOUT)) {
-			dev_warn(&dev->adapter.dev, "timeout waiting for bus ready\n");
-			return -ETIMEDOUT;
-		}
-	}
+	} while (!(at91_twi_read(dev, AT91_TWI_SR) & AT91_TWI_TXCOMP));
 
 	at91_disable_twi_interrupts(dev);
 
-- 
1.8.5.2


--------------050101090800040400050709
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--------------050101090800040400050709--
