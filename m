Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-qk1-x743.google.com ([2607:f8b0:4864:20::743])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1halFY-0007tN-Fc
 for barebox@lists.infradead.org; Tue, 11 Jun 2019 18:12:01 +0000
Received: by mail-qk1-x743.google.com with SMTP id r6so8272203qkc.0
 for <barebox@lists.infradead.org>; Tue, 11 Jun 2019 11:11:59 -0700 (PDT)
Date: Tue, 11 Jun 2019 14:11:57 -0400
Message-ID: <20190611141157.GB17514@t480s.localdomain>
From: Vivien Didelot <vivien.didelot@gmail.com>
In-Reply-To: <35c8b85377b409b96f89d3307b211db0a7b2ab95.camel@pengutronix.de>
References: <20190610155835.18304-1-vivien.didelot@gmail.com>
 <429f1bb0f0ae5c86d2d11be2e105eb5de6f59d1d.camel@pengutronix.de>
 <20190611104603.GC6199@t480s.localdomain>
 <35c8b85377b409b96f89d3307b211db0a7b2ab95.camel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
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
Subject: Re: [PATCH] ARM: zii-rdu2: disable eth0 and eth1
To: Lucas Stach <l.stach@pengutronix.de>
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>, barebox@lists.infradead.org

Hi Lucas,

On Tue, 11 Jun 2019 20:02:48 +0200, Lucas Stach <l.stach@pengutronix.de> wrote:
> > > As USB network boot requires additional hardware, I would say it's fair
> > > to require to change the environment on the boards used for DSA
> > > development.
> > 
> > I'd certainly agree with that if booting from a DSA slave is now possible.
> 
> For DSA development you will still need a USB network dongle, but for
> all development that hasn't to do with the ethernet switch, netbooting
> from Barebox works fine with the default configuration.

For that reason I agree with you to keep this patch out-of-tree.


Thank you,
Vivien

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
