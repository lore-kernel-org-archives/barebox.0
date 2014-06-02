Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-f44.google.com ([209.85.215.44])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WrRTe-0006cq-Ct
 for barebox@lists.infradead.org; Mon, 02 Jun 2014 12:36:35 +0000
Received: by mail-la0-f44.google.com with SMTP id hr17so2543057lab.3
 for <barebox@lists.infradead.org>; Mon, 02 Jun 2014 05:36:10 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CAOngqVXStG-x8DHA=8B0WVdzhQaKS-k+MzvEUkrGC1hNYOD26A@mail.gmail.com>
References: <1401441248-15034-1-git-send-email-antonynpavlov@gmail.com>
 <20140602083813.GY15686@pengutronix.de>
 <CAOngqVXStG-x8DHA=8B0WVdzhQaKS-k+MzvEUkrGC1hNYOD26A@mail.gmail.com>
Date: Mon, 2 Jun 2014 14:36:09 +0200
Message-ID: <CAOngqVWHEqmyuYL9q-nK=eUVtPyBuXsX9_SaJrGD9r=2SX=k3A@mail.gmail.com>
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
Subject: Re: [RFC] net: picoping: try to make it asynchronious: fail
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox <barebox@lists.infradead.org>

> On Mon, Jun 2, 2014 at 10:38 AM, Sascha Hauer <s.hauer@pengutronix.de> wrote:

>> How I see it pico_icmp4_ping should return the cookie so that a ping
>> abort function can be implemented:
>>
>> void pico_icmp4_ping_abort(struct pico_icmp4_ping_cookie *cookie)

Hello Sascha, et al.

PicoTCP now supports abort operations for ping (both IPv4 and IPv6).
Our documentation has been updated accordingly.

I wrote a quick test on top of Antony's proposal, and it seems to work
as expected. Now the ping can be interrupted using ctrl+c, and the
operation is terminated.

See my version of the example over here (requires the newest
modules/pico_icmpv4.c and .h from picotcp:0c5b5e3a2d) :

http://pastebin.com/bG3tRZzm

I am going to do the same with the dhcp client shortly.

Regards,

-- 
Daniele

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
