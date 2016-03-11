Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from forward10o.cmail.yandex.net ([37.9.109.60])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aeM8R-0000rU-Ig
 for barebox@lists.infradead.org; Fri, 11 Mar 2016 12:25:40 +0000
From: Aleksey Kuleshov <rndfax@yandex.ru>
In-Reply-To: <20160310092619.GK30994@pengutronix.de>
References: <1457018230-4554-1-git-send-email-rndfax@yandex.ru>
 <1457018230-4554-2-git-send-email-rndfax@yandex.ru>
 <20160304071921.GD21869@pengutronix.de>
 <4230541457086688@web17h.yandex.ru>
 <20160307073016.GG21869@pengutronix.de>
 <1569051457342206@web17j.yandex.ru> <20160310092619.GK30994@pengutronix.de>
MIME-Version: 1.0
Message-Id: <2011061457699101@web8o.yandex.ru>
Date: Fri, 11 Mar 2016 15:25:01 +0300
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
Subject: Re: [PATCH 2/2] input: make the Input Core be the last in the poller
 queue
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

> Here it is. It now works, presumable because of your recent change to
> the interrupt transactions (ehci-hcd: preserve DTC in QH for interrupt
> transactions).

I don't know what you mean, but this patch almost worked. I slightly changed it
and I get working patch: I tested 4 keyboards, only one of them (some Genius)
behave strangely, but this is not related to my recent patch you mentioned.

For Genius keyboard I got these messages:
    Bus 001 Device 003: ID 1c4f:0026 USB Keyboard
    usb-keyboard usb1-0-2: USB keyboard found
    usb-keyboard usb1-0-2: Timeout poll on interrupt endpoint
    usb-keyboard usb1-0-2: got wrong buffer back (00000000 instead of 82130fd8)

And tons of such messages:
    usb-keyboard usb1-0-2: usb_submit_int_msg() failed. Keyboard disconnect?
when there was screen scrolling (which is very slow in my case).

Can you elaborate a little what does not work in your case?

PS. Right now, I'm trying to investigate strange behaviour of Genius keyboard.
I think next week I'll send you patch on your patch.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
