Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from exprod5og118.obsmtp.com ([64.18.0.160])
 by merlin.infradead.org with smtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VcENC-0006oC-JF
 for barebox@lists.infradead.org; Fri, 01 Nov 2013 13:02:47 +0000
Received: from [3.26.68.194] (corgarff.edi.geip.ge.com [3.26.68.194])
 by selma.edi.geip.ge.com (Postfix) with ESMTP id ED6E2E15F9
 for <barebox@lists.infradead.org>; Fri,  1 Nov 2013 13:02:22 +0000 (GMT)
Message-ID: <5273A65E.6090300@ge.com>
Date: Fri, 01 Nov 2013 13:02:22 +0000
From: Renaud Barbier <renaud.barbier@ge.com>
MIME-Version: 1.0
References: <1383128571-8250-1-git-send-email-renaud.barbier@ge.com>
 <1383128571-8250-5-git-send-email-renaud.barbier@ge.com>
 <20131030113452.GG26639@ns203013.ovh.net>
 <20131031074833.GI24559@pengutronix.de> <5272B934.7080508@ge.com>
 <20131101115852.GL24559@pengutronix.de> <5273A50B.1010700@ge.com>
In-Reply-To: <5273A50B.1010700@ge.com>
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
Subject: Re: [PATCH 4/5] ppc: DA923RC: add board support
To: barebox@lists.infradead.org

On 01/11/2013 12:56, Renaud Barbier wrote:
> On 01/11/2013 11:58, Sascha Hauer wrote:
>> On Thu, Oct 31, 2013 at 08:10:28PM +0000, Renaud Barbier wrote:
>>> On 31/10/2013 07:48, Sascha Hauer wrote:
>>>>>> +
>>>>>>>> +	fsl_i2c_init(0, 400000, 0x7f);
>>>>>>>> +	/* Read board id from offset 0. */
>>>>>>>> +	ret = fsl_i2c_read(i2c, 0x3b, 0, 1, &id, sizeof(uint8_t));
>>>>>>>> +	fsl_i2c_stop(i2c);
>>>>>>>> +
>>>>>>>> +	if (ret == -1) {
>>>>>>>> +		/* Enable I2C bus on GBX460. */
>>>>>>>> +		out_be16(IOMEM(0xfc010020), 0);
>>>>>>>> +		ret = fsl_i2c_read(i2c, 0x3b, 0, 1, &id, sizeof(uint8_t));
>>>>>>>> +		fsl_i2c_stop(i2c);
>>>>>> why you do not simly use the standdard i2c AP?
>>>> I think because the machine is still running from SRAM or flash here and
>>>> I2C is needed to read out the SPD EEPROM for setting up SDRAM.
>>>>
>>>
>>> In order to use the I2C API would I not need to register my i2c bus
>>> first? This only happens later in the initcall list with device-initcall.
>>
>> Yes, You would have to have your i2c bus registered. Can't you move the
>> above to late_initcall?
>>
>> Sascha
>>
> 
> I just did the following experiment:
> Move the code to device_initcall after the I2C registration and use the
> I2C API. Using the I2C API worked. However, when booting the board model
> is a NULL strings.
> 
> So next I will check whether I can register the I2C device either in the
> postcore_initcall or when doing the console_initcall.
> 
> Renaud.

Probably a bad idea if device registration relies on the previous
initcall: fs_initcall.


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
