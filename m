Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp1-g21.free.fr ([2a01:e0c:1:1599::10])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TU0tQ-0001V1-E5
 for barebox@lists.infradead.org; Thu, 01 Nov 2012 19:57:33 +0000
From: Robert Jarzmik <robert.jarzmik@free.fr>
References: <1351791438-29967-1-git-send-email-robert.jarzmik@free.fr>
 <CAA4bVAFj-_LAKnedX-epOv_9EatCvYGCRLe3SS=g8QqDTw+q_g@mail.gmail.com>
Date: Thu, 01 Nov 2012 20:57:18 +0100
In-Reply-To: <CAA4bVAFj-_LAKnedX-epOv_9EatCvYGCRLe3SS=g8QqDTw+q_g@mail.gmail.com>
 (Antony Pavlov's message of "Thu, 1 Nov 2012 23:19:36 +0400")
Message-ID: <871ugdayg1.fsf@free.fr>
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
Subject: Re: [PATCH 0/2] Y-Modem implementation change
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

Antony Pavlov <antonynpavlov@gmail.com> writes:

>> So before doing the real review, could I ask of you :
>>  - Antony: could you redo your test over a serial line by applying only
>>            the first patch so that you can compare loady and loady2 ?
>>            Don't use "loady2 -g", as Y-Modem/G protocol requires a
>>            lossless line (USB), and a serial line cannot guarantee it.
>
> I have redone the test.
>
> Sorry, but the new 'loady2' does not work. I tested it over 9600 and
> over 115200 serial line.
Oh that's very disappointing.
I have tested that on a serial line, and it does work in my case ...

Could you provide me the "sb" command line you use (or rather your minicom or
other tool) uses please ?

And by private mail, I'd like the output of :
while true; do strace -T -tt -f -xx -s 4096 -o /tmp/forRobert.txt -p $(pidof sb); done

Cheers.

-- 
Robert

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
