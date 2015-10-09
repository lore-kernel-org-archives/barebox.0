Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp12.smtpout.orange.fr ([80.12.242.134]
 helo=smtp.smtpout.orange.fr)
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZkdBz-0003KW-RE
 for barebox@lists.infradead.org; Fri, 09 Oct 2015 19:19:00 +0000
From: Robert Jarzmik <robert.jarzmik@free.fr>
References: <1444341979-19157-1-git-send-email-sebastian.hesselbarth@gmail.com>
 <1444341979-19157-2-git-send-email-sebastian.hesselbarth@gmail.com>
 <87egh3amcu.fsf@belgarion.home>
Date: Fri, 09 Oct 2015 21:13:17 +0200
In-Reply-To: <87egh3amcu.fsf@belgarion.home> (Robert Jarzmik's message of
 "Fri, 09 Oct 2015 21:11:13 +0200")
Message-ID: <87a8rram9e.fsf@belgarion.home>
MIME-Version: 1.0
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
Subject: Re: [PATCH 01/17] arm: pxa: Prepare for NAND clkdev lookup on PXA3xx
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org, Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>

Robert Jarzmik <robert.jarzmik@free.fr> writes:

> Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com> writes:
>
>> To allow PXA3xx nand driver to be reused on Marvell Armada 370/XP,
>> prepare to provide a common clock for the NAND driver on PXA3xx.
>>
>> Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
> Hi Sebastian,
>
> I have several questions on the serie :
>  - on which tree did you base that serie ?
>    This patch for example doesn't apply on top of the trees I have
>
>  - do you know that PXA has already support for the common clock framework
>    (see drivers/clk/pxa/*) ?
>
> As a consequence, CLKDEV_LOOKUP, COMMON_CLK, etc ... are already selected.
>
> Moreover, I won't take patches to speed-pxa3xx.c unless there is a really strong
> reason; at least it should be stronger than a simple clk_get(dev, NULL) solution.
>
> Cheers.
Oh sorry Sebastian, my mailer betrayed me, I thought it was the kernel mailing
list, didn't notice the barebox list ...

Scratch all I said in the previous mail ...

-- 
Robert

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
