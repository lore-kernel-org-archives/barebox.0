Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp1-g21.free.fr ([2a01:e0c:1:1599::10])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Rcc8S-0002uj-UE
 for barebox@lists.infradead.org; Mon, 19 Dec 2011 12:16:06 +0000
From: Robert Jarzmik <robert.jarzmik@free.fr>
References: <1324286241-23083-1-git-send-email-robert.jarzmik@free.fr>
 <1324286241-23083-4-git-send-email-robert.jarzmik@free.fr>
 <CAA4bVAEAOhNDRj7dfZBf2Nkrjv5Bot9iTiX7CJ7PCj6YcXUN7Q@mail.gmail.com>
Date: Mon, 19 Dec 2011 13:15:55 +0100
In-Reply-To: <CAA4bVAEAOhNDRj7dfZBf2Nkrjv5Bot9iTiX7CJ7PCj6YcXUN7Q@mail.gmail.com>
 (Antony Pavlov's message of "Mon, 19 Dec 2011 14:29:19 +0300")
Message-ID: <87ty4weozo.fsf@free.fr>
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
Subject: Re: [PATCH] commands: add hexdump command
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

Antony Pavlov <antonynpavlov@gmail.com> writes:

> On 19 December 2011 13:17, Robert Jarzmik <robert.jarzmik@free.fr> wrote:
>> Add a hexdump command to copycat the "hexdump -C <file>"
>> unix standard command.
>
> md -b -s <file> ?
Ah yes, I haven't seen that one.
Well, that kills that patch, doesn't it ? :)

Cheers.

-- 
Robert

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
