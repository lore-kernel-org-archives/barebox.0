Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x231.google.com ([2a00:1450:400c:c05::231])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X05Zz-00041z-SR
 for barebox@lists.infradead.org; Thu, 26 Jun 2014 09:02:52 +0000
Received: by mail-wi0-f177.google.com with SMTP id r20so593024wiv.16
 for <barebox@lists.infradead.org>; Thu, 26 Jun 2014 02:02:26 -0700 (PDT)
Date: Thu, 26 Jun 2014 11:02:18 +0200
From: Alexander Aring <alex.aring@gmail.com>
Message-ID: <20140626090114.GA9064@omega>
References: <1403763212-924-1-git-send-email-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1403763212-924-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: Re: [PATCH] kconfig: Fix compiler warning
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Sascha,

I get this warning about 1 month and it makes me crazy and I am unsing
"gcc (GCC) 4.9.0 20140604 (prerelease)".


Why I didn't sent any patches?
Because you say it here it's a compiler bug and the linux world doesn't
fix it this way. Look at [0].

"... since we will still want to catch unitialised use in the future,
should we were to changethe code." - which sounds useful.

They already add a comment to this. I think otherwise they get much
patches because this warning.

When I look into the current mainline code [1]. Then this is currently
not fixed in any way (comment or setting to NULL

- Alex

[0] http://www.spinics.net/lists/linux-kbuild/msg08898.html
[1] https://git.kernel.org/cgit/linux/kernel/git/next/linux-next.git/tree/scripts/kconfig/menu.c?id=refs/tags/next-20140626

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
