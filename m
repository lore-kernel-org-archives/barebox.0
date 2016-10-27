Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x22f.google.com ([2a00:1450:400c:c09::22f])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bzfD2-0004yy-6Z
 for barebox@lists.infradead.org; Thu, 27 Oct 2016 07:34:45 +0000
Received: by mail-wm0-x22f.google.com with SMTP id n67so15192783wme.1
 for <barebox@lists.infradead.org>; Thu, 27 Oct 2016 00:34:22 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20161027073157.u6jmv6ux3xs4x46i@pengutronix.de>
References: <CABDcavZ08eW8scP2zi_5hUp7J8ex-xj17-n7SRx_5YNC3q-8eQ@mail.gmail.com>
 <20161027073157.u6jmv6ux3xs4x46i@pengutronix.de>
From: Guillermo Rodriguez Garcia <guille.rodriguez@gmail.com>
Date: Thu, 27 Oct 2016 09:34:20 +0200
Message-ID: <CABDcava4zzJBLtku87=bmp5PdYy0TMejDgTpsoP8Z2zB5vQV-Q@mail.gmail.com>
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
Subject: Re: Read kernel from static UBI volume
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

2016-10-27 9:31 GMT+02:00 Sascha Hauer <s.hauer@pengutronix.de>:
> On Thu, Oct 27, 2016 at 09:10:02AM +0200, Guillermo Rodriguez Garcia wrote:
>> Hello all,
>>
>> I know Barebox can load files from UBIFS. However, is there support
>> from booting a kernel directly from a static UBI volume?.
>
> bootm /dev/nand0.ubi.whatever should do.

That easy?

This is one of the reasons why I like barebox so much better than u-boot..

I assume this will just read the whole volume (as opposed to checking
the zImage size and so on). Correct?

Also will this do the UBI static volume CRC check?

Guillermo Rodriguez Garcia
guille.rodriguez@gmail.com

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
