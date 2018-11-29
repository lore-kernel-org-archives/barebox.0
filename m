Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gSK5v-0000EK-Rs
 for barebox@lists.infradead.org; Thu, 29 Nov 2018 11:03:02 +0000
Date: Thu, 29 Nov 2018 12:02:44 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20181129110244.44qx2qg6so7kypot@pengutronix.de>
References: <1542295458.2675.12.camel@phytec.de>
 <20181116073206.3773odofpb2xxnbl@pengutronix.de>
 <1543479249.18108.4.camel@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1543479249.18108.4.camel@phytec.de>
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
Subject: Re: Transferring files over tftp
To: Teresa Remmet <t.remmet@phytec.de>
Cc: barebox@lists.infradead.org

Hi Teresa,

On Thu, Nov 29, 2018 at 09:14:09AM +0100, Teresa Remmet wrote:
> Hello Sascha,
> 
> Am Freitag, den 16.11.2018, 08:32 +0100 schrieb Sascha Hauer:
> 
> ...
> 
> > 
> > --------------------------------------8<-----------------------------
> > -----
> > 
> > From bf3de3391c958c9c44fcfa54b2c1a6a29e68a5a4 Mon Sep 17 00:00:00
> > 2001
> > From: Sascha Hauer <s.hauer@pengutronix.de>
> > Date: Fri, 16 Nov 2018 08:24:06 +0100
> > Subject: [PATCH] fs: tftp: Make filesize a 64bit type
> > 
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> 
> I miss this patch on next. As it fixes my problem. Is there any reason
> why it is not applied?

No other than me forgetting about it. Applied now ;)

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
