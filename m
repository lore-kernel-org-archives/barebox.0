Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-gg0-f177.google.com ([209.85.161.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SV5NJ-0002eS-Py
 for barebox@lists.infradead.org; Thu, 17 May 2012 18:24:34 +0000
Received: by ggcs5 with SMTP id s5so2427671ggc.36
 for <barebox@lists.infradead.org>; Thu, 17 May 2012 11:24:32 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20120517181915.GJ30400@pengutronix.de>
References: <CAA4bVAF6=LXsv7Q97Mi6uSx_0oY+h=pyTOrRip=+dyAykGWKpw@mail.gmail.com>
 <CAA4bVAE=UFvDOv0MS97wZjqBLJKxjxRvt3n+7eQME1gfk++RbA@mail.gmail.com>
 <20120517181915.GJ30400@pengutronix.de>
Date: Thu, 17 May 2012 22:24:31 +0400
Message-ID: <CAA4bVAHkzyOp_28U_WhxEdtzoivdJnv-UWMGqsK=oOagBu+XwQ@mail.gmail.com>
From: Antony Pavlov <antonynpavlov@gmail.com>
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
Subject: Re: build timestamps don't work
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox <barebox@lists.infradead.org>

On 17 May 2012 22:19, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> On Thu, May 17, 2012 at 09:52:36PM +0400, Antony Pavlov wrote:
>> ping
>>
>> On 16 May 2012 08:27, Antony Pavlov <antonynpavlov@gmail.com> wrote:
>> > Hi!
>> >
>> > =A0I have found that on my Debian testing build system generation of
>> > timestamps don't work correctly.
>
> I just tried and it works with ARM builds. Tried again with MIPS, and
> yes, indeed it does not work. Maybe worth looking at the architecture
> specific Makefile.

Ok, I'll look.

-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
