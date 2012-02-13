Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lpp01m020-f177.google.com ([209.85.217.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RwryE-0003kd-Ep
 for barebox@lists.infradead.org; Mon, 13 Feb 2012 09:13:15 +0000
Received: by lbon10 with SMTP id n10so2849287lbo.36
 for <barebox@lists.infradead.org>; Mon, 13 Feb 2012 01:13:11 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <20120210225915.GM3852@pengutronix.de>
References: <CALQ+5acXuFBGkeRgv+xR8FE2_ykWxbRggEi-AVaJhZm-ZzLk7g@mail.gmail.com>
 <20120131114045.GO1990@pengutronix.de>
 <CALQ+5afWB0hQBXzkH2Vgo7FBAPP=z2jqDqxeTB07cRTkvPOfjQ@mail.gmail.com>
 <20120131131256.GP1990@pengutronix.de>
 <CALQ+5afyqAu7NP5yks7pJcJzbpm3u2G7USn1MSTnbby1-3r4mw@mail.gmail.com>
 <CALQ+5afG3jjozSRaeLrt5MfmeBBgjsRh6UVHNd5RpnZ0iP7Nvg@mail.gmail.com>
 <20120210225915.GM3852@pengutronix.de>
From: Igor Trevisan <igt1972@gmail.com>
Date: Mon, 13 Feb 2012 10:12:51 +0100
Message-ID: <CALQ+5ado8GHyG+ZA82PPfTAMXBPi_sz+La3M4zrA+3jMZdVf4w@mail.gmail.com>
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
Subject: Re: IIM on iMX27 "how-to" needed
To: barebox@lists.infradead.org

Hi,

>> > Which is the right way to write the fuse bits?
>
> Try
>
> mw -d /dev/imx_iim_bank0 -b 0x2 0x80
>
> to change the the '0x80' at offset 2 to 0x80.

it (obviously...) works!

> I suggest that you explore the usage of 'mw' with something less
> sensitive than the fuses, they have the potential to brick your board...

Oh yes, I did experiments on ram0 before killing my uC! ;-)
By the way... Thanks a lot for your support Sascha.
I.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
