Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-qg0-x236.google.com ([2607:f8b0:400d:c04::236])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aGS8z-0006o8-Mk
 for barebox@lists.infradead.org; Tue, 05 Jan 2016 13:59:26 +0000
Received: by mail-qg0-x236.google.com with SMTP id 6so200036735qgy.1
 for <barebox@lists.infradead.org>; Tue, 05 Jan 2016 05:59:05 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <568BCA39.6010208@pengutronix.de>
References: <1451981463-23604-1-git-send-email-mkl@pengutronix.de>
 <1451981463-23604-4-git-send-email-mkl@pengutronix.de>
 <CAGm1_kunZqatbVbE3AgS-wQdx-gUqeShE2PrHYwxgLX74DRRLw@mail.gmail.com>
 <568B9BCD.9070509@pengutronix.de>
 <CAGm1_ktRkoqmP4j3AWch1KJqwWzvCqix8c7EUEiZmRd+vh8qKQ@mail.gmail.com>
 <568BAF11.4090009@pengutronix.de>
 <CAGm1_kuAijx2ZqpJ7aSyLZvSoYDv306QyvtsSA8pRCpFrWM+3Q@mail.gmail.com>
 <568BCA39.6010208@pengutronix.de>
From: Yegor Yefremov <yegorslists@googlemail.com>
Date: Tue, 5 Jan 2016 14:58:44 +0100
Message-ID: <CAGm1_ktY7U+FC5DJMFruh1a_1ydyQ0fCAB44gj0ZdTmJYPHQAA@mail.gmail.com>
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
Subject: Re: [PATCH 3/3] bootm: add initial FIT support
To: Marc Kleine-Budde <mkl@pengutronix.de>
Cc: Sascha Hauer <sha@pengutronix.de>, barebox <barebox@lists.infradead.org>, kernel@pengutronix.de

On Tue, Jan 5, 2016 at 2:50 PM, Marc Kleine-Budde <mkl@pengutronix.de> wrote:
> On 01/05/2016 02:05 PM, Yegor Yefremov wrote:
>>>>>> What about unsigned images?
>>>>>
>>>>> That's not our use case. We use plain zImages instead.
>>>>
>>>> The solution would be to introduce an option like in U-Boot?
>>>>
>>>> CONFIG_FIT_SIGNATURE:
>>>>
>>>> This option enables signature verification of FIT uImages,
>>>> using a hash signed and verified using RSA. If
>>>> CONFIG_SHA_PROG_HW_ACCEL is defined, i.e support for progressive
>>>> hashing is available using hardware, RSA library will use it.
>>>> See doc/uImage.FIT/signature.txt for more details.
>>>
>>> Technically possible, but I'm not sure what are the benefits of using
>>> fit images, if you don't need signatures. barebox implements
>>> freedesktop.org's bootspec and this is IMHO the way to go.
>>
>> For me FIT is just a way to have a kernel and a bunch of device tree
>> blobs in one file. Signed or not signed is an option for me. Just like
>> U-Boot implements it. This is user responsibility.
>
> Send patches. :D

I'll prepare one on top of yours. So far I can boot into Linux on my
am335x based board, so

Tested-by: Yegor Yefremov <yegorslists@googlemail.com>

>> In my use case I just read device ID from EEPROM, load my
>> kernel-fit.itb and select needed DTB via this ID. This way I have only
>> one SD card image, that can be run on more, than 10 different devices
>> using the same core module.
>
>>>>>> I also get: unsupported algo crc32
>>>>>> Is it intended to be supported?
>>>>>
>>>>> Not for our usecase - feel free to add crc32 support.
>>>>
>>>> OK.
>>>>
>>>> But what about FIT configuration selection syntax?
>>>
>>> What's this?
>>
>> Have you seen my comments to this patch regarding
>> fit_open_configuration() routine?
>
> sorry - I've missed that. Too many quoted lines. :D
>
>>> > +static int fit_open_configuration(struct fit_handle *handle, int num)
>>> > +{
>>> > +       struct device_node *conf_node = NULL, *sig_node;
>>> > +       char unit_name[10];
>>> > +       const char *unit, *desc;
>>> > +       int ret, level;
>>> > +
>>> > +       conf_node = of_get_child_by_name(handle->root, "configurations");
>>> > +       if (!conf_node)
>>> > +               return -ENOENT;
>>> > +
>>> > +       if (num) {
>>> > +               snprintf(unit_name, sizeof(unit_name), "conf@%d", num);
>>
>> This is not working for my *.its file:
>> https://github.com/visionsystemsgmbh/onrisc_br_bsp/blob/master/board/vscom/baltos/kernel-fit.its
>> U-Boot is working with bootm ${loadaddr}#conf${board_name}
>>
>> For Barebox I've changed this line to
>>
>> snprintf(unit_name, sizeof(unit_name), "conf%d@1", num)
>>
>> This is how I start Linux: bootm /boot/kernel-fit.itb@$global.board.id
>>
>> What is the standard for providing FIT configuration?
>
> Don't know. Is there a spec in the u-boot sources, otherwise use the code.

Will look closer at U-Boot code and send a patch.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
