Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-fx0-f49.google.com ([209.85.161.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RXfNV-0007U1-9k
 for barebox@lists.infradead.org; Mon, 05 Dec 2011 20:43:09 +0000
Received: by fabs1 with SMTP id s1so1846617fab.36
 for <barebox@lists.infradead.org>; Mon, 05 Dec 2011 12:43:07 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <87vcpueoqc.fsf@free.fr>
References: <87r50ilxed.fsf@free.fr>
 <CAJfOKBzSOKmZEvmWsWxQ1+yJFxaB-rzCgR2mxTpTUCoA_9W1Mg@mail.gmail.com>
 <87vcpueoqc.fsf@free.fr>
Date: Mon, 5 Dec 2011 21:43:07 +0100
Message-ID: <CAJfOKBwmX8EwD1hPvYSMddp6sZKJJ5kCBLf9KYWLsjkk4ZAC9A@mail.gmail.com>
From: Franck JULLIEN <franck.jullien@gmail.com>
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
To: Robert Jarzmik <robert.jarzmik@free.fr>
Cc: barebox@lists.infradead.org

2011/12/5 Robert Jarzmik <robert.jarzmik@free.fr>:
> Franck JULLIEN <franck.jullien@gmail.com> writes:
>
>> Do you have this patch applied to your working branch ? :
>>
>> fs/fat: Initialize local variable finfo
> Hi Franck,
>
> I cross-checked, and indeed I do not have this fix in my branch, while it sits
> in next branch. I'll rebase and make another try.
>
> Do you by any chance tried the "write" part of FAT ?
>
> Cheers.
>
> --
> Robert

Yes I did try it and as far as I can tell it works. I wrote some test
files to the SD then read it back on the PC and file were there....
I don't think I tried to create folders.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
