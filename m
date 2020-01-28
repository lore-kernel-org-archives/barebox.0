Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mailout07.rmx.de ([94.199.90.95])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwNLN-00065s-Om
 for barebox@lists.infradead.org; Tue, 28 Jan 2020 09:39:39 +0000
Received: from kdin01.retarus.com (unknown [172.19.17.48])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mailout07.rmx.de (Postfix) with ESMTPS id 486M5J5k4JzBvF0
 for <barebox@lists.infradead.org>; Tue, 28 Jan 2020 10:39:16 +0100 (CET)
Received: from ppmail.arri.de (unknown [217.111.95.7])
 (using TLSv1 with cipher AES128-SHA (128/128 bits))
 (No client certificate requested)
 by kdin01.retarus.com (Postfix) with ESMTPS id 486M5D02G2z2yt8
 for <barebox@lists.infradead.org>; Tue, 28 Jan 2020 10:39:12 +0100 (CET)
From: Christian Eggers <ceggers@arri.de>
Date: Tue, 28 Jan 2020 10:39:10 +0100
Message-ID: <6607783.M6Blm0jaCt@n95hx1g2>
In-Reply-To: <20200128093319.riamlkm6ihgoh7c2@pengutronix.de>
References: <20200127074606.17254-1-ceggers@arri.de>
 <20200128093319.riamlkm6ihgoh7c2@pengutronix.de>
MIME-Version: 1.0
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
Subject: Re: [SPAM:54%] Re: [PATCH] barebox_banner: switch to pr_notice
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org, ceggers@gmx.de

Am Dienstag, 28. Januar 2020, 10:33:19 CET schrieb Sascha Hauer:
> On Mon, Jan 27, 2020 at 08:46:06AM +0100, Christian Eggers wrote:
> > The banner should already be printed, if CONFIG_COMPILE_LOGLEVEL is set
> > to 5 (notice). If printing of the banner is not desired, CONFIG_BANNER
> > can be disabled.
> 
> With that argument you could put it in any loglevel you want to.
that's right. Do you like to insert the highest possible log level for this 
particular case?

> I am fine with the patch, but can we reword to something like "print
> important message on higher loglevel?
Yes, of course. Do you like a new patch or would you change this yourself?

regards
Christian




_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
