Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-it0-x243.google.com ([2607:f8b0:4001:c0b::243])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f6grg-0002l5-1V
 for barebox@lists.infradead.org; Thu, 12 Apr 2018 18:22:34 +0000
Received: by mail-it0-x243.google.com with SMTP id 142-v6so26124itl.5
 for <barebox@lists.infradead.org>; Thu, 12 Apr 2018 11:22:20 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20180411083957.pvagr7h4my4lyfpo@pengutronix.de>
References: <20180326130915.8726-1-andrew.smirnov@gmail.com>
 <20180326130915.8726-3-andrew.smirnov@gmail.com>
 <20180403065436.p2vec7ntdja55hts@pengutronix.de>
 <CAHQ1cqHdhHiknrnzfU_9YLc_HiyNVDSPZyGNNsHcrAhgUoK_ig@mail.gmail.com>
 <20180411083957.pvagr7h4my4lyfpo@pengutronix.de>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 12 Apr 2018 11:22:18 -0700
Message-ID: <CAHQ1cqHRuikPvLR+nNs6+=Nv0y3XvXdbkKjimCC=87uyi0HgNg@mail.gmail.com>
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
Subject: Re: [PATCH 2/3] console: Add simplified 'serdev' framework from Linux
 kernel
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Wed, Apr 11, 2018 at 1:39 AM, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> On Mon, Apr 09, 2018 at 09:40:46AM -0700, Andrey Smirnov wrote:
>> On Mon, Apr 2, 2018 at 11:54 PM, Sascha Hauer <s.hauer@pengutronix.de> wrote:
>> > Hi Andrey,
>> >
>> > Some comments inside.
>> >
>> >
>> > On Mon, Mar 26, 2018 at 06:09:14AM -0700, Andrey Smirnov wrote:
>> >> Port 'serdev' UART-slave deivce framework found in recent Linux
>> >> kernels (post 4.13) in order to be able to port 'serdev' slave drivers
>> >> from Linux.
>> >>
>> >> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
>> >> @@ -323,6 +324,17 @@ int console_register(struct console_device *newcdev)
>> >>               dev->parent = newcdev->dev;
>> >>       platform_device_register(dev);
>> >>
>> >> +     newcdev->open_count = 0;
>> >> +
>> >> +     /*
>> >> +      * If our console deive is a serdev, we skip the creation of
>> >
>> > s/deive/device/
>>
>> Will fix in v2.
>>
>> >
>> >> +      * corresponding entry in /dev as well as registration in
>> >> +      * console_list and just go straigh to populating child
>> >
>> > s/straigh/straight/
>>
>> Ditto.
>>
>> >
>> >> +      * devices.
>> >> +      */
>> >> +     if (serdev_node)
>> >> +             return of_platform_populate(serdev_node, NULL, dev);
>> >
>> > How is this going to be used? A serdev driver binds to the serdev_node
>> > and then it probably needs to get a pointer to the console device,
>> > right? How does the driver accomplish this?
>> >
>>
>> Serdev slave driver doesn't hold explicit pointer to console device,
>> instead accessing it via point to serdev_device. The latter could
>> obtained by calling to_serdev_device(dev->parent), where dev is
>> device_d given to slave driver's probe function.
>>
>>
>> >> +/**
>> >> + * struct serdev_device - Basic representation of an serdev device
>> >> + *
>> >> + * @dev:             Corresponding device
>> >> + * @fifo:            Circular buffer used for console draining
>> >> + * @buf:             Buffer used to pass Rx data to consumers
>> >> + * @poller           Async poller used to poll this serdev
>> >> + * @polling_interval:        Async poller periodicity
>> >> + * @polling_window:  Duration of a single busy loop poll
>> >> + * @receive_buf:     Function called with data received from device;
>> >> + *                   returns number of bytes accepted;
>> >> + */
>> >> +struct serdev_device {
>> >> +     struct device_d *dev;
>> >> +     struct kfifo *fifo;
>> >> +     unsigned char *buf;
>> >> +     struct poller_async poller;
>> >> +     uint64_t polling_interval;
>> >> +     uint64_t polling_window;
>> >> +
>> >> +     int (*receive_buf)(struct serdev_device *, const unsigned char *,
>> >> +                        size_t);
>> >> +};
>> >> +
>> >> +int serdev_device_open(struct serdev_device *);
>> >> +unsigned int serdev_device_set_baudrate(struct serdev_device *, unsigned int);
>> >> +int serdev_device_write(struct serdev_device *, const unsigned char *,
>> >> +                     size_t, unsigned long);
>> >
>> > So a serdev driver uses serdev_device_write() to send characters out. To
>> > receive characters it has to implement serdev_device->receive_buf,
>> > right?
>>
>> Right. I tried to implement exactly the same API that Linux's serdev
>> API provides.
>>
>> > What kind of devices did you implement this for?
>>
>> I ported serdev in support of porting the driver for RAVE SP which is
>> a small microcontroller device found many ZII board including RDU2. It
>> implement a whole bunch of various functionality including watchdog,
>> parameter EEPROM, sensor access, backlight control, button input event
>> generation, etc.
>>
>> > For devices which send data without request (GPS?) this seems the way to go. For
>> > others a synchronous receive function might be good, no?
>> >
>>
>> I didn't implement anything like that mostly because Linux serdev API
>> doesn't and any ported driver wouldn't have any need for those
>> functions. But in general, I am not sure how useful synchronous
>> receive function would be. In my experience, devices like that usually
>> implement some binary transport protocol with packetization/escape
>> sequences on top of UART, which usually requires a state machine
>> operating with byte granularity as the data comes in to parse
>> responses correctly and synchronous APIs are not extremely useful for
>> that kind of a use-case.
>>
>> FWIW, since serdev API is integrated into poller infrastructure it is
>> pretty trivial to write blocking code with it. Here's how I use it in
>> my driver to implement request-response type of a function:
>>
>> rave_sp_write(sp, data, data_size);
>> /*
>> * is_timeout will implicitly poll serdev via poller
>> * infrastructure
>> */
>> while (!is_timeout(start, SECOND) && !reply.received)
>>    ;
>
> I understand that synchronous receiving might not be that useful. Given
> how simple it is we could add a synchronous receive wrapper function
> just for the sake of completeness, even if it only provides an example
> how the code can be used.

OK, will do in v2.

Thanks,
Andrey Smirnov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
