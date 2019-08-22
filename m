Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0iGe-0008OR-EE
 for barebox@lists.infradead.org; Thu, 22 Aug 2019 08:16:26 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>) id 1i0iGc-0007cW-Sf
 for barebox@lists.infradead.org; Thu, 22 Aug 2019 10:16:22 +0200
References: <20190731102143.20503-1-a.fatoum@pengutronix.de>
 <20190805091144.rzos4ebit5q37rz6@pengutronix.de>
 <d371c18e-3834-c559-2bde-1fcfd9b155dc@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <387a016b-c15f-8d26-0ec8-346d0a0b564b@pengutronix.de>
Date: Thu, 22 Aug 2019 10:16:22 +0200
MIME-Version: 1.0
In-Reply-To: <d371c18e-3834-c559-2bde-1fcfd9b155dc@pengutronix.de>
Content-Language: en-US
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
Subject: Re: [PATCH v2 1/3] console: don't count newlines twice in bytes
 written
To: barebox@lists.infradead.org

Hello,

On 8/22/19 9:04 AM, Ahmad Fatoum wrote:
> 
> 
> On 8/5/19 11:11 AM, Sascha Hauer wrote:
>> On Wed, Jul 31, 2019 at 12:21:41PM +0200, Ahmad Fatoum wrote:
>>> Both the PBL and simple console only return number of input bytes, not
>>> number of bytes actually written out. These differ, because each LF is
>>> converted to CRLF pairs.
>>>
>>> The behavior of not counting actual written out characters is more sensible,
>>> because otherwise callers interested in finding out if all bytes have been
>>> written (e.g. to avoid incomplete writes with ratp) would need to keep count
>>> of all line feeds in the string.
>>> Therefore change the normal console to behave like its less featureful
>>> brethren.
>>
>> According to "man puts" puts() returns a non negative number on success.
>> I can't find a place where it's claimed that we have to return the
>> number of characters.
> 
> console_puts in common/console_simple.c and pbl/console.c already return the
> number of characters. Same for all the console_device puts members in the
> drivers.
> 
>> I also can't find a place where the return value
>> of any puts like function in barebox is ever evaluated. Given that it
>> might make more sense to just return zero in the absense of an error.
> 
> I too think there isn't, but it would be less surprising if common/console.c
> would behave like other puts's in barebox.

Sorry, I mixed it up. Ye, it's arguable whether they should return number
of input bytes written or zero. But no other puts in barebox counts new lines
twice, so I think the patch has its merit, even if a follow up patch in future
has puts functions return 0 instead.

> 
>>
>> Sascha
>>
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
