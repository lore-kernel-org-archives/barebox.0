Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from eddie.linux-mips.org ([148.251.95.138] helo=cvs.linux-mips.org)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gG2Zl-00069v-MZ
 for barebox@lists.infradead.org; Fri, 26 Oct 2018 13:56:57 +0000
Received: (from localhost user: 'ladis' uid#1021 fake: STDIN
 (ladis@eddie.linux-mips.org)) by eddie.linux-mips.org
 id S23992869AbeJZNymTu0IS (ORCPT
 <rfc822;barebox@lists.infradead.org>);
 Fri, 26 Oct 2018 15:54:42 +0200
Date: Fri, 26 Oct 2018 15:54:40 +0200
From: Ladislav Michl <ladis@linux-mips.org>
Message-ID: <20181026135440.GA6997@lenoch>
References: <20181025223718.GA24844@lenoch>
 <20181026101911.kevwudaie33atekk@pengutronix.de>
 <20181026111047.GA4216@lenoch>
 <20181026113156.ldj7twmzwd2deaxi@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20181026113156.ldj7twmzwd2deaxi@pengutronix.de>
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
Subject: Re: [PATCH] usbgadget: autostart: add DFU support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Fri, Oct 26, 2018 at 01:31:56PM +0200, Sascha Hauer wrote:
> On Fri, Oct 26, 2018 at 01:10:47PM +0200, Ladislav Michl wrote:
> > usbgadget takes -s switch to create serial gadget and -a to create acm.
> > However I fail to see how is creating former done.
> 
> To be honest I always use acm and never found out how the generic serial
> works. It may have bitrotted over time, but for me it never worked.

Fair enough then. I do not even see support for it in the initial commit,
which introduces '-s' switch. I suggest removing it altogether, perhaps
with an option to silently fall back to create ACM as well. ACM is so
common, that using anything else for this (console) purpose is probably
unwise anyway. Objections?

	ladis

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
