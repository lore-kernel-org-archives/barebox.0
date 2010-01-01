Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from [217.70.178.89] (helo=slow3-v.mail.gandi.net)
	by bombadil.infradead.org with esmtp (Exim 4.69 #1 (Red Hat Linux))
	id 1NQpvz-0004iQ-UK
	for barebox@lists.infradead.org; Fri, 01 Jan 2010 22:25:32 +0000
Received: from relay1-v.mail.gandi.net (relay1-v.mail.gandi.net
	[217.70.178.75])
	by slow3-v.mail.gandi.net (Postfix) with ESMTP id 5AF6B86717
	for <barebox@lists.infradead.org>; Fri,  1 Jan 2010 22:53:10 +0100 (CET)
Date: Fri, 1 Jan 2010 22:48:26 +0100
From: Matthias Kaehlcke <matthias@kaehlcke.net>
Message-ID: <20100101214826.GS5093@darwin>
References: <20100101194822.GR5093@darwin> <4B3E5CCD.60400@eukrea.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4B3E5CCD.60400@eukrea.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: confusion about relocation (ARM)
To: Eric =?iso-8859-1?Q?B=E9nard?= <eric@eukrea.com>
Cc: barebox@lists.infradead.org

hi eric,

thanks for your reply

El Fri, Jan 01, 2010 at 09:36:29PM +0100 Eric B=E9nard ha dit:

> Le 01/01/2010 20:48, Matthias Kaehlcke a =E9crit :
>> a comment in start_barebox() says 'We are running from RAM now', so i
>> deduced SDRAM must work. but after having a look at start-arm.S i'm a
>> little bit confused. as far as i understand the barebox code is copied
>> to RAM in copy_loop(). what i don't see is where the program counter
>> is set to the address in RAM?
>>
> in arch/arm/cpu/start-arm.S @ line 245 :
>         ldr     pc, _start_armboot

i saw this line, but i don't understand how it comes that
the address at _start_armboot points to RAM and not to the flash.

another question: how does ARCH_TEXT_BASE fit in here? i defined it as
0x05700000, but in the barebox image _TEXT_BASE is 0x00000000

kind regards

-- =

Matthias Kaehlcke
Embedded Linux Developer
Barcelona

             You must have a plan. If you don't have a plan,
               you'll become part of somebody else's plan
                                                                 .''`.
    using free software / Debian GNU/Linux | http://debian.org  : :'  :
                                                                `. `'`
gpg --keyserver pgp.mit.edu --recv-keys 47D8E5D4                  `-

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
