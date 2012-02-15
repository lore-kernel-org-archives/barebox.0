Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lpp01m010-f49.google.com ([209.85.215.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Rxcl6-0000CM-J1
 for barebox@lists.infradead.org; Wed, 15 Feb 2012 11:10:49 +0000
Received: by lahg1 with SMTP id g1so1060223lah.36
 for <barebox@lists.infradead.org>; Wed, 15 Feb 2012 03:10:46 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <CAM9uW_4Df7yazcWNvai0ffALC1eHrMUC5WetMNf=KJ7PBhm51w@mail.gmail.com>
References: <CALQ+5adUP4qyf8+82s2NK6R3LbvjteuE-bkQ0iUdMG7X2LtxFQ@mail.gmail.com>
 <CAM9uW_4Df7yazcWNvai0ffALC1eHrMUC5WetMNf=KJ7PBhm51w@mail.gmail.com>
From: Igor Trevisan <igt1972@gmail.com>
Date: Wed, 15 Feb 2012 12:10:26 +0100
Message-ID: <CALQ+5aegByok5nGD4QRmRxWZtkw0bXOA3QioB7TMWRPFAoaJSg@mail.gmail.com>
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
Subject: Re: iMX27 clock settings
To: barebox@lists.infradead.org

Hi,

On Wed, Feb 15, 2012 at 10:15 AM, Kamel BOUHARA <k.bouhara@gmail.com> wrote:
> Hi Igor,
>
> What revision of imx27 silicon do you have?

Silicon Rev. of my iMX27L is V2.1 (code M72J).

> If it's a rev2.0 or 2.1, you shoult take a look a the freescale errata in
> order to set your PLL properly.

I had a look at the Chip Errata. I saw that there's a PLL problem and
for it Freescale suggest two possible workarounds, a Hardware and a
Software one.
On my board the Hardware workaround has been used.
By the way, I tried also to add the SW workaround configuring:
MPCTL0=0x00262C15 (I use the 26MHz oscillator as source)
and
CSCR=0x33F30307 (to use DIV3 as it is by default and AHBDIV=11)
or
CSCR=0x33F30207 (to use DIV3 as it is by default and AHBDIV=10 to slow down AHB)
and I discovered that this configuration (both of CSCR) works properly
on some boards, while on other boards (same uC-Memories core but different
peripherals and power supply) the system starts and hangs continuously
as I described in my first post.
So, at the end, I think that my settings to speed up the uC core @400MHz
are correct but probably I have a power supply problem on one of the
products I'm working on!
I'll investigate this and inform the list if it's not so...
Thanks for the support, also thanks to Juergen for his suggestions.
Ciao,
I.


-- 
"Don't find fault, find a remedy."
(Henry Ford)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
