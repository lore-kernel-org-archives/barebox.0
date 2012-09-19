Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bk0-f49.google.com ([209.85.214.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TEIAU-0007V4-0s
 for barebox@lists.infradead.org; Wed, 19 Sep 2012 11:10:11 +0000
Received: by bkcji2 with SMTP id ji2so426829bkc.36
 for <barebox@lists.infradead.org>; Wed, 19 Sep 2012 04:10:08 -0700 (PDT)
Message-ID: <5059A80E.5090006@gmail.com>
Date: Wed, 19 Sep 2012 13:10:06 +0200
From: Carlo Caione <carlo.caione@gmail.com>
MIME-Version: 1.0
References: <n> <1348000210-21686-1-git-send-email-carlo.caione@gmail.com>
 <1348045844.3397.8.camel@coredoba.hi.pengutronix.de>
 <505997B7.9040306@gmail.com>
 <1348049328.3397.10.camel@coredoba.hi.pengutronix.de>
 <5059A33F.7080905@pengutronix.de>
In-Reply-To: <5059A33F.7080905@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 1/2] Add bcm2835/Raspberry-Pi support
To: Marc Kleine-Budde <mkl@pengutronix.de>
Cc: Michael Olbrich <mol@pengutronix.de>, barebox-request <barebox@lists.infradead.org>

On 19/09/2012 12:49, Marc Kleine-Budde wrote:
> On 09/19/2012 12:08 PM, Jan L=FCbbe wrote:
>> Hi,
>>
>> On Wed, 2012-09-19 at 12:00 +0200, Carlo Caione wrote:
>>> You need an sd card with a single partition fat32 with inside
>>> bootcode.bin, loader.bin and start.elf (you can find the files here
>>> https://github.com/raspberrypi/firmware/tree/master/boot)
>>> Then just copy barebox.bin on the card and rename it kernel.img.
>>
>> Ok, I'll try that later today.
>>
>> What are your next plans? The USB or SD controllers?
>
> IIRC our colleague Michael (mol) said it's another incarnation of the
> chipidea IP core, which also in the imx28, imx53, etc...

Great info!

Thank you,

--
Carlo Caione



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
