Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from qmail34.e-mind.com ([188.94.192.34] helo=qmail.e-mind.com)
 by bombadil.infradead.org with smtp (Exim 4.87 #1 (Red Hat Linux))
 id 1dJEOE-00066f-Cg
 for barebox@lists.infradead.org; Fri, 09 Jun 2017 07:31:33 +0000
References: <5caded00-8ec7-f66e-0922-11d32f719081@eurekelettronica.it>
 <20170609061505.3tnirp55o5rfpbra@pengutronix.de>
 <8b1cafb3-8e87-8ce8-e4e1-42d28f82d1b0@eurekelettronica.it>
From: gianluca <gianlucarenzi@eurekelettronica.it>
Message-ID: <b1dd6d19-7733-fe2c-1589-1421c1188ed5@eurekelettronica.it>
Date: Fri, 9 Jun 2017 09:31:05 +0200
MIME-Version: 1.0
In-Reply-To: <8b1cafb3-8e87-8ce8-e4e1-42d28f82d1b0@eurekelettronica.it>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: New Board i.MX6 Dual Lite based
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 06/09/2017 09:25 AM, gianluca wrote:
>
>>>> i2c0: <i2c_fsl_bus_busy> timeout waiting for I2C bus busy
>>>> ek360_read_eeprom :Error on reading eeprom @ 0
>>>> ek360_read_eeprom :Error on reading bytes.
>>>> ek360_detect_hw :** ERROR on READ EEPROM BOARD ret: -1
>>>> Hit CTRL-C key to stop autoboot:  1
>>>
>>> Another issue is the i2c bus.
>>
>> You should measure the I2C data line with an oscilloscope. It could be
>> that the line is constantly low. This can happen if the pullup resistor
>> is missing (Pinmux?). Also in rare cases this can happen when a board is
>> resetted in the middle of a I2C transfer.
>>
>
> Now I am trying to extend the I2C Lines outside the board for a
> oscilloscope and/or a Saleae Logic Bus Analyzer. As soon as I find the
> solution or not I will keep you informed.
>
> Anyway in the config there is both GPIO BASED I2C DRIVER and Platform
> iMX Driver. I tried to disable the GPIO Based but it does not work.
>
> Now I am thinking about some pulled-low/high line by some chips in the
> board. I will see.
>

Due to an inversion on mounting the i2c eeprom all i2c chips are 
mulfunctioning, so I am trying to uses another board.

Now it works.

Good!

Thank you for everything.
-- 
Eurek s.r.l.                          |
Electronic Engineering                | http://www.eurek.it
via Celletta 8/B, 40026 Imola, Italy  | Phone: +39-(0)542-609120
p.iva 00690621206 - c.f. 04020030377  | Fax:   +39-(0)542-609212

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
