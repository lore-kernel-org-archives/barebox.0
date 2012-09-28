Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.free-electrons.com ([88.190.12.23])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1THbjB-0001ZJ-AK
 for barebox@lists.infradead.org; Fri, 28 Sep 2012 14:39:41 +0000
Message-ID: <5065B6A5.2080807@free-electrons.com>
Date: Fri, 28 Sep 2012 16:39:33 +0200
From: Maxime Ripard <maxime.ripard@free-electrons.com>
MIME-Version: 1.0
References: <5065935A.8040302@free-electrons.com>
 <506596C4.6080903@free-electrons.com> <20120928124212.GC1322@pengutronix.de>
In-Reply-To: <20120928124212.GC1322@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: Writing to the OCOTP on mx28 boards
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org, Brian Lilly <brian@crystalfontz.com>

Hi Sascha,

Le 28/09/2012 14:42, Sascha Hauer a =E9crit :
> On Fri, Sep 28, 2012 at 02:23:32PM +0200, Maxime Ripard wrote:
>> Le 28/09/2012 14:08, Maxime Ripard a =E9crit :
>>> Hi everyone,
>>>
>>> I'm trying to write down some data to the /dev/ocotp file, which is
>>> basically a one time programming chip containing four bytes.
>>>
>>> Using the command mw -b -d /dev/ocotp 0-3 0x01020304 writes down only
>>> "4" to the first byte of the OCOTP, which is not quite what I was
>>> expecting. What's the correct syntax for the mw command?
>>
>> Ok, just found out, it should be
>> mw -l -d /dev/ocotp 0-3 0x01020304
> =

> Not quite. 0-3 is wrong, though appearantly happens to work. It should
> be:
> =

> mw -d /dev/ocotp 0 0x01020304
> =

> (-l can be skipped, as 32bit accesses are default). If you want to write
> multiple words you can do a:
> =

> mw -d /dev/ocotp 0 0xdeadbeef 0x12345678 0x11223344
> =

> The 0-3 notation is only for 'md'

Ok, I see.

Thanks!

Maxime

-- =

Maxime Ripard, Free Electrons
Kernel, drivers, real-time and embedded Linux
development, consulting, training and support.
http://free-electrons.com

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
