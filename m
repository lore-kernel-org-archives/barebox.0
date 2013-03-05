Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.tricorecenter.de ([217.6.246.34] helo=root.phytec.de)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UCrwr-0001Sf-4D
 for barebox@lists.infradead.org; Tue, 05 Mar 2013 13:30:30 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 16020BF0FD
 for <barebox@lists.infradead.org>; Wed,  6 Mar 2013 21:42:52 +0100 (CET)
Message-ID: <5135F36E.2090401@phytec.de>
Date: Tue, 05 Mar 2013 14:30:22 +0100
From: =?ISO-8859-1?Q?J=FCrgen?= <J.Kilb@phytec.de>
MIME-Version: 1.0
References: <1360336929.3798.11.camel@lws-weitzel>
 <20130211100432.GZ1906@pengutronix.de>
 <OFC6CD83ED.4FD2D09A-ONC1257B25.0047F4F9-C1257B25.00480A80@phytec.de>
In-Reply-To: <OFC6CD83ED.4FD2D09A-ONC1257B25.0047F4F9-C1257B25.00480A80@phytec.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: Antwort: Re: v2013.02.0 phyCORE-OMAP4 MLO to big
To: barebox@lists.infradead.org

On 11.02.2013 Sascha Hauer wrote:
> On Fri, Feb 08, 2013 at 04:22:09PM +0100, Jan Weitzel wrote:
>> Hi,
>> with the release v2013.02.0 the MLO gets so bit, that it eats the boot
>> information in the SRAM.
>>
>> nm --size-sort
>>
>> ...
>> 00000630 D nand_flash_ids
>> 000008c0 t mci_probe
>> 00000c00 b gpio_desc
>> 00001400 b files
>>
>> If I remove  GPIOLIB from MLO it work again. Maybe setting MAX_FILES
>> down or find a dynamic way for the big arrays is a better solution.
>> Any Ideas?
> Could you link the MLO to SDRAM instead?
Hi Sascha, we have tried as you suggested and it doesn't work without =

changes...

We found two things:

1.) There is early code which is not relocatable.

We solved this by adding -fPIC to the CPPFLAGS.
But I think, this is also solved with your patch =

http://lists.infradead.org/pipermail/barebox/2013-March/013366.html

2.) The TEXTBASE is passed to the signGP tool, which is wrong if
       TEXT_BASE is different from the executing address before relocating.
       In our case TEXT_BASE would be 0x86000000 but the MLO is executed =


in internal SRAM at 0x40300000.

So I would suggest to create a config option like OMAP_IFT_BASE which =

can be passed to the signGP tool and is set to 0x40300000 per default..

What do you think?

J=FCrgen


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
