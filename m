Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 1.mo2.mail-out.ovh.net ([46.105.63.121]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Vbueu-0003p2-CL
 for barebox@lists.infradead.org; Thu, 31 Oct 2013 15:59:46 +0000
Received: from mail607.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id AC4DAFF923D
 for <barebox@lists.infradead.org>; Thu, 31 Oct 2013 16:59:18 +0100 (CET)
Date: Thu, 31 Oct 2013 17:01:15 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20131031160115.GH26639@ns203013.ovh.net>
References: <1383128571-8250-1-git-send-email-renaud.barbier@ge.com>
 <1383128571-8250-5-git-send-email-renaud.barbier@ge.com>
 <20131030113452.GG26639@ns203013.ovh.net> <52726C0B.4070109@ge.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <52726C0B.4070109@ge.com>
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
Subject: Re: [PATCH 4/5] ppc: DA923RC: add board support
To: Renaud Barbier <renaud.barbier@ge.com>
Cc: barebox@lists.infradead.org

On 14:41 Thu 31 Oct     , Renaud Barbier wrote:
> On 30/10/2013 11:34, Jean-Christophe PLAGNIOL-VILLARD wrote:
> >> +		barebox_set_model("Unknown");
> >> > +
> >> > +	/* Enable the GPIO Out pins */
> >> > +	out_be32(gur + MPC85xx_GPIOCR_OFFSET, (gpiocr | MPC85xx_GPIOCR_GPOUT));
> > this should be GPIO API
> >> > +
> >> > +	/* Enable NOR low voltage programming (gpio 2) an
> 
> Note that here the code enables a CPU function that is, the whole block
> of pins is enabled to be used as GPIO out pin. This does not specify the
> pins direction but the pins function.
> Of course, this can be wrap in a function specific to the CPU.
> 

so this should use pinctrl API

Best Regards,
J.
> 

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
