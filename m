Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp26.mail.ru ([94.100.176.179])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TNptb-0005XC-77
 for barebox@lists.infradead.org; Mon, 15 Oct 2012 19:00:12 +0000
Date: Mon, 15 Oct 2012 23:00:08 +0400
From: Alexander Shiyan <shc_work@mail.ru>
Message-Id: <20121015230008.8153c2db47fa837122615241@mail.ru>
In-Reply-To: <20121015175852.GC5803@game.jcrosoft.org>
References: <1350318405-20081-1-git-send-email-shc_work@mail.ru>
 <1350318405-20081-2-git-send-email-shc_work@mail.ru>
 <20121015175852.GC5803@game.jcrosoft.org>
Mime-Version: 1.0
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
Subject: Re: [PATCH v2 2/3] ARM: clps711x: Add serial driver
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Mon, 15 Oct 2012 19:58:52 +0200
Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com> wrote:

> > +static int clps711x_tstc(struct console_device *cdev)
> > +{
> > +	return !(readl(SYSFLG(cdev->dev->id)) & SYSFLG_URXFE);
> factorise those pull status as
> 
> status int xxx(data, mask) {}
Not clean understand this comment. You mean about one more define
for check status?

-- 
Alexander Shiyan <shc_work@mail.ru>

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
