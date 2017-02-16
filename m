Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtprelay0236.hostedemail.com ([216.40.44.236]
 helo=smtprelay.hostedemail.com)
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1ceJyK-0002pw-Oz
 for barebox@lists.infradead.org; Thu, 16 Feb 2017 11:11:39 +0000
References: <20170215071227.31183-1-antonynpavlov@gmail.com>
 <20170216073430.4hctt6wnbkfiemtk@pengutronix.de>
From: Ian Abbott <abbotti@mev.co.uk>
Message-ID: <d7f8480d-f190-340b-b881-f59e990cad34@mev.co.uk>
Date: Thu, 16 Feb 2017 11:11:10 +0000
MIME-Version: 1.0
In-Reply-To: <20170216073430.4hctt6wnbkfiemtk@pengutronix.de>
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
Subject: Re: [RFC 0/2] sandbox: add gpio support with libftdi1
To: Sascha Hauer <s.hauer@pengutronix.de>, Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On 16/02/17 07:34, Sascha Hauer wrote:
> Hi Antony,
>
> On Wed, Feb 15, 2017 at 10:12:25AM +0300, Antony Pavlov wrote:
>> This patch series makes it possible to use FT2232H ACBUS[7:0]
>> pins as gpio pins from sandbox barebox.
>>
>> I have tested output gpio functionality by connecting
>> a LED to ACBUS[0] and lightening it with gpio_direction_output
>> and gpio_set_value barebox commands.
>>
>> Also I have performed input test with ACBUS[0] -> ACBUS[1] loopback.
>>
>> The main goal of adding gpio functionality to sandbox barebox
>> is using it for connecting real i2c and spi devices to sandbox barebox
>> (not tested yet).
>
> I just read that the FT2232H can even do native I2C and SPI, so no gpio
> bitbanging would be necessary. Would it be possible to use this mode
> instead?
>
> Otherwise I think there should be a possibility to specify which, if
> any, FT2232H chip barebox uses.

The MPSSE mode of the FT2232H can sort of do native I2C, but not in a 
strictly conforming way.  The I2C SDA needs to be connected to two pins 
on the FT2232H, one for output and one for input, and there is a 
"Drive-Only-Zero" option for the output to ensure it is only driven low, 
and tri-stated high.  However, the I2C SCL is only connected to an 
output pin on the FT2232H, and is always driven in both directions. 
Therefore, it does not support "clock-stretching" by I2C slaves (where a 
slave pulls the SCL line low until it is ready), because it cannot read 
back the state of the SCL line.  Worse, if an I2C slave is doing 
clock-stretching by driving SCL low, this will contend with the FT2232H 
driving SCL high at the same time.

-- 
-=( Ian Abbott @ MEV Ltd.    E-mail: <abbotti@mev.co.uk> )=-
-=(                          Web: http://www.mev.co.uk/  )=-

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
