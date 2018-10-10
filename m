Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gAGUi-00015f-En
 for barebox@lists.infradead.org; Wed, 10 Oct 2018 15:33:54 +0000
Received: by mail-wm1-x341.google.com with SMTP id r63-v6so5974301wma.4
 for <barebox@lists.infradead.org>; Wed, 10 Oct 2018 08:33:41 -0700 (PDT)
MIME-Version: 1.0
References: <20181009173805.26181-1-andrew.smirnov@gmail.com>
 <20181009173805.26181-8-andrew.smirnov@gmail.com>
 <1539164516.3515.37.camel@pengutronix.de>
In-Reply-To: <1539164516.3515.37.camel@pengutronix.de>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed, 10 Oct 2018 08:33:28 -0700
Message-ID: <CAHQ1cqHxy-Zn3iBzgy-Q6Ca2akr3Ccb5w_if2ZOEZRKFPP30pQ@mail.gmail.com>
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
Subject: Re: [PATCH v2 07/17] drivers: Introduce dev_set_name()
To: Lucas Stach <l.stach@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Wed, Oct 10, 2018 at 2:41 AM Lucas Stach <l.stach@pengutronix.de> wrote:
>
> Hi Andrey,
>
> Am Dienstag, den 09.10.2018, 10:37 -0700 schrieb Andrey Smirnov:
> > In order to allow device names that are longer than MAX_DRIVER_NAME,
> > port Linux kernel function of the same name, and convert all of the
> > code to use it.
>
> This patch doesn't apply cleanly on barebox master or next due to the
> thing being patched in rave-sp.c not being present in upstream. You
> probably generated this patchset with some local changes applied.
>
> The fix is easy by dropping the rave-sp.c chunk of the patch. Maybe
> Sascha can just fix this up while applying.
>

Oh, didn't realized that, my bad. I'll have to do a v3 to fix the
dev_id() issue anyway, so I'll make sure to fix this other problem as
well.

Thanks,
Andrey Smirnov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
