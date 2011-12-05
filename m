Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp1-g21.free.fr ([2a01:e0c:1:1599::10])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RXfLH-0007PF-WF
 for barebox@lists.infradead.org; Mon, 05 Dec 2011 20:40:52 +0000
From: Robert Jarzmik <robert.jarzmik@free.fr>
References: <87r50ilxed.fsf@free.fr>
 <CAJfOKBzSOKmZEvmWsWxQ1+yJFxaB-rzCgR2mxTpTUCoA_9W1Mg@mail.gmail.com>
Date: Mon, 05 Dec 2011 21:40:43 +0100
In-Reply-To: <CAJfOKBzSOKmZEvmWsWxQ1+yJFxaB-rzCgR2mxTpTUCoA_9W1Mg@mail.gmail.com>
 (Franck JULLIEN's message of "Mon, 5 Dec 2011 21:03:27 +0100")
Message-ID: <87vcpueoqc.fsf@free.fr>
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
To: Franck JULLIEN <franck.jullien@gmail.com>
Cc: barebox@lists.infradead.org

Franck JULLIEN <franck.jullien@gmail.com> writes:

> Do you have this patch applied to your working branch ? :
>
> fs/fat: Initialize local variable finfo
Hi Franck,

I cross-checked, and indeed I do not have this fix in my branch, while it sits
in next branch. I'll rebase and make another try.

Do you by any chance tried the "write" part of FAT ?

Cheers.

-- 
Robert

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
