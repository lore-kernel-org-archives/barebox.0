Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from pfepa.post.tele.dk ([195.41.46.235])
	by bombadil.infradead.org with esmtp (Exim 4.72 #1 (Red Hat Linux))
	id 1On3X5-0000A9-4E
	for barebox@lists.infradead.org; Sun, 22 Aug 2010 05:55:51 +0000
Date: Sun, 22 Aug 2010 07:55:48 +0200
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20100822055548.GA27725@merkur.ravnborg.org>
References: <1281241073-19115-1-git-send-email-plagnioj@jcrosoft.com>
	<20100818151536.GF454@game.jcrosoft.org>
	<20100821102734.GN27749@pengutronix.de>
	<20100821113550.GA25293@merkur.ravnborg.org>
	<20100822050710.GN8693@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20100822050710.GN8693@game.jcrosoft.org>
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
Subject: Re: [PATCH] Kconfig: sync with linux kernel v2.6.35-4771-g1787985
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

> > 
> > So all-in-all I would recommend to use kconfig from
> > v2.6.36-rc1 (rather than some random commit) and
> > then upgrade again around v2.6.37-rc1 time.
> ok I upgrade the patch
> 
> and it will be good to update it regulary I will follow it
> is there a ML for Kconfig?

kconfig is mostly discussed on linux-kbuild@vger.kernel.org
but sometimes also/only on lkml.

On lkml this is usually stuff that is a bit remote
to kconfig. It was on lkml the defconfigs was discussed
which triggered "savedefconfig".

	Sam

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
