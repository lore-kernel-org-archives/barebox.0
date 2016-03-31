Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x22b.google.com ([2a00:1450:400c:c09::22b])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1alcpQ-0004OU-G3
 for barebox@lists.infradead.org; Thu, 31 Mar 2016 13:40:05 +0000
Received: by mail-wm0-x22b.google.com with SMTP id 191so126900375wmq.0
 for <barebox@lists.infradead.org>; Thu, 31 Mar 2016 06:39:43 -0700 (PDT)
From: Holger Schurig <holgerschurig@gmail.com>
In-Reply-To: <CABDcavYEn0e8GkEzfJnayr32X85dA5tz-dRaMg3H6J8i-aXj0w@mail.gmail.com>
 (Guillermo Rodriguez Garcia's message of "Wed, 30 Mar 2016 17:38:53
 +0200")
References: <CABDcavYEn0e8GkEzfJnayr32X85dA5tz-dRaMg3H6J8i-aXj0w@mail.gmail.com>
Date: Thu, 31 Mar 2016 15:39:40 +0200
Message-ID: <87ziterckj.fsf@gmail.com>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: Scrolling issues in edit command
To: Guillermo Rodriguez Garcia <guille.rodriguez@gmail.com>
Cc: barebox@lists.infradead.org

Guillermo Rodriguez Garcia <guille.rodriguez@gmail.com> writes:

> Can anyone provide any hints on why this is
> happening or how to fix it ?

I guess this is probably because your terminal emulation doesn't match
what barebox assume.



I personally connect from Linux via the serial line with kermit to my
target. Kermit has a simple ~/.kermrc file that looks like this:

    set line /dev/ttyS0
    set baud 115200
    set handshake none
    set flow-control none
    set carrier-watch off
    set escape-character ^X
    log session ~/.kermlog
    connect

Kermit is oblivious to any ANSI escape sequences, so my X11 terminal
emulates them. Here I use the rxvt-unicode binary `urxvt`. The effect is
that the "edit" commands works.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
