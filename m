Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp1-g21.free.fr ([2a01:e0c:1:1599::10])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RTgeC-0003oR-2v
 for barebox@lists.infradead.org; Thu, 24 Nov 2011 21:15:57 +0000
From: Robert Jarzmik <robert.jarzmik@free.fr>
References: <1322103764-6265-1-git-send-email-robert.jarzmik@free.fr>
 <1322103764-6265-10-git-send-email-robert.jarzmik@free.fr>
 <4ECE0ACE.2070103@pengutronix.de>
Date: Thu, 24 Nov 2011 22:15:46 +0100
In-Reply-To: <4ECE0ACE.2070103@pengutronix.de> (Marc Kleine-Budde's message of
 "Thu, 24 Nov 2011 10:13:50 +0100")
Message-ID: <874nxtxlvh.fsf@free.fr>
MIME-Version: 1.0
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 9/9] arm/mach-pxa: add mioa701 board
To: Marc Kleine-Budde <mkl@pengutronix.de>
Cc: barebox@lists.infradead.org

Marc Kleine-Budde <mkl@pengutronix.de> writes:

> On 11/24/2011 04:02 AM, Robert Jarzmik wrote:
>> Add Mitac MioA701 board initial support.
>> The support only provides basic boot and a console over USB
>> (serial gadget).
>
> Please remove the address of the FSF in the header of the files, please
> fix you (C), we don't have 2012 yet :)
OK :)

>> diff --git a/Makefile b/Makefile
>> index 1d1e50d..7e94d37 100644
>> --- a/Makefile
>> +++ b/Makefile
>> @@ -163,8 +163,8 @@ export srctree objtree VPATH
>>  # Alternatively CROSS_COMPILE can be set in the environment.
>>  # Default value for CROSS_COMPILE is not to prefix executables
>>  
>> -ARCH            ?= sandbox
>> -CROSS_COMPILE   ?=
>> +ARCH            ?= arm
>> +CROSS_COMPILE   ?= /home/rj/mio_linux/arm-2007q1/bin/arm-none-eabi-
>
> Please remove that hunk :)
Urgh, the little sneaky one.

...zip...
All following remarks will be taken into account for v2.

Thanks for the review.

-- 
Robert

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
