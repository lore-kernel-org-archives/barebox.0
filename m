Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from down.free-electrons.com ([37.187.137.238]
 helo=mail.free-electrons.com)
 by casper.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XoCYq-0002m6-5Z
 for barebox@lists.infradead.org; Tue, 11 Nov 2014 14:36:48 +0000
Message-ID: <54621E76.7060805@free-electrons.com>
Date: Tue, 11 Nov 2014 11:34:30 -0300
From: Ezequiel Garcia <ezequiel.garcia@free-electrons.com>
MIME-Version: 1.0
References: <1415544978-22392-1-git-send-email-ezequiel.garcia@free-electrons.com>	<20141110080657.GA18558@pengutronix.de>	<5460FFB0.9080205@free-electrons.com>	<20141110184345.GC27002@pengutronix.de>	<546113A7.30500@gmail.com>	<20141111090649.GE27002@pengutronix.de>	<54621C64.5070004@free-electrons.com>
 <20141111153111.5c275a43@free-electrons.com>
In-Reply-To: <20141111153111.5c275a43@free-electrons.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v3 0/4] mvebu: Add network support for Armada 370/XP
To: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
Cc: barebox@lists.infradead.org, =?windows-1252?Q?Uwe_Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>

On 11/11/2014 11:31 AM, Thomas Petazzoni wrote:
> Dear Ezequiel Garcia,
> =

> On Tue, 11 Nov 2014 11:25:40 -0300, Ezequiel Garcia wrote:
> =

>>   Fix the produced kwbimage.cfg to boot from UART (actually, I think it'=
s not needed):
>>
>>   diff --git a/arch/arm/boards/plathome-openblocks-ax3/kwbimage.cfg b/ar=
ch/arm/boards/plathome-openblocks-ax3/kwbimage.cfg
>>   index 219c2ec..fd6c0df 100644
>>   --- a/arch/arm/boards/plathome-openblocks-ax3/kwbimage.cfg
>>   +++ b/arch/arm/boards/plathome-openblocks-ax3/kwbimage.cfg
>>   @@ -1,5 +1,5 @@
>>    VERSION 1
>>   -BOOT_FROM spi
>>   +BOOT_FROM uart
>>    DESTADDR 00600000
>>    EXECADDR 006b0000
>>    NAND_BLKSZ 00000000
> =

> This is indeed not needed. The Barebox build system calls kwbimage
> twice: once to generate an image that uses the BOOT_FROM media as the
> boot media, and once to generate an image that can boot from the UART.
> The former has a .kwb extension, the latter a .kwbuart extension.
> =

> Other than that, I think your tutorial is good. Is there a good place
> in Barebox to put some documentation such as this?
> =


Actually... it's a copy-paste of a something I wrote as
Documentation/boards/mvebu.txt, but never sent as a patch.

I can send it now, if you agree to double-check it and perhaps extend it
a bit :)

-- =

Ezequiel Garc=EDa, Free Electrons
Embedded Linux, Kernel and Android Engineering
http://free-electrons.com

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
