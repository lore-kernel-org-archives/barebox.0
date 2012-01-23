Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 15.mo3.mail-out.ovh.net ([87.98.150.177]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RpHL4-00059i-Fn
 for barebox@lists.infradead.org; Mon, 23 Jan 2012 10:41:27 +0000
Received: from mail617.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 33051FFBB87
 for <barebox@lists.infradead.org>; Mon, 23 Jan 2012 11:43:07 +0100 (CET)
Date: Mon, 23 Jan 2012 11:38:59 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120123103859.GQ25622@game.jcrosoft.org>
References: <4F18328E.9080404@pengutronix.de>
 <1327090644-17469-1-git-send-email-robert.jarzmik@free.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1327090644-17469-1-git-send-email-robert.jarzmik@free.fr>
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
Subject: Re: [PATCH V3] usb/gadget: fix poller NPE in early polling
To: Robert Jarzmik <robert.jarzmik@free.fr>
Cc: barebox@lists.infradead.org

On 21:17 Fri 20 Jan     , Robert Jarzmik wrote:
> The timings of the poller calling have changed, digging out
> a latent bug in pxa27x udc controller.
> The polling routine is called before the probe function is
> called, and the driver internal are not initialized at that
> time. This triggers a NULL pointer exception.
> 
> Fix it by moving poller registration after driver probe.
> 
> Signed-off-by: Robert Jarzmik <robert.jarzmik@free.fr>
> 
> ---
looks good

Acked-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
