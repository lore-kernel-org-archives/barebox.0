Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-f42.google.com ([209.85.215.42])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VEBNi-00009k-B1
 for barebox@lists.infradead.org; Tue, 27 Aug 2013 04:59:54 +0000
Received: by mail-la0-f42.google.com with SMTP id ep20so3147590lab.29
 for <barebox@lists.infradead.org>; Mon, 26 Aug 2013 21:59:27 -0700 (PDT)
Date: Tue, 27 Aug 2013 08:57:12 +0400
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20130827085712.eff4e4b6b6de0eeac853f017@gmail.com>
In-Reply-To: <20130827014648.GA15429@titan.lakedaemon.net>
References: <1377493037-2229-1-git-send-email-antonynpavlov@gmail.com>
 <1377493037-2229-2-git-send-email-antonynpavlov@gmail.com>
 <20130826132018.GF13964@titan.lakedaemon.net>
 <20130826225148.789cb51a803900ceb21f77ae@gmail.com>
 <20130826194758.GC24470@titan.lakedaemon.net>
 <521BE5A1.5080109@gmail.com>
 <20130827014648.GA15429@titan.lakedaemon.net>
Mime-Version: 1.0
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [RFC 1/8] ARM: add very initial support for Canon DIGIC chips
To: Jason Cooper <jason@lakedaemon.net>
Cc: barebox@lists.infradead.org

On Mon, 26 Aug 2013 21:46:48 -0400
Jason Cooper <jason@lakedaemon.net> wrote:

> On Tue, Aug 27, 2013 at 01:32:49AM +0200, Sebastian Hesselbarth wrote:
> > On 08/26/2013 09:47 PM, Jason Cooper wrote:
> > >On Mon, Aug 26, 2013 at 10:51:48PM +0400, Antony Pavlov wrote:
> > >>On Mon, 26 Aug 2013 09:20:18 -0400
> > >>Jason Cooper <jason@lakedaemon.net> wrote:
> > >>>On Mon, Aug 26, 2013 at 08:57:10AM +0400, Antony Pavlov wrote:
> > >>>>+/* Serial interface registers */
> > >>>>+#define DEBUG_LL_UART_TX         (DEBUG_LL_UART + 0x0)
> > >>>>+#define DEBUG_LL_UART_ST         (DEBUG_LL_UART + 0x14)
> > >>>>+ #define UART_ST_TX_RDY	2
> > >>>
> > >>>leading whitespace, and perhaps use BIT() here.
> > >>
> > >>The leading whitespace is put here intentionally to distinguish regis=
ter address macros
> > >>and bit fields macros.
> > >
> > >CodingStyle doesn't spell it out explicitly, however:
> > >
> > >$ git grep -c '^[ \t]#define'
> > =

> > Jason,
> > =

> > you should have used
> > =

> > git grep -c '^#[ \t]define'
> > =

> > It is in fact quite common to distinguish address offset macros
> > and bit macros by adding a space, but between '#' and 'define'.

Thanks, Sebastian! You are right. I have just misplaced the space :)

> fair enough, I'll admit it's a personal bias. :-P I like everything
> lined up vertically so that differences from line to line stand out
> more.  But that's just me, and it's not my code, so I'll drop it.

Anyway I have a plan to rework these DEBUG_LL-related macros as they dublic=
ate
the macros in the digic-serial driver :)

--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
