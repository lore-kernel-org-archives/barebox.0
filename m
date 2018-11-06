Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gJwg0-0002i8-Gn
 for barebox@lists.infradead.org; Tue, 06 Nov 2018 08:25:34 +0000
Date: Tue, 6 Nov 2018 09:25:16 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20181106082516.qik52y7g76dkdepp@pengutronix.de>
References: <20181027013157.23135-1-andrew.smirnov@gmail.com>
 <20181027013157.23135-12-andrew.smirnov@gmail.com>
 <CAHQ1cqFivNrvsgvLUbRn_Ufv+VukHwzpbW6GvK3ePt-3LNDzrQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHQ1cqFivNrvsgvLUbRn_Ufv+VukHwzpbW6GvK3ePt-3LNDzrQ@mail.gmail.com>
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
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: Barebox List <barebox@lists.infradead.org>

On Mon, Nov 05, 2018 at 08:25:44AM -0800, Andrey Smirnov wrote:
> On Fri, Oct 26, 2018 at 6:32 PM Andrey Smirnov <andrew.smirnov@gmail.com> wrote:
> >
> > Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> 
> Sascha, it seems that this patch was not applied. This one, unlike
> "VF610: zii-vf610-dev: Replace board code with gpio-hog nodes", will
> _not_ interfere with kernel boot in any way, it just configures
> UCS1002 into USB data pass-through(default bootstrapping is BCD 1.2
> mode). It should be safe to have.

Ok, applied now.

Sascha


-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
