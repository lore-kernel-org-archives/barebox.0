Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 3.mo2.mail-out.ovh.net ([46.105.58.226]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RhDP5-0005hY-MZ
 for barebox@lists.infradead.org; Sun, 01 Jan 2012 04:52:16 +0000
Received: from mail190.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 5A2C4DC2CB5
 for <barebox@lists.infradead.org>; Sun,  1 Jan 2012 05:53:08 +0100 (CET)
Date: Sun, 1 Jan 2012 05:46:19 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120101044619.GD945@game.jcrosoft.org>
References: <20111124143239.GA32286@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20111124143239.GA32286@pengutronix.de>
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
Subject: Re: [PATCH] atmel_spi: add mesg->actual_length, so devices can use
 it for read/write
To: Michael Grzeschik <m.grzeschik@pengutronix.de>
Cc: barebox@lists.infradead.org

On 15:32 Thu 24 Nov     , Michael Grzeschik wrote:
> Without this i.e. the m25p driver is not working properly.
> 
> Its used to calculate the return value of the read/write function of
> some devices. If the value is missing, barebox would always
> miscalculate the next transfer sizes.
> 
> Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
> ---
on which platform did you test it?

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
