Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-yx0-f177.google.com ([209.85.213.177])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1QKQae-0008S6-OR
	for barebox@lists.infradead.org; Thu, 12 May 2011 07:45:49 +0000
Received: by yxh35 with SMTP id 35so512661yxh.36
	for <barebox@lists.infradead.org>; Thu, 12 May 2011 00:45:43 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20110512060349.GO30963@pengutronix.de>
References: <BANLkTimK4n3A4HN9yLWrmgXcwhFgJrCCbw@mail.gmail.com>
	<20110512060349.GO30963@pengutronix.de>
Date: Thu, 12 May 2011 09:45:43 +0200
Message-ID: <BANLkTik7uQDgPAvPG71dUmrH_0m-7hmL-w@mail.gmail.com>
From: Yegor Yefremov <yegorslists@googlemail.com>
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
Subject: Re: AM3517EVM port
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Sascha,

>> has anyone ported AM3517EVM board or other omap3517 based board to
>> barebox? I couldn't find any patches.
>
> No, I am not aware of any patches for this. How different is the
> omap3517 from the one on the beagle board?

I hope it is not so different. But in the first line OMAP3517 is
industrial grade SoC with built-in Ethernet and CAN support. I took
beagle port as a template and try to port the stuff from TI's u-boot.

>> The second question is about OMAP boot procedure. Can I just rename
>> barebox to u-boot.bin and let it be loaded by x-loader?
>
> More specifically barebox.bin to u-boot.bin, yes. This at least works on
> the beagle and panda boards. barebox can also act as an x-loader aswell
> (in which case it loads barebox.bin as second stage). See the *xload*
> defconfigs.

O.K. I see. Thank you for your help.

Regards,
Yegor

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
