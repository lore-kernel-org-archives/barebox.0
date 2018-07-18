Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-it0-x22b.google.com ([2607:f8b0:4001:c0b::22b])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ffrXy-0006a9-A9
 for barebox@lists.infradead.org; Wed, 18 Jul 2018 18:51:35 +0000
Received: by mail-it0-x22b.google.com with SMTP id g141-v6so3423383ita.4
 for <barebox@lists.infradead.org>; Wed, 18 Jul 2018 11:51:23 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20180718140321.GA28539@mail.gnudd.com>
References: <CAPPP46SniSuaZPfHGgb3YyvwDsW2jz6UwXLaNP5XL1PbF8_eWg@mail.gmail.com>
 <20180718140321.GA28539@mail.gnudd.com>
From: Giuseppe Levi <giuseppe.levi@gmail.com>
Date: Wed, 18 Jul 2018 20:50:42 +0200
Message-ID: <CAPPP46RVU698Uo_Ej2O8N7HETKRGG6aZDkpFA69Ox+tR3DdcGw@mail.gmail.com>
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
Subject: Re: qemu and barebox
To: Alessandro Rubini <rubini-list@gnudd.com>
Cc: barebox@lists.infradead.org

Ok tried with  CROSS_COMPILE=arm-linux-gnueabi- this should be 32bit arm
then: qemu-system-arm -m 256M -machine virt -display none  -serial
stdio -kernel barebox

hangs..... any idea ? Should I use a different machine ?

It would be very complex to create a White Rabbit virtual machine ?
(HW description is open)



2018-07-18 16:03 GMT+02:00 Alessandro Rubini <rubini-list@gnudd.com>:
> Hello.
>
>> emulate a spacial boot configuration of the CERN White Rabbit switch
>> (http://white-rabbit.web.cern.ch/).
>
> The White Rabbit switch is AT91SAM9G45 (I have one on my desk).
> Unless your own WR switch is a new design running on cortex-a57, you
> shoul cross-compile for arm32 and use a corresponding qemu
> configuration.
>
> /alessandro



-- 
Dr. Giuseppe Levi
Physics Dpt and INFN
viale Berti Pichat 6/2
40127 BOLOGNA
Mobile: +39 393 0086704

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
