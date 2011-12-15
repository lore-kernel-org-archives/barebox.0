Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp1-g21.free.fr ([2a01:e0c:1:1599::10])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Rb7cM-0004We-SR
 for barebox@lists.infradead.org; Thu, 15 Dec 2011 09:28:51 +0000
From: Robert Jarzmik <robert.jarzmik@free.fr>
References: <87r50ilxed.fsf@free.fr>
 <CAJfOKBzSOKmZEvmWsWxQ1+yJFxaB-rzCgR2mxTpTUCoA_9W1Mg@mail.gmail.com>
 <87vcpueoqc.fsf@free.fr>
 <CAJfOKBwmX8EwD1hPvYSMddp6sZKJJ5kCBLf9KYWLsjkk4ZAC9A@mail.gmail.com>
 <87r50idnni.fsf@free.fr> <20111207083708.GK27267@pengutronix.de>
 <87mxawxz9e.fsf@free.fr>
Date: Thu, 15 Dec 2011 10:28:38 +0100
In-Reply-To: <87mxawxz9e.fsf@free.fr> (Robert Jarzmik's message of "Tue, 13
 Dec 2011 16:33:17 +0100")
Message-ID: <8739cmxjy1.fsf@free.fr>
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
Subject: Re: FAT filesystem write and long names stability
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Robert Jarzmik <robert.jarzmik@free.fr> writes:

> Sascha Hauer <s.hauer@pengutronix.de> writes:
>> It would be great if you could give it some testing as obviously my test
>> patterns didn't reveal the 'create folder' bug you described.
> Tomorrow or wednesday, I'll make the few tests I always do (making a
> directory, copying a file, deleting a file, etc ...) and report.
This is what my tests give back:

**** With FAT caching (barebox.git/next + rjk mioa701 support):
barebox:/sdcard time bmp /sdcard/help.bmp 
time: 6895ms
barebox:/sdcard time cp /sdcard/help.bmp /sdcard/toto.tmp
time: 13278ms
barebox:/sdcard ls -l help.bmp
-rwxrwxrwx     230454 help.bmp
barebox:/sdcard 

**** Without FAT caching (merged pu/block into barebox.git/next + rjk mioa701 support)
barebox:/sdcard time bmp /sdcard/help.bmp
time: 9219ms
barebox:/sdcard time cp /sdcard/help.bmp /sdcard/titi.tmp
BUG: failure at common/block.c:248/block_

The "BUG" thing prevents me from going further. But it seems the cache in main
tree speeds up things. I also think that creating directories without files
serves no purpose I can think of, and is an acceptable tradeoff for the improved
performance.

Cheers.

--
Robert

PS: help.bmp is a converted bmp, 320x480, 24 bpp from :
    http://t0.gstatic.com/images?q=tbn:ANd9GcQssQd1VBKJUde7lZpU49GVwDaZbNGvbDNbrOeSbPrL_MfBkK61SA

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
