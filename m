Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lpp01m010-f49.google.com ([209.85.215.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RsDBh-0000up-Lb
 for barebox@lists.infradead.org; Tue, 31 Jan 2012 12:51:54 +0000
Received: by laam7 with SMTP id m7so55731laa.36
 for <barebox@lists.infradead.org>; Tue, 31 Jan 2012 04:51:51 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <20120131114045.GO1990@pengutronix.de>
References: <CALQ+5acXuFBGkeRgv+xR8FE2_ykWxbRggEi-AVaJhZm-ZzLk7g@mail.gmail.com>
 <20120131114045.GO1990@pengutronix.de>
From: Igor Trevisan <igt1972@gmail.com>
Date: Tue, 31 Jan 2012 13:51:31 +0100
Message-ID: <CALQ+5afWB0hQBXzkH2Vgo7FBAPP=z2jqDqxeTB07cRTkvPOfjQ@mail.gmail.com>
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

>
> The command is correct, the usage is wrong.
> See http://wiki.barebox.org/doku.php?id=commands:md and let me know
> if that helps

Yes, it helps.
It helped me, first of all to RTFM ;-) and use correctly Barebox commands...
And second it helped to find a new problem:

barebox:/ md -b -s /dev/imx_iim_bank0
do_fuse_sense: sense error (0x04)
read: I/O error

What do I do wrong?
Igor.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
