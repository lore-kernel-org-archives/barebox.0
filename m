Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp1-g21.free.fr ([2a01:e0c:1:1599::10])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TWYGE-0006oi-Ro
 for barebox@lists.infradead.org; Thu, 08 Nov 2012 19:59:36 +0000
From: Robert Jarzmik <robert.jarzmik@free.fr>
References: <1352276585-20262-1-git-send-email-antonynpavlov@gmail.com>
 <87pq3pt1zh.fsf@free.fr>
 <CAA4bVAFtC4WscuH_e+wFnQnt33tg4v4iOtHiSsw7S6Fq4YJf0Q@mail.gmail.com>
Date: Thu, 08 Nov 2012 20:59:22 +0100
In-Reply-To: <CAA4bVAFtC4WscuH_e+wFnQnt33tg4v4iOtHiSsw7S6Fq4YJf0Q@mail.gmail.com>
 (Antony Pavlov's message of "Thu, 8 Nov 2012 09:49:15 +0400")
Message-ID: <87liebuaqt.fsf@free.fr>
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
Subject: Re: [PATCH] make new y-modem (PATCH v2) work on big-endian CPU
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox <barebox@lists.infradead.org>

Antony Pavlov <antonynpavlov@gmail.com> writes:

> May be the 'proto->crc_mode==CRC_ADD8' condition is always false
> during my tests?
Yes, surely. CRC8 is a fallback when the sender is unable to cope with CRC16. As
you use linux sb, it does cope with CRC16 :)

Cheers.

-- 
Robert

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
