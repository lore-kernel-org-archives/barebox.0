Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-vk0-x22d.google.com ([2607:f8b0:400c:c05::22d])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aleet-0002IX-PF
 for barebox@lists.infradead.org; Thu, 31 Mar 2016 15:37:20 +0000
Received: by mail-vk0-x22d.google.com with SMTP id e185so107964931vkb.1
 for <barebox@lists.infradead.org>; Thu, 31 Mar 2016 08:36:59 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <87ziterckj.fsf@gmail.com>
References: <CABDcavYEn0e8GkEzfJnayr32X85dA5tz-dRaMg3H6J8i-aXj0w@mail.gmail.com>
 <87ziterckj.fsf@gmail.com>
Date: Thu, 31 Mar 2016 17:36:58 +0200
Message-ID: <CABDcavZ2HPoPqCJ9Wn_Uu7fapKcqdHEPc9jDjnM7xDvKJ5ahbg@mail.gmail.com>
From: Guillermo Rodriguez Garcia <guille.rodriguez@gmail.com>
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
To: Holger Schurig <holgerschurig@gmail.com>
Cc: barebox@lists.infradead.org

Hello,

Thank you for the answer. Some comments below.

2016-03-31 15:39 GMT+02:00 Holger Schurig <holgerschurig@gmail.com>:
> Guillermo Rodriguez Garcia <guille.rodriguez@gmail.com> writes:
>
>> Can anyone provide any hints on why this is
>> happening or how to fix it ?
>
> I guess this is probably because your terminal emulation doesn't match
> what barebox assume.

Uhm, could be, however I have also been using minicom with an older
version of barebox for a long time (2011.05.0, on a different target
board), and never had any problems at all. I only noticed this
behaviour when testing barebox 2016.03.0 on a new board.

[...]
> Kermit is oblivious to any ANSI escape sequences, so my X11 terminal
> emulates them. Here I use the rxvt-unicode binary `urxvt`. The effect is
> that the "edit" commands works.

Perhaps I should clarify what I am seeing. The "edit" command actually
works, more or less. If I scroll up or down one line at a time then
there are no problems. I only see bogus A or B characters inserted
when I do "continuous" scrolling. Also I noticed that ESC [ A is the
ANSI escape sequence for "cursor up", and ESC [ B is the ANSI escape
sequence for "cursor down". Perhaps when I keep the arrow up/down key
pressed, minicom is sending these escape sequences faster than barebox
can handle them, and that's why I see the 'A' and 'B' characters
inserted?

Regards,

Guillermo Rodriguez Garcia
guille.rodriguez@gmail.com

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
