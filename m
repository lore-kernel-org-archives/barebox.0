Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-io0-x22a.google.com ([2607:f8b0:4001:c06::22a])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZohzF-0002xk-Br
 for barebox@lists.infradead.org; Wed, 21 Oct 2015 01:14:42 +0000
Received: by iodv82 with SMTP id v82so41800656iod.0
 for <barebox@lists.infradead.org>; Tue, 20 Oct 2015 18:14:19 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20151019073643.GI14476@pengutronix.de>
References: <1445232837-22317-1-git-send-email-andrew.smirnov@gmail.com>
 <20151019073643.GI14476@pengutronix.de>
Date: Tue, 20 Oct 2015 18:14:19 -0700
Message-ID: <CAHQ1cqH=X8gACCkY5rnmg+y46za1zRD6bjk9j2x8PoWC+0LJjA@mail.gmail.com>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] ARM: Add support for semihosting
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

>> +Not all of the I/O primitives neccessary to implement a full
>> +filesystem are exposed in ARM semihosting API and because of that some
>> +aspects of filesystem funcionality are missing. Implementation does
>> +not have support for listing directories. This means a
>> +:ref:`command_ls` to a SMHFS-mounted path will show an empty
>> +directory. Nevertheless, the files are there.
>
> Is adding ls support a matter of implementing it? Does the semihosting
> protocol support ls?

Unfortunately the protocol doesn't support any directory related
operations. It is possible to implement custom semihosting "syscalls"
and it wouldn't be that hard to add support of those to OpenOCD, but
that would leave out other debugging tools.


>
>> +
>> +Example::
>> +
>> +  mount -t smhfs /dev/null /mnt/smhfs
>
> Are actions on the host required to do that? Maybe some example for
> using this with openocd would be useful.

I completely forgot to add that to the documentation. Will fix that in
the next version of the patch.

>> +
>> +     if (semihosting_remove(pathname) != 0)
>> +             return semihosting_errno();
>
> Are the errnos semihosting returns compatible with the barebox errnos?

I can't speak for any implementation other that OpenOCD's, but what
that tool does is it returns the value of host's 'errno' after
executing a corresponding syscall.


>
> Sascha
>
> --
> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
