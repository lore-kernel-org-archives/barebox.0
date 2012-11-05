Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from moutng.kundenserver.de ([212.227.126.186])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TVMiH-00031o-4E
 for barebox@lists.infradead.org; Mon, 05 Nov 2012 13:27:37 +0000
Message-ID: <5097BEBE.5040706@cmotion.eu>
Date: Mon, 05 Nov 2012 14:27:26 +0100
From: Christian Kapeller <christian.kapeller@cmotion.eu>
MIME-Version: 1.0
References: <50979E1A.2000707@cmotion.eu>
 <20121105125258.GV1641@pengutronix.de>
In-Reply-To: <20121105125258.GV1641@pengutronix.de>
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
Subject: Re: TX53: Not Bootable from next tree
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org


>> I've just flashed barebox from the next tree onto a TX53-8030 module,
>> and have to report, that the board won't boot.
>>
>> Currently I've tried to run it with MMU off and setting the text-base
>> to 0x71000000, with no positive results.
>>
>> I'll do further investigation, but meanwhile does anyone have barebox
>> running on a TX53 board?
> 
> I just tested that it works for me as second stage. I can't test 1st
> stage atm as I currently have no physical access to the board.

Until now I've used bb in a 2nd stage configuration on top of the supplied
Redboot, and it worked without any problem.

Additionally I had CONFIG_MACH_DO_LOW_LEVEL_INIT disabled which skips
another pll setup step, that was already done by Redboot.

> Some guesses: Have you checked the correct the correct board revision in
> the config? It's the default, so I assume it's correct.

Yes, I did check for the correct board revision, and am using the
correct one: CONFIG_TX53_REV_XX30=y

> Are you using the barebox-flash-image link or barebox.bin? You have to
> use the former because it's a compressed image.

I've noticed, that the link target changes depending on build
configuration. So I've flashed the file pointed to by barebox-flash-image.

> You might want to disable compressed image support in
>  General settings ->
>   memory layout ->
>    [ ] pre-bootoloader image

Just tried that, but without changed result.

Currently I am trying to get my PEEDI JTAG probe working with the
board, but until then I stay in the dark.

Cheers,
Christian

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
