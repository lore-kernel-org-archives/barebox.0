Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-f42.google.com ([209.85.215.42])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X6z5V-0002ZV-8x
 for barebox@lists.infradead.org; Tue, 15 Jul 2014 09:31:54 +0000
Received: by mail-la0-f42.google.com with SMTP id pn19so3763272lab.15
 for <barebox@lists.infradead.org>; Tue, 15 Jul 2014 02:31:29 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20140715110157.e505c7ad66ef5871b1ecf830@gmail.com>
References: <53C25B45.7010101@gmail.com>
 <20140713145526.2cf6407fc9a17a4e8db89a50@gmail.com>
 <CAOngqVV-PcbsowH9iOHXpxXNvJEb_k7KyWakQVVGT9FMm4iFLw@mail.gmail.com>
 <20140715110157.e505c7ad66ef5871b1ecf830@gmail.com>
Date: Tue, 15 Jul 2014 11:31:29 +0200
Message-ID: <CAOngqVVHG5+S68okE4kqU95FNtkxvJFtcZj0W2KmH=54XxdKTg@mail.gmail.com>
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

On Tue, Jul 15, 2014 at 9:01 AM, Antony Pavlov <antonynpavlov@gmail.com> wrote:
>
> barebox uses POSIX file interface for working with tftp.
>
> We have to provide these basic functions (see fs/tftp.c):
>
> static struct fs_driver_d tftp_driver = {
>         .open      = tftp_open,
>         .read      = tftp_read,
>         .write     = tftp_write,
>         .close     = tftp_close,
>         /* Other functions for unlink, truncate,
>            mkdir, rmdir, stat, opendir, lseek, create
>            are not so important. */
> };
>
> So **fs/tftp.c code is driven** by user code that
> uses file interface for accessing to the files
> on tftp-server.
>
> AFAI understand picotcp tftp support uses event-driven interface
> so **user code is driven** by picotcp tftp support code.
>
> How we can use picotcp tftp support for realization
> of POSIX file interface?

Hi Antony,

I will be able to provide such an interface by using a similar
approach to what you used for ping (so via net_poll() routine called
in a loop), assuming that your posix-like interface expects blocking
calls for read/write operations.

The loop will also be interruptible via CTRL+C.

I would like to know more about this approach though, are you
implementing client only functionality (get/put) or do you want to be
able to listen for client "connections" as well? How is the connection
initiated (I see there is a tftp_probe function that's not included in
the API group)?

Thanks,

/d

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
