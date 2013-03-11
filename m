Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from eso.teric.us ([69.164.192.171])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UF7BK-0007Su-MT
 for barebox@lists.infradead.org; Mon, 11 Mar 2013 18:10:43 +0000
Date: Mon, 11 Mar 2013 13:17:15 -0500
From: Josh Cartwright <joshc@eso.teric.us>
Message-ID: <20130311181715.GM16050@kryptos>
References: <1362993306-19262-1-git-send-email-s.trumtrar@pengutronix.de>
 <1362993306-19262-10-git-send-email-s.trumtrar@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1362993306-19262-10-git-send-email-s.trumtrar@pengutronix.de>
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
Subject: Re: [PATCH 9/9] ARM: zynq: remove clocksource
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Mar 11, 2013 at 10:15:06AM +0100, Steffen Trumtrar wrote:
> With clkdev in place the generic arm_smp_twd can be used.
> 

Oh!  Hmm.  So, you add the clocksource driver in a previous patch, and
remove it here.  I'd recommend rebasing this patchset to remove this
intermediate state.

   Josh

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
