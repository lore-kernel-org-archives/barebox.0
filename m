Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from exprod5og105.obsmtp.com ([64.18.0.180])
 by merlin.infradead.org with smtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VbyZx-0001Rt-VA
 for barebox@lists.infradead.org; Thu, 31 Oct 2013 20:10:54 +0000
Received: from [3.26.68.194] (corgarff.edi.geip.ge.com [3.26.68.194])
 by selma.edi.geip.ge.com (Postfix) with ESMTP id 4784EE1680
 for <barebox@lists.infradead.org>; Thu, 31 Oct 2013 20:10:28 +0000 (GMT)
Message-ID: <5272B934.7080508@ge.com>
Date: Thu, 31 Oct 2013 20:10:28 +0000
From: Renaud Barbier <renaud.barbier@ge.com>
MIME-Version: 1.0
References: <1383128571-8250-1-git-send-email-renaud.barbier@ge.com>
 <1383128571-8250-5-git-send-email-renaud.barbier@ge.com>
 <20131030113452.GG26639@ns203013.ovh.net>
 <20131031074833.GI24559@pengutronix.de>
In-Reply-To: <20131031074833.GI24559@pengutronix.de>
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

On 31/10/2013 07:48, Sascha Hauer wrote:
>>> +
>>> > > +	fsl_i2c_init(0, 400000, 0x7f);
>>> > > +	/* Read board id from offset 0. */
>>> > > +	ret = fsl_i2c_read(i2c, 0x3b, 0, 1, &id, sizeof(uint8_t));
>>> > > +	fsl_i2c_stop(i2c);
>>> > > +
>>> > > +	if (ret == -1) {
>>> > > +		/* Enable I2C bus on GBX460. */
>>> > > +		out_be16(IOMEM(0xfc010020), 0);
>>> > > +		ret = fsl_i2c_read(i2c, 0x3b, 0, 1, &id, sizeof(uint8_t));
>>> > > +		fsl_i2c_stop(i2c);
>> > why you do not simly use the standdard i2c AP?
> I think because the machine is still running from SRAM or flash here and
> I2C is needed to read out the SPD EEPROM for setting up SDRAM.
> 

In order to use the I2C API would I not need to register my i2c bus
first? This only happens later in the initcall list with device-initcall.


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
