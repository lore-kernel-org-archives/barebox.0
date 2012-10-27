Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp1-g21.free.fr ([2a01:e0c:1:1599::10])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TS2UG-000775-72
 for barebox@lists.infradead.org; Sat, 27 Oct 2012 09:15:25 +0000
From: Robert Jarzmik <robert.jarzmik@free.fr>
References: <1351278011-26982-1-git-send-email-robert.jarzmik@free.fr>
 <CAA4bVAEuG1fpobFT+AJns9fUHPUfKMDW1RDcoqPz-etM9UTPmw@mail.gmail.com>
Date: Sat, 27 Oct 2012 11:15:13 +0200
In-Reply-To: <CAA4bVAEuG1fpobFT+AJns9fUHPUfKMDW1RDcoqPz-etM9UTPmw@mail.gmail.com>
 (Antony Pavlov's message of "Sat, 27 Oct 2012 09:49:00 +0400")
Message-ID: <878vasxom6.fsf@free.fr>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [RFC PATCH] commands: change Y-Modem implementation
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

Antony Pavlov <antonynpavlov@gmail.com> writes:

> I have just checked your Y-Modem implementation over 115200 bps UART.
>
> Traditional 'loady' works fine, but neither 'loady2' nor 'loady2 -g'
> does not work.
> I use lrzsz-0.12.21-5 on my host.
OK, thanks Antony.

I use the very same lrzsz version on my host. I'll try to find an old
motherboard with a UART and an USB/Serial dongle to play with to find out what's
wrong.

Once I'll get that working, I'll repost.

Cheers.

--
Robert

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
