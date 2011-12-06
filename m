Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp1-g21.free.fr ([2a01:e0c:1:1599::10])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RXrqO-0008U0-Bp
 for barebox@lists.infradead.org; Tue, 06 Dec 2011 10:01:49 +0000
From: Robert Jarzmik <robert.jarzmik@free.fr>
References: <87r50ilxed.fsf@free.fr>
 <CAJfOKBzSOKmZEvmWsWxQ1+yJFxaB-rzCgR2mxTpTUCoA_9W1Mg@mail.gmail.com>
 <87vcpueoqc.fsf@free.fr>
 <CAJfOKBwmX8EwD1hPvYSMddp6sZKJJ5kCBLf9KYWLsjkk4ZAC9A@mail.gmail.com>
Date: Tue, 06 Dec 2011 11:01:37 +0100
In-Reply-To: <CAJfOKBwmX8EwD1hPvYSMddp6sZKJJ5kCBLf9KYWLsjkk4ZAC9A@mail.gmail.com>
 (Franck JULLIEN's message of "Mon, 5 Dec 2011 21:43:07 +0100")
Message-ID: <87r50idnni.fsf@free.fr>
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

> 2011/12/5 Robert Jarzmik <robert.jarzmik@free.fr>:
>> Franck JULLIEN <franck.jullien@gmail.com> writes:
>>
>>> Do you have this patch applied to your working branch ? :
>>>
>>> fs/fat: Initialize local variable finfo
>> Hi Franck,
>>
>> I cross-checked, and indeed I do not have this fix in my branch, while it sits
>> in next branch. I'll rebase and make another try.
Good guess, with that patch no bug :)

>> Do you by any chance tried the "write" part of FAT ?
> Yes I did try it and as far as I can tell it works. I wrote some test
> files to the SD then read it back on the PC and file were there....
> I don't think I tried to create folders.
Ah that's the node of the story.
I made 2 tries :
 (1) mount the SD card, create a folder "toto", umount
     => when checked in my laptop, no new folder is created
 (2) mount the SD card, create a folder "toto", and copy in it a file "foo.txt",
 umount
     => when checked in my laptop, both the directory and the file *are* there

So I suppose that creating a directory without any file within doesn't trigger
the write on the device.

Thanks for your help.

Cheers.

-- 
Robert

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
