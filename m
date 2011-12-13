Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp1-g21.free.fr ([2a01:e0c:1:1599::10])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RaUMC-00069Z-I4
 for barebox@lists.infradead.org; Tue, 13 Dec 2011 15:33:30 +0000
From: Robert Jarzmik <robert.jarzmik@free.fr>
References: <87r50ilxed.fsf@free.fr>
 <CAJfOKBzSOKmZEvmWsWxQ1+yJFxaB-rzCgR2mxTpTUCoA_9W1Mg@mail.gmail.com>
 <87vcpueoqc.fsf@free.fr>
 <CAJfOKBwmX8EwD1hPvYSMddp6sZKJJ5kCBLf9KYWLsjkk4ZAC9A@mail.gmail.com>
 <87r50idnni.fsf@free.fr> <20111207083708.GK27267@pengutronix.de>
Date: Tue, 13 Dec 2011 16:33:17 +0100
In-Reply-To: <20111207083708.GK27267@pengutronix.de> (Sascha Hauer's message
 of "Wed, 7 Dec 2011 09:37:08 +0100")
Message-ID: <87mxawxz9e.fsf@free.fr>
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

Sascha Hauer <s.hauer@pengutronix.de> writes:

> On Tue, Dec 06, 2011 at 11:01:37AM +0100, Robert Jarzmik wrote:
> I had a look at it and the problem seems to be the fat caching layer I
> introduced. It brings the fat on disk and in memory out of sync. This
> layer has been necessary since without it the performance of the fat
> driver is really poor. You could try the following branch. It reverts
> the fat cache layer support and instead reimplements the block caching
> layer so that it can handle the access patterns of the fat driver
> better.
> It would be great if you could give it some testing as obviously my test
> patterns didn't reveal the 'create folder' bug you described.
Tomorrow or wednesday, I'll make the few tests I always do (making a
directory, copying a file, deleting a file, etc ...) and report.

As I also happen to use the FAT on SDCard for reading my framebuffer image, and
also to drop MTD content onto the same FAT, I'll tell you my "feeling" about
performance.

Cheers.

--
Robert

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
