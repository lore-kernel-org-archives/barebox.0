Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp1-g21.free.fr ([2a01:e0c:1:1599::10])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Tfynt-00025F-49
 for barebox@lists.infradead.org; Tue, 04 Dec 2012 20:09:18 +0000
From: Robert Jarzmik <robert.jarzmik@free.fr>
References: <1354558114-28799-1-git-send-email-renaud.barbier@ge.com>
 <87txs3ymg1.fsf@free.fr> <50BDD1F7.6070706@ge.com>
Date: Tue, 04 Dec 2012 21:09:06 +0100
In-Reply-To: <50BDD1F7.6070706@ge.com> (Renaud Barbier's message of "Tue, 04
 Dec 2012 10:35:35 +0000")
Message-ID: <87k3sxzijh.fsf@free.fr>
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
Subject: Re: [PATCH 00/18] UBIFS support
To: Renaud Barbier <renaud.barbier@ge.com>
Cc: barebox@lists.infradead.org

Renaud Barbier <renaud.barbier@ge.com> writes:

> On 03/12/2012 19:17, Robert Jarzmik wrote:
>> Hi Renaud,
>>
>> That's a really huge piece of a patchset.
>>
>> Please tell me that almost 100% of the code was taken out of the linux
>> kernel. Even better, are there any patches in there that are linux kernel
>> copies, so that review is not necessary ?
> It is actually derived from U-boot which derive it from Linux.  It would not be
> as recent as the Linux code.
> If you need the code to be fully derived from Linux, then ignore it. This is
> something
> I hopefully can work on in the future (N months).

It's up to Sascha, but I think out of U-boot is fine too.  So are all the
patches a full copy paste of U-boot, or are there specific parts (adaptation) to
barebox ? 

I'd think that if you tested the patches succesfully in barebox, and if the
adaptation is very small, we will review only the adaptation ... hence the
question, where is the adaptation ?

Cheers.

--
Robert

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
