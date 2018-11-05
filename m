Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gJhhY-0008AE-3E
 for barebox@lists.infradead.org; Mon, 05 Nov 2018 16:26:09 +0000
Received: by mail-wr1-x444.google.com with SMTP id d10-v6so10205680wrs.5
 for <barebox@lists.infradead.org>; Mon, 05 Nov 2018 08:25:57 -0800 (PST)
MIME-Version: 1.0
References: <20181027013157.23135-1-andrew.smirnov@gmail.com>
 <20181027013157.23135-12-andrew.smirnov@gmail.com>
In-Reply-To: <20181027013157.23135-12-andrew.smirnov@gmail.com>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 5 Nov 2018 08:25:44 -0800
Message-ID: <CAHQ1cqFivNrvsgvLUbRn_Ufv+VukHwzpbW6GvK3ePt-3LNDzrQ@mail.gmail.com>
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
Subject: Re: [PATCH 11/11] ARM: rdu2: Replace board code with gpio-hog nodes
To: Barebox List <barebox@lists.infradead.org>

On Fri, Oct 26, 2018 at 6:32 PM Andrey Smirnov <andrew.smirnov@gmail.com> wrote:
>
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>

Sascha, it seems that this patch was not applied. This one, unlike
"VF610: zii-vf610-dev: Replace board code with gpio-hog nodes", will
_not_ interfere with kernel boot in any way, it just configures
UCS1002 into USB data pass-through(default bootstrapping is BCD 1.2
mode). It should be safe to have.

Thanks,
Andrey Smirnov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
