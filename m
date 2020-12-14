Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kosLn-00062Z-US
 for barebox@lists.infradead.org; Mon, 14 Dec 2020 18:13:36 +0000
References: <CAEuS4-2u1BDx0DKn1g4DP1P9H1=OyWxzVH0amhaMbihDE4wDGA@mail.gmail.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <75571783-3a55-bb7a-eda7-ce906832ad6d@pengutronix.de>
Date: Mon, 14 Dec 2020 19:13:33 +0100
MIME-Version: 1.0
In-Reply-To: <CAEuS4-2u1BDx0DKn1g4DP1P9H1=OyWxzVH0amhaMbihDE4wDGA@mail.gmail.com>
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
Subject: Re: Why /dev/mem has null size?
To: "DEMIRDJIAN, Antoine" <antoine.demirdjian@airliquide.com>, barebox@lists.infradead.org

Hello Antoine,

On 14.12.20 18:51, DEMIRDJIAN, Antoine wrote:
> Dear all,
> 
> I'm trying to "addpart" to /dev/mem in order to copy my raw boot image inside.

The normal usage is to let barebox worry about memory allocation:

  bootm /image and go /image both memory map /image for you.

If you absolutely want to hardcode the load address, use the memcpy
command: https://www.barebox.org/doc/latest/commands/mem/memcpy.html

> But I noticed that /dev/mem doesn't really exists :
> 
> From devinfo :
> 
>    `-- mem1
>       `-- 0x00000000-0xffffffffffffffff (   0 Bytes): /dev/mem
> 
> And more specifically :
> 
> barebox@MyBoard:/ devinfo mem1
> Resources:
>   num: 0
>   name: mem
>   start: 0x00000000
>   size: 0x00000000
> Driver: mem
> Bus: platform
> 
> As a consequence, my addpart fails with "partition end is beyond device".

I don't think addpart is meant to operate on the mem device. /dev/mem
is usually used along with memcpy, md, mw, where /dev/mem is the default
device they operate on.

> Do you have any idea why my /dev/mem size is 0x0 ?

/dev/mem always has size 0 in barebox, because its size makes
it a bit special. Many operations don't make sense for it as well,
so having a zero size makes them fail.

Cheers,
Ahmad

> 
> Thanks,
> 
> --
> Antoine D
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
