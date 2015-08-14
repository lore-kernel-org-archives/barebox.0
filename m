Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZQAbK-0006Z4-AE
 for barebox@lists.infradead.org; Fri, 14 Aug 2015 08:44:34 +0000
Message-ID: <1439541852.13210.34.camel@pengutronix.de>
From: Lucas Stach <l.stach@pengutronix.de>
Date: Fri, 14 Aug 2015 10:44:12 +0200
In-Reply-To: <CAE2nzut0jYEGFSXdH72ZYaquH+Ty_-o1N2joUuwdH+S26omrmw@mail.gmail.com>
References: <CAE2nzutff9nhFvrgbQbBQnZ_JXAKzwwUc5V-4hVZmL9ELLyGxw@mail.gmail.com>
 <1439480360.13210.22.camel@pengutronix.de>
 <CAE2nzut0jYEGFSXdH72ZYaquH+Ty_-o1N2joUuwdH+S26omrmw@mail.gmail.com>
Mime-Version: 1.0
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
Subject: Re: Passing devicetree to kernel
To: Raj Swaminathan <rajshyam@gmail.com>
Cc: barebox@lists.infradead.org

Am Donnerstag, den 13.08.2015, 09:58 -0700 schrieb Raj Swaminathan:
> Hi Lucas,
> 
> I am using Altera's cyclone 5 SoCFPGA.
> 
> Barebox version 2015.04.0
> Linux is rocketboards version 3.18.0
> 
Barebox is using the mainline kernel DTs, I don't know if the downstream
Rocketboards kernel is able to work with them. I suppose there are some
incompatible changes in downstream.
But I'm not really an expert for SocFPGA, maybe Steffen can provides
some clues here.

If you want to use the builtin DT your best bet is to use a mainline
kernel.

Regards,
Lucas
-- 
Pengutronix e.K.             | Lucas Stach                 |
Industrial Linux Solutions   | http://www.pengutronix.de/  |


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
