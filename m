Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 2.mo1.mail-out.ovh.net ([178.32.119.250]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VLZsj-00078K-NO
 for barebox@lists.infradead.org; Mon, 16 Sep 2013 14:34:30 +0000
Received: from mail615.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id 3480B10048DD
 for <barebox@lists.infradead.org>; Mon, 16 Sep 2013 16:34:08 +0200 (CEST)
Date: Mon, 16 Sep 2013 16:35:16 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20130916143516.GE21829@ns203013.ovh.net>
References: <20130914120725.GB21829@ns203013.ovh.net>
 <20130916085634.GX30088@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130916085634.GX30088@pengutronix.de>
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
Subject: Re: [RFC] [PATCH 0/2] fix barebox size when using a relocated pbl
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 10:56 Mon 16 Sep     , Sascha Hauer wrote:
> On Sat, Sep 14, 2013 at 02:07:25PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > Hi,
> > 
> > 	today if we use a relocatable pbl we have 0 at 0x2c on ARM
> > 	as the linker script can not calculte the size correctly
> > 
> > 	so fix it post zbarebox.bin generation
> > 
> > Jean-Christophe PLAGNIOL-VILLARD (2):
> >       add fix size tools
> >       ARM: PBL: fix binary size
> 
> Looks good. Should I apply?

yes please go a head

I'm working on at91bootstrap to detect if it's barebox and load only the right
size

so this help

Best Regards,
J.
> 
> Sascha
> 
> -- 
> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
