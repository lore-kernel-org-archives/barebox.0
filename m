Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.x-arc.de ([217.6.246.34] helo=root.phytec.de)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TMbZt-0000Q4-BV
 for barebox@lists.infradead.org; Fri, 12 Oct 2012 09:30:46 +0000
Message-ID: <5077E340.2010205@phytec.de>
Date: Fri, 12 Oct 2012 11:30:40 +0200
From: Teresa Gamez <t.gamez@phytec.de>
MIME-Version: 1.0
References: <1349940335-20960-1-git-send-email-t.gamez@phytec.de>
 <20121012075835.GG27665@pengutronix.de>
In-Reply-To: <20121012075835.GG27665@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 1/2] ARM OMAP: Create device file
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Am 12.10.2012 09:58, schrieb Sascha Hauer:

Hello Sascha,

> Nice work. As Jean Christophe already mentioned, it would be nice to
> skip the base address. That would mean to have a omap_add_mmc() function
> like above in an omap generic place and then:
>
> static inline struct device_d omap<x>_add_mmc<y>(void *pdata)
> {
> 	omap_add_mmc(OMAPx_MMCy_BASE, pdata);
> }
>
> in omap3/4 specific include files.
>
> Let me know if you want to work on this, otherwise I'm also happy to
> apply this one as it's already a step forward.
I will change it as you suggested.
I would base my rework on next so I can apply the changes also on the 
archosg9 board.

Teresa

>
> Sascha
>
>


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
