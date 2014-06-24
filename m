Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-f169.google.com ([209.85.217.169])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WzLHh-0006NH-Ts
 for barebox@lists.infradead.org; Tue, 24 Jun 2014 07:36:54 +0000
Received: by mail-lb0-f169.google.com with SMTP id l4so6051640lbv.0
 for <barebox@lists.infradead.org>; Tue, 24 Jun 2014 00:36:29 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20140624101809.3e4e5ed94246bea99f2d622c@gmail.com>
References: <20140624101809.3e4e5ed94246bea99f2d622c@gmail.com>
Date: Tue, 24 Jun 2014 09:36:29 +0200
Message-ID: <CAOngqVX56ZS=KgWJs0x6yS_jxNewYaWaTX-Lqvmk-25xBs+d4g@mail.gmail.com>
From: Daniele Lacamera <daniele.lacamera@tass.be>
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
Subject: Re: [RFC] incorporate picotcp into barebox
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox <barebox@lists.infradead.org>, PicoTCP <picotcp@tass.be>, Frederik Van Slycken <frederik.van.slycken@gmail.com>

On Tue, Jun 24, 2014 at 8:18 AM, Antony Pavlov <antonynpavlov@gmail.com> wrote:
> Hi, Daniele!
>
> Do you have any progress on introducing barebox-related ping and dhcp client
> changes into picotcp?
>
> --
> Best regards,
>   Antony Pavlov

Hello Antony,

Yes, I've been working on the components themselves in order to comply
with barebox's CLI requirements. I added a pico_dhcp_client_abort()
function to cancel an ongoing dhcp negotiation, and a
pico_icmp[4|6]_ping_abort() to cancel the ongoing ping operation. All
changes are tested and the new APIs are documented in the user manual.
It is now possible to interrupt ongoing operation (e.g. via CTRL+C
from the barebox CLI).

A fresh manual is created by jenkins after each commit from the .tex
in the source tree and it is avaliable at:
http://162.13.84.104/user_doc.pdf

Additionally, the TFTP branch I created is almost finished: TFTP
client and server are working except for the timeout feature. Due to
our internal quality policy and implement the unit tests with at least
80% coverage in order to qualify for a merge to the master, but
meanwhile both client and server are tested against tftp(d)-hpa. You
can already have a look at the new module:

https://github.com/tass-belgium/picotcp/tree/tftp

In particular, this is how I am testing client/server functionality:
https://github.com/tass-belgium/picotcp/blob/tftp/test/picoapp.c#L2201

Of course before merging there will be a new chapter in the manual
describing the TFTP API.

As usual, comments and suggestions are very welcome.

Regards,

-- 
Daniele Lacamera

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
