Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-vk0-x236.google.com ([2607:f8b0:400c:c05::236])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1an4es-0003gw-Ij
 for barebox@lists.infradead.org; Mon, 04 Apr 2016 13:35:12 +0000
Received: by mail-vk0-x236.google.com with SMTP id c4so54090030vkb.3
 for <barebox@lists.infradead.org>; Mon, 04 Apr 2016 06:34:47 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20160404063833.GC9102@pengutronix.de>
References: <CABDcavYEn0e8GkEzfJnayr32X85dA5tz-dRaMg3H6J8i-aXj0w@mail.gmail.com>
 <87ziterckj.fsf@gmail.com>
 <CABDcavZ2HPoPqCJ9Wn_Uu7fapKcqdHEPc9jDjnM7xDvKJ5ahbg@mail.gmail.com>
 <20160404063833.GC9102@pengutronix.de>
Date: Mon, 4 Apr 2016 15:34:47 +0200
Message-ID: <CABDcavYVyFZu_o=25bTs3e2q-rGGLn8ZYbivg_PTxjxkVt62_A@mail.gmail.com>
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
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

2016-04-04 8:38 GMT+02:00 Sascha Hauer <s.hauer@pengutronix.de>:
> On Thu, Mar 31, 2016 at 05:36:58PM +0200, Guillermo Rodriguez Garcia wrote:
>> Hello,
>>
>> Thank you for the answer. Some comments below.
>>
>> 2016-03-31 15:39 GMT+02:00 Holger Schurig <holgerschurig@gmail.com>:
>> > Guillermo Rodriguez Garcia <guille.rodriguez@gmail.com> writes:
>> >
>> >> Can anyone provide any hints on why this is
>> >> happening or how to fix it ?
>> >
>> > I guess this is probably because your terminal emulation doesn't match
>> > what barebox assume.
>>
>> Uhm, could be, however I have also been using minicom with an older
>> version of barebox for a long time (2011.05.0, on a different target
>> board), and never had any problems at all. I only noticed this
>> behaviour when testing barebox 2016.03.0 on a new board.
>>
>> [...]
>> > Kermit is oblivious to any ANSI escape sequences, so my X11 terminal
>> > emulates them. Here I use the rxvt-unicode binary `urxvt`. The effect is
>> > that the "edit" commands works.
>>
>> Perhaps I should clarify what I am seeing. The "edit" command actually
>> works, more or less. If I scroll up or down one line at a time then
>> there are no problems. I only see bogus A or B characters inserted
>> when I do "continuous" scrolling. Also I noticed that ESC [ A is the
>> ANSI escape sequence for "cursor up", and ESC [ B is the ANSI escape
>> sequence for "cursor down". Perhaps when I keep the arrow up/down key
>> pressed, minicom is sending these escape sequences faster than barebox
>> can handle them, and that's why I see the 'A' and 'B' characters
>> inserted?
>
> Yes, could be. I have never seen such a behaviour. Normally the rate
> your host sends "ESC [ B" is limited by the keyboard repeat rate, not by
> the serial port speed, so I think barebox should be able to follow this.
>
> What we see here more and more frequently is that the signal level
> generated on one side is not high enough for the other side to detect it
> properly. Maybe you have similar issues? How about pasting copy/pasting
> text on the barebox command line using middle mouse button? Does that
> work properly?

That's a very good question. I just tried to paste this text in
barebox's command line:

Lorem Ipsum is simply dummy text of the printing and typesetting industry.

It works perfectly. However I then tried to paste the very same text
in a "edit" window. Every time, the following is pasted:

Lois simply dummy text of the printing and typesetting industry.

That's exactly 10 characters missing after the first two.

What could be causing this and then only in the "edit" command, but
not in the command line?

>
> I recommend microcom as a terminal program. Like kermit it does not
> emulate a terminal but is just a 1:1 pass through to the host terminal.
> Unlike kermit microcom can be passed the port to use on the command
> line. It's part of Debian/Ubuntu.

Just tried microcom. I have exactly the same problems with scrolling
('A' and 'B' characters inserted when continuously scrolling up-down).

Any other hints ?

Thank you,

Guillermo Rodriguez Garcia
guille.rodriguez@gmail.com

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
