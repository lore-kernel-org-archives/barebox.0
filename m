Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-qa0-f42.google.com ([209.85.216.42])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TCRmo-0002df-HK
 for barebox@lists.infradead.org; Fri, 14 Sep 2012 09:02:07 +0000
Received: by qaeb19 with SMTP id b19so3729401qae.15
 for <barebox@lists.infradead.org>; Fri, 14 Sep 2012 02:02:05 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20120914085001.GA25990@game.jcrosoft.org>
References: <CAJfOKByn43d80YRB52D2RQXVhvweAzQYv2MvRtVyh2-+q5XBQg@mail.gmail.com>
 <20120914071804.GR6180@pengutronix.de>
 <CAJfOKBwqwKGcTZ7X0Z9yLiD6EezXoZmjqfar3koM=d0pvRCCmQ@mail.gmail.com>
 <20120914072536.GS6180@pengutronix.de>
 <20120914074437.GE20834@game.jcrosoft.org>
 <CAJfOKByY9O8ARE3BAbMbmyeowRLcVBMSQv8hFey=cx7=bahHWg@mail.gmail.com>
 <20120914085001.GA25990@game.jcrosoft.org>
Date: Fri, 14 Sep 2012 11:02:05 +0200
Message-ID: <CAJfOKBydgM3oTtHM-J+0i6n4kCiEz1jxp+2FhYnn+fC2Mou5Tg@mail.gmail.com>
From: Franck Jullien <franck.jullien@gmail.com>
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
Subject: Re: [RFC][FAT] Handle MBR on the first sector
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox <barebox@lists.infradead.org>

2012/9/14 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>:
>
> On 10:47 Fri 14 Sep     , Franck Jullien wrote:
>>
>> 2012/9/14 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>:
>> >
>> > On 09:25 Fri 14 Sep     , Sascha Hauer wrote:
>> >>
>> >> On Fri, Sep 14, 2012 at 09:22:07AM +0200, Franck Jullien wrote:
>> >> > 2012/9/14 Sascha Hauer <s.hauer@pengutronix.de>:
>> >> > > Hi Franck,
>> >> > >
>> >> > > On Thu, Sep 13, 2012 at 02:13:29PM +0200, Franck Jullien wrote:
>> >> > >> *** Did not send this email with git because it's no working where I am **
>> >> > >>
>> >> > >> We may have some disk with MBR as a first sector. In this case, the
>> >> > >> current FAT check returns an error. However, the FAT sector exist and
>> >> > >> the MBR can tell us where it is.
>> >> > >>
>> >> > >> This patch make the FAT fs try to find the FAT boot sector on the first
>> >> > >> sector of the first partition in case it is not on sector 0.
>> >> > >
>> >> > > The patch looks good. Not applying it because it's RFC, but I would if
>> >> > > you give your ok.
>> >> > >
>> >> >
>> >> > You have it.
>> >>
>> >> Thanks, applied
>> >
>> > Does this work with the fat autodetection
>> >
>> > Best Regards,
>> > J.
>>
>> What do you mean ?
>>
>> It works when you mount your device as FAT. The FAT fs check is the
>> first sector is FAT boot sector. If not, it suppose it is an MBR and
>> the FAT boot sector is in the first partition.
> check the the next branch
>
> I add the fs detection to do not specify the filesystem type anymore in mount
>
> Best Regards,
> J.

It won't. We need to check if it is an MBR here too (static int
is_fat(u8 *buf)) ....

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
