Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 5.mo2.mail-out.ovh.net ([87.98.181.248]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1U6InA-00014K-Dy
 for barebox@lists.infradead.org; Fri, 15 Feb 2013 10:45:21 +0000
Received: from mail195.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id A1EF9DC1BB5
 for <barebox@lists.infradead.org>; Fri, 15 Feb 2013 11:55:44 +0100 (CET)
Date: Fri, 15 Feb 2013 11:44:08 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20130215104408.GY19322@game.jcrosoft.org>
References: <1360924870-13979-1-git-send-email-fabio.porcedda@gmail.com>
 <1360924870-13979-3-git-send-email-fabio.porcedda@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1360924870-13979-3-git-send-email-fabio.porcedda@gmail.com>
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
Subject: Re: [PATCH 2/2] at91sam9260/9g20ek: remove #ifdef for
 ek_usb_add_device_mci()
To: Fabio Porcedda <fabio.porcedda@gmail.com>
Cc: barebox@lists.infradead.org

On 11:41 Fri 15 Feb     , Fabio Porcedda wrote:
> Remove #ifdef for ek_usb_add_device_mci() because there is already
> the #ifdef inside at91_add_device_mci(), this way the compiler can check
> always the code without any penality.
 it's not the struct will be keep

 keep the ifdef

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
