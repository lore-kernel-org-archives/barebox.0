Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gAB0L-0006jv-Ua
 for barebox@lists.infradead.org; Wed, 10 Oct 2018 09:42:11 +0000
Message-ID: <1539164516.3515.37.camel@pengutronix.de>
From: Lucas Stach <l.stach@pengutronix.de>
Date: Wed, 10 Oct 2018 11:41:56 +0200
In-Reply-To: <20181009173805.26181-8-andrew.smirnov@gmail.com>
References: <20181009173805.26181-1-andrew.smirnov@gmail.com>
 <20181009173805.26181-8-andrew.smirnov@gmail.com>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v2 07/17] drivers: Introduce dev_set_name()
To: Andrey Smirnov <andrew.smirnov@gmail.com>, barebox@lists.infradead.org

Hi Andrey,

Am Dienstag, den 09.10.2018, 10:37 -0700 schrieb Andrey Smirnov:
> In order to allow device names that are longer than MAX_DRIVER_NAME,
> port Linux kernel function of the same name, and convert all of the
> code to use it.

This patch doesn't apply cleanly on barebox master or next due to the
thing being patched in rave-sp.c not being present in upstream. You
probably generated this patchset with some local changes applied.

The fix is easy by dropping the rave-sp.c chunk of the patch. Maybe
Sascha can just fix this up while applying.

Regards,
Lucas

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
