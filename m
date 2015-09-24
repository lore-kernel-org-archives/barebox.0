Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from conssluserg003.nifty.com ([202.248.44.41]
 helo=conssluserg003-v.nifty.com)
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Zf300-0008AX-5Z
 for barebox@lists.infradead.org; Thu, 24 Sep 2015 09:39:33 +0000
Received: from mail-yk0-f174.google.com (mail-yk0-f174.google.com
 [209.85.160.174]) (authenticated)
 by conssluserg003-v.nifty.com with ESMTP id t8O9d2uD021943
 for <barebox@lists.infradead.org>; Thu, 24 Sep 2015 18:39:02 +0900
Received: by ykdt18 with SMTP id t18so70798807ykd.3
 for <barebox@lists.infradead.org>; Thu, 24 Sep 2015 02:39:01 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20150907052449.GV18700@pengutronix.de>
References: <1441366031-856-1-git-send-email-yamada.masahiro@socionext.com>
 <20150907052449.GV18700@pengutronix.de>
Date: Thu, 24 Sep 2015 18:39:01 +0900
Message-ID: <CAK7LNASuti=BS38cL2QDbS9bdvjYh4=Ya3m_adj3STyuckeM9A@mail.gmail.com>
From: Masahiro Yamada <yamada.masahiro@socionext.com>
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
Subject: Re: [PATCH] console: use int rather than uint in printf() and friends
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Sascha,

2015-09-07 14:24 GMT+09:00 Sascha Hauer <s.hauer@pengutronix.de>:
> On Fri, Sep 04, 2015 at 08:27:11PM +0900, Masahiro Yamada wrote:
>> These functions and vsprintf() return int type.
>> No reason to use uint type.
>>
>> Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
>> ---
>
> Applied, thanks
>
> Sascha
>

Looks like it was applied to  for-next/mci and for-next/misc.

Perhaps, one of them is enough?



-- 
Best Regards
Masahiro Yamada

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
