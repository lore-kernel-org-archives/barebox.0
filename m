Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-vc0-f171.google.com ([209.85.220.171])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XYXvN-0007FH-1X
 for barebox@lists.infradead.org; Mon, 29 Sep 2014 10:11:21 +0000
Received: by mail-vc0-f171.google.com with SMTP id hy10so941038vcb.2
 for <barebox@lists.infradead.org>; Mon, 29 Sep 2014 03:10:57 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CAOngqVXJgqckdj0QsN=s2bhAjUL4hyB3GHw2XjeENkXxehY_FQ@mail.gmail.com>
References: <53C25B45.7010101@gmail.com>
 <20140713145526.2cf6407fc9a17a4e8db89a50@gmail.com>
 <CAOngqVV-PcbsowH9iOHXpxXNvJEb_k7KyWakQVVGT9FMm4iFLw@mail.gmail.com>
 <20140715110157.e505c7ad66ef5871b1ecf830@gmail.com>
 <CAOngqVVHG5+S68okE4kqU95FNtkxvJFtcZj0W2KmH=54XxdKTg@mail.gmail.com>
 <20140715142753.d2c6424ea6b2d1b810b0de73@gmail.com>
 <CAOngqVXSRuHmPL_Z73AfLPCdzitS7=kkViy2rJMvX1vvsiOhbw@mail.gmail.com>
 <20140716063002.GB23235@pengutronix.de>
 <CAOngqVUUZOeRToJp_6vvxqmB-x2D=VAHo=JntpfegQ03P5axgQ@mail.gmail.com>
 <20140904211419.ea6eae69a1e96d2cb9d3e20e@gmail.com>
 <CAOngqVV5qCVVOMrrfh705inrYAGz=b3+M7J+NSJ6_UY+4njpJA@mail.gmail.com>
 <20140928182200.11222332eea95ccc6c021bf4@gmail.com>
 <CAOngqVXJgqckdj0QsN=s2bhAjUL4hyB3GHw2XjeENkXxehY_FQ@mail.gmail.com>
Date: Mon, 29 Sep 2014 12:10:57 +0200
Message-ID: <CAGocsp2VU8BY9Q5N4UrDwY5oaxfNiCer5QFkq8qOCWz=u9xMEA@mail.gmail.com>
From: Michele Di Pede <michele.di.pede@tass.be>
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
To: Daniele Lacamera <daniele.lacamera@tass.be>
Cc: barebox <barebox@lists.infradead.org>

On Mon, Sep 29, 2014 at 11:45 AM, Daniele Lacamera
<daniele.lacamera@tass.be> wrote:
> On Sun, Sep 28, 2014 at 4:22 PM, Antony Pavlov <antonynpavlov@gmail.com> wrote:
>>
>> 1. Do we really need this '#ifdef PICO_SUPPORT_UDP' BEFORE (!)
>> guard macro in pico_dhcp_client.h?
>>
>
> I moved these in latest PicoTCP commit. Thanks.
>
>
>> 2. New pico_tftp_start_{r,t}x programming interface can be used for
>> realization legacy standalone 'tftp' command.
>> But I have no idea how to use this interface for filesystem-over-tftp
>> (it's the modern barebox' tftp realization)!
>>
>> Barebox filesystem interface needs something like this programming
>> interface:
>>
>>   struct pico_tftp_session *s;
>>
>>   s = pico_tftp_new_session_rx(addr, port, family, filename);
>>   ...
>>   filesize = pico_tftp_get_file_size(s);
>>   ...
>>   pico_tftp_receive(s, buf, len);
>>   ...
>>   pico_tftp_receive(s, buf, len);
>>   ... ... ...
>>   pico_tftp_receive(s, buf, len);
>>   ...
>>   pico_tftp_close(s);
>>
>>
>> I mean that receiving process has to be controlled by barebox,
>> not by picotcp. Because a new portion of data is received
>> by filesystem user initiative, not by network stack initiative.
>
> Thanks for the comments. A few from my side:
>
> - pico_tftp_receive is non-blocking, and will return immediately if no
> data is available. You always have to be bound to some RX event to be
> sure that your next receive() call is successful, so in some way you
> still want it network-bound.

I'll modify the API in order to add this capability, the application
will be responsible to sending ACK message as soon as possible (it
will be wrapped into the new applications API we will provide.

> - We can implement the get_file_size, but not all servers will support
> it. Michele has a strategy for developing more advanced TFTP features,
> he will post on it later
>
TFTP version 2 (RFC 1350) handles only simple GET and PUT requests.
Query for file size is not there, it's stated in RFC 2359 as an
OPTIONAL feature; this means that his support is not guaranteed by all
servers.
We currently support only RFC 1350 but we plan to add support for RFC
2359 soon. I've just added two new feature request on our issue
tracker. In meanwhile please try if you can use the current API as
suggested in the example file test/examples/tftp.c
> regards,

Best regards
Michele

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
