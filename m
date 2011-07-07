Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ww0-f41.google.com ([74.125.82.41])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1Qeh4V-0004ei-M9
	for barebox@lists.infradead.org; Thu, 07 Jul 2011 05:24:20 +0000
Received: by wwi14 with SMTP id 14so3660688wwi.0
	for <barebox@lists.infradead.org>; Wed, 06 Jul 2011 22:24:09 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20110706094505.GA26643@game.jcrosoft.org>
References: <CAA4bVAHteAopd2PzFUELoG9dFMx_=Dr=GFd-5BpY4KaeyfaiXA@mail.gmail.com>
	<20110706094505.GA26643@game.jcrosoft.org>
Date: Thu, 7 Jul 2011 09:24:09 +0400
Message-ID: <CAA4bVAFo3W+xhBx5KVh5u9Azi=rhtbN0myjnFxT6btGnFe_Kqg@mail.gmail.com>
From: Antony Pavlov <antonynpavlov@gmail.com>
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
Subject: Re: ARM barebox & QEMU
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox <barebox@lists.infradead.org>

On 06/07/2011, Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com> wrote:
> On 13:40 Wed 06 Jul     , Antony Pavlov wrote:
>>  That is the easiest way to run ARM barebox under QEMU?
>>
>>  I have had tried default barebox config for versatilepb board, but I
>> haven't any success.
> I use it recently work fine
> take look in the commit the right qemu command

Thanks a lot!

It really works.

-- 
Best regards,
  Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
