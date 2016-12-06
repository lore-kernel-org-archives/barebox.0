Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-qk0-x244.google.com ([2607:f8b0:400d:c09::244])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1cEH2t-0005yg-8f
 for barebox@lists.infradead.org; Tue, 06 Dec 2016 14:48:40 +0000
Received: by mail-qk0-x244.google.com with SMTP id y205so44043936qkb.1
 for <barebox@lists.infradead.org>; Tue, 06 Dec 2016 06:48:18 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <20161205151431.GC14158@lws-christ>
References: <1480949684-18520-1-git-send-email-andrew.smirnov@gmail.com>
 <1480949684-18520-3-git-send-email-andrew.smirnov@gmail.com>
 <20161205151431.GC14158@lws-christ>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 6 Dec 2016 06:48:16 -0800
Message-ID: <CAHQ1cqErON12d4KTdYg614U5i9j8X=_-kD8+g9JtfFgak9MXBA@mail.gmail.com>
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
Subject: Re: [PATCH 02/16] i.MX: ocotp: Add provisions for storing multiple
 MAC addresses
To: Stefan Lengfeld <s.lengfeld@phytec.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Hi Stefan,

On Mon, Dec 5, 2016 at 7:14 AM, Stefan Lengfeld <s.lengfeld@phytec.de> wrote:
> Hi Andrey,
>
> a similiar patch was posted some days ago to support two MAC addresses for the
> i.MX6 UltraLite. See
>
>     http://lists.infradead.org/pipermail/barebox/2016-November/028628.html
>

I did see that patch go through, however since the title of it is
"arm: imx6: ocotp: Added support for the i.MX6UL" I didn't look into
it any further.


> Your approach uses an extra device attribute  'mac_idx' to select the meaning
> of the device attribute 'mac_addr': Whether it points to the MAC0 or MAC1.
>
> I find it less error prone and confusing to use two seperate device attributes
> 'mac_addr' and 'mac_addr1' for MAC0 and MAC1. So you don't have to check the
> value of 'mac_idx before reading or writing the MAC addresses.

Can't say that I necessarily agree with you assessment. There's no
need to check 'mac_idx' if it is written every time as a part of MAC
address assignment operation. The reason I chose the approach that I
did was mainly because it allowed to both have backwards compatibility
with the old naming scheme and avoid having variable naming
inconsistency (as you see in your example where one variable has a
numerical suffix and the other doesn't) which I was concerned would be
make scripting it more clunky than necessary.

Anyway, I don't think I am impartial enough to make a good judge of
merits of both approaches, so I'll let Sascha decide which way he
wants to go.

Thanks,
Andrey Smirnov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
