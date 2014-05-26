Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-f170.google.com ([209.85.217.170])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WorJl-0006JS-9i
 for barebox@lists.infradead.org; Mon, 26 May 2014 09:35:42 +0000
Received: by mail-lb0-f170.google.com with SMTP id w7so4135657lbi.1
 for <barebox@lists.infradead.org>; Mon, 26 May 2014 02:35:18 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20140525135819.ebfd62810f698e8f13dbf558@gmail.com>
References: <20140525135819.ebfd62810f698e8f13dbf558@gmail.com>
Date: Mon, 26 May 2014 11:35:18 +0200
Message-ID: <CAOngqVXKEWNabzwCbYg_AXiy95Mzm6BNc7Nr-sNWUyDZ9sX0bA@mail.gmail.com>
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
Subject: Re: [RFC] [WIP] incorporate picotcp into barebox: a small demo
To: barebox <barebox@lists.infradead.org>

On Sun, May 25, 2014 at 11:58 AM, Antony Pavlov <antonynpavlov@gmail.com> wrote:
> Hi all!
>
> I have adapted barebox for work with picotcp network stack.
>

Hello Antony,

Great news! Thanks for announcing this. Here is a few comments from our side.

I've taken a look at the code. I like the general approach, and it
seems that some functionality could already be replaced with picotcp
modules and components (e.g. ARP, DHCP, DNS.), and some new can easily
be integrated if the project would benefit of some other service
available from cli, such as SLAAC, sNTP, mDNS, DHCP server, etc.

>  We need additional effors for adapting barebox and picotcp
>  for more easy joint operation.


Regarding this, we would like to help with a cleaner integration, so
feel free to submit requests in the form of "issues" on our github if
you need to introduce new pico_err's, or any suggestion you might have
regarding the APIs for the standalone tool support.

The whole PicoTCP team is very enthusiast about what you guys started,
and we keep ourselves at your disposal for whatever you might need
from our side.

I have to add, it is possibly interesting for barebox community, we
recently added the support for blocking sockets with a POSIX-compliant
API, which would make socket development much easier if properly
connected to the execution model. You might want to have a look at
this repository we just created:

https://github.com/tass-belgium/picotcp-bsd

Last but not least, I would love to see some ipv6 integration, as soon
as your interface is in the expected status, I could try and add the
support for ipv6 addresses and routing myself, even if I don't know
what are the plans of barebox regarding this.

Kudos to you all for this great initiative, and a special "thank you"
to Alessandro for endorsing our free TCP/IP stack :)

Have a nice day

--

Daniele Lacamera
Senior Software Architect
TASS.BE  - Part of Altran

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
