Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x232.google.com ([2a00:1450:400c:c09::232])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1a3JbW-0006fX-Rd
 for barebox@lists.infradead.org; Mon, 30 Nov 2015 08:14:36 +0000
Received: by wmec201 with SMTP id c201so142748532wme.0
 for <barebox@lists.infradead.org>; Mon, 30 Nov 2015 00:14:12 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <20151130072810.GT11966@pengutronix.de>
References: <1448810137.537439642@matrix.start.ca>
 <20151130072810.GT11966@pengutronix.de>
Date: Mon, 30 Nov 2015 09:14:12 +0100
Message-ID: <CAOQ7t2aPeKjW5kdZJw8v4iFb_LZ+fDb9dp37G89S7=FzFHBosw@mail.gmail.com>
From: Carlo Caione <carlo@caione.org>
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
Subject: Re: rpi 2 support ?
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Dave Thompson <dthompson@nexusisp.com>, barebox@lists.infradead.org

On Mon, Nov 30, 2015 at 8:28 AM, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> Hi Dave,
>
> On Sun, Nov 29, 2015 at 10:15:37AM -0500, Dave Thompson wrote:
>> Good day
>> This seems to be an active list so my question is
>> Is there raspberry pi 2B support,,  BCM2836?
>> from looking at the rpi config it seem to only mention 2835,
>> I am not sure that it would compile (native) on a 2836
>> since memory for example is different
>> Not wanting to insult,,
>> why I am interested is to make it a boot manager,
>> to load the start elf, then bareboot.bin and run a script
>> to choose what to boot.. Sort of like smart boot manager,
>> maybe not so smoothly,, that is what starts this computer
>> And how to add the kernel configs?
>
> Currently there is no rpi2 support for barebox. I don't know what's
> missing to add support since I'm not familiar with the rpi and don't
> know how much it differs from the rpi2. Added Carlo Caione to Cc who
> added the rpi support initially. Maybe he has a few words for us.

Hi Sasha,
no idea about the rpi2 support. The rpi support was very basic, just
UART and timers IIRC.

-- 
Carlo Caione

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
