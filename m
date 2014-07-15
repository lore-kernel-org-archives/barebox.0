Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-f44.google.com ([209.85.215.44])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X754z-0007vW-Gl
 for barebox@lists.infradead.org; Tue, 15 Jul 2014 15:55:47 +0000
Received: by mail-la0-f44.google.com with SMTP id e16so2943403lan.17
 for <barebox@lists.infradead.org>; Tue, 15 Jul 2014 08:55:21 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20140715165756.53acb0e50c0390dfefb63b6b@gmail.com>
References: <53C25B45.7010101@gmail.com>
 <20140713145526.2cf6407fc9a17a4e8db89a50@gmail.com>
 <CAOngqVV-PcbsowH9iOHXpxXNvJEb_k7KyWakQVVGT9FMm4iFLw@mail.gmail.com>
 <20140715110157.e505c7ad66ef5871b1ecf830@gmail.com>
 <CAOngqVVHG5+S68okE4kqU95FNtkxvJFtcZj0W2KmH=54XxdKTg@mail.gmail.com>
 <20140715142753.d2c6424ea6b2d1b810b0de73@gmail.com>
 <CAOngqVXSRuHmPL_Z73AfLPCdzitS7=kkViy2rJMvX1vvsiOhbw@mail.gmail.com>
 <20140715165756.53acb0e50c0390dfefb63b6b@gmail.com>
Date: Tue, 15 Jul 2014 17:55:21 +0200
Message-ID: <CAOngqVVGs6PzdwXPU5ON48k=d5SwdeLn8zTdQf6MYT4mgap3PA@mail.gmail.com>
From: Daniele Lacamera <daniele.lacamera@tass.be>
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
Subject: Re: picotcp tftp support [was Adding IPv4 multicast support]
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox <barebox@lists.infradead.org>

On Tue, Jul 15, 2014 at 2:57 PM, Antony Pavlov <antonynpavlov@gmail.com> wrote:
> On Tue, 15 Jul 2014 12:57:21 +0200
> Daniele Lacamera <daniele.lacamera@tass.be> wrote:
>
>> On Tue, Jul 15, 2014 at 12:27 PM, Antony Pavlov <antonynpavlov@gmail.com> wrote:
>>
>> >> I will be able to provide such an interface by using a similar
>> >> approach to what you used for ping (so via net_poll() routine called
>> >> in a loop), assuming that your posix-like interface expects blocking
>> >> calls for read/write operations.
>> >
>> > Alas! We can't use this approach for tftp because tftp is a FILESYSTEM in barebox.
>>
>> Then again, I'd like to know if your FS implementation actually needs
>> blocking call, and in case, where is the code supposed to block. Does
>> barebox have some kind of support for multiple threads, or a default
>> event loop where background operations can be added? Or are the FS
>> calls non blocking?
>
> AFAIK barebox does not support threads.
> Also all filesystem calls are blocking.
>

Then for me it is still not clear *where* a filesystem call is
blocking. On a multi-threaded system, the calls is supposed to block
somewhere in thread_sleep() functions. On a single thread execution
model, we will need to tick the TCP/IP stack in the background while
the call is "busy". Suppose that you issue a read call to any network
filesystem (in this case TFTP issuing a get command). The file needs
to be retreived by the TCP/IP stack, so I guess that the only
implementation that makes sense would be something like:

while (callback_has_not_been_called) {
   if(ctrlc())
     break;
   pico_stack_tick();
   // maybe sleep here
}

What you stated earlier, i.e.
> Tftp user code know nothing about network stuff. User code just use read and write
> for acessing file data, no matter which driver (ramdisk, SATA, MTD, I2C or network)
> is used for actual data transfer.

does not make much sense to me, as the network is required to access
remote files, so the stack needs to tick constantly under the hood if
you want to receive packets while your read call is blocked waiting
for data.

User does not need to know that her read call is going through the
network, but the TFTP fs module (or another underlying "driver") is
supposed to access the picotcp API properly to retrieve the data
needed when I/O operations are running. The intermediate layer (the
new fs/tftp.c) is supposed to issue a stack tick whenever it is
suspended waiting for network events.

Finally, I will assume that the use case needed is TFTP working in
client mode, issuing GET/PUT commands upon open posix calls.

I can provide to you (and the list) an example implementation, which I
will develop on top of your latest picotcp branch and test via
sandbox/tuntap. In the meanwhile, any comment on the topic by barebox
developers are more than welcome.

Thanks

/d

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
