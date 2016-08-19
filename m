Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ua0-x22b.google.com ([2607:f8b0:400c:c08::22b])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bak7Y-0001DY-HX
 for barebox@lists.infradead.org; Fri, 19 Aug 2016 13:46:06 +0000
Received: by mail-ua0-x22b.google.com with SMTP id 97so80325364uav.3
 for <barebox@lists.infradead.org>; Fri, 19 Aug 2016 06:45:44 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CAGm1_ktWEo6Ow0nre5d0tetTdu3aRLO+mRKboiFtfLi2wjRxDA@mail.gmail.com>
References: <CAGm1_ktWEo6Ow0nre5d0tetTdu3aRLO+mRKboiFtfLi2wjRxDA@mail.gmail.com>
From: Yegor Yefremov <yegorslists@googlemail.com>
Date: Fri, 19 Aug 2016 15:45:22 +0200
Message-ID: <CAGm1_kt102hu_ZYJLTYnnW2hUs9WS3T8e_Y8C=D1mKk3cf+M2A@mail.gmail.com>
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
Subject: Re: barebox remote control
To: barebox <barebox@lists.infradead.org>

Hi Sascha,

On Thu, Aug 18, 2016 at 9:48 AM, Yegor Yefremov
<yegorslists@googlemail.com> wrote:
> Are you planning to create a standalone PyPI package for bbremote? It
> would be very handy.

I'll try to create such a package on my GitHub account and then we
will see how to proceed. Porting to Python 3 is really funny :-) str
vs. bytearrays ....

> Have you already contacted pyserial maintainers, so that they could
> provide a configurable option for RFC2217 related timeout
> (https://github.com/pyserial/pyserial)?

I'll drop own pyserial and rely on upstream.

Yegor

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
