Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mib.mailinblack.com ([137.74.84.110])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1knIRH-00089g-LM
 for barebox@lists.infradead.org; Thu, 10 Dec 2020 09:40:45 +0000
Received: from localhost (localhost [127.0.0.1])
 by mib.mailinblack.com (Postfix) with ESMTP id C90EE1A1CE0
 for <barebox@lists.infradead.org>; Thu, 10 Dec 2020 09:40:41 +0000 (UTC)
Date: Thu, 10 Dec 2020 10:40:34 +0100
From: Jules Maselbas <jmaselbas@kalray.eu>
Message-ID: <20201210094034.ddqdzn2cb2oktip2@tellis.lin.mbt.kalray.eu>
References: <20201209131454.5248-1-jmaselbas@kalray.eu>
 <20201210090451.GR3977@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201210090451.GR3977@pengutronix.de>
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
Subject: Re: [PATCH] phy: usb-nop-xceiv: Make the clock always optional
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Sascha,

On Thu, Dec 10, 2020 at 10:04:51AM +0100, Sascha Hauer wrote:
> Hi Jules,
> 
> clk_enable(NULL) returns 0 on purpose, because NULL is handled as a
> dummy clock. This change shouldn't be needed.
Indeed, I don't know why I thought this was not the case.
You can drop this patch.

Thanks


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
