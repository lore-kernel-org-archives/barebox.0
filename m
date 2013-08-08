Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-we0-f181.google.com ([74.125.82.181])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1V7Rbp-0007wh-Vt
 for barebox@lists.infradead.org; Thu, 08 Aug 2013 14:54:39 +0000
Received: by mail-we0-f181.google.com with SMTP id p58so2590305wes.40
 for <barebox@lists.infradead.org>; Thu, 08 Aug 2013 07:54:13 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20130808135854.GI19197@ns203013.ovh.net>
References: <CACbe1rvRARNyr+RxbU8cinZ8UnF=qGDbvWizK-xpq8kK8=kg9A@mail.gmail.com>
 <20130808135854.GI19197@ns203013.ovh.net>
Date: Thu, 8 Aug 2013 16:54:11 +0200
Message-ID: <CACbe1ruzhRWcq4aoeDHUpP4T4Cj96knQtykJ0P5y=Jzp3giD+g@mail.gmail.com>
From: Pawel Suchanecki <pawel.suchanecki@gmail.com>
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
Subject: Re: [SPAM] barebox-2013.07.0 / barebox-2013.08.0 splash, bmp, png
 problems on Mini2440
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

2013/8/8 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>:
>> Also bmp & png commands are not available.
>
> because the image renderer detect it automaticaly so you do need to care which
> format the splash command use

You're right, I noticed that later.

>> What am I doing wrong?
>>
> are you sure your lcd is connecte correctly?
>
> I try the png support work fine sandbox & atmel at91 boards

Jean-Christophe,

Thanks for your help.
The problem was I didn't choose the right LCD type when doing menuconfig.

Now it works,

Thanks again,
Pawel.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
