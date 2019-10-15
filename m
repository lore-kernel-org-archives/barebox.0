Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtpbgeu1.qq.com ([52.59.177.22])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKPeK-0006ym-4u
 for barebox@lists.infradead.org; Tue, 15 Oct 2019 16:26:20 +0000
Date: Wed, 16 Oct 2019 00:25:35 +0800
From: duhuanpeng <iu87m888m@qq.com>
Message-ID: <20191015162534.GA17784@router.tkernel.org>+FD39D4F4112BE398
References: <1570110732-20309-1-git-send-email-iu87m888m@qq.com>
 <20191014120505.sjvtz3vlymm2ya6q@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191014120505.sjvtz3vlymm2ya6q@pengutronix.de>
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
Subject: Re: [PATCH] fix compile error when set CONFIG_CONSOLE_SIMPLE=y
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org, DU HUANPENG <u74147@gmail.com>

Hi, my patch didn't work with sanbox. maybe I missed understand
the macro
	ARCH_HAS_CTRLC
I will fix it and send a new patch soon.

sorry.
du huanpeng




_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
