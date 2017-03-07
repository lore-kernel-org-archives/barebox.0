Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk3.altibox.net ([109.247.116.14])
 by casper.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1clMCI-0007jJ-SJ
 for barebox@lists.infradead.org; Tue, 07 Mar 2017 20:59:10 +0000
Date: Tue, 7 Mar 2017 21:58:40 +0100
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20170307205840.GA5513@ravnborg.org>
References: <20170306225356.31475-1-andrew.smirnov@gmail.com>
 <20170307163416.GA26868@ravnborg.org>
 <CF3DB1E1-345D-45EB-BF5F-1CAEA118B0DA@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CF3DB1E1-345D-45EB-BF5F-1CAEA118B0DA@jcrosoft.com>
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
Subject: Re: [PATCH 00/45] AT91, at91sam9x5ek updates
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>, barebox@lists.infradead.org

> > 
> > When booting from an SD-Card/NOR-Flash/USB would I then need
> > to use at91bootstrap, or can I use only barebox?
> > 
> > If I move forward with this and I can find an 9263
> > evaluation kit I would then also update this.
> On 9263 the sram is huge so you can build barebox as first stage

Good - simplicity is good.

> 
> I add this a long time ago on usb_a9263_bootstrap_defconfig
> or other (all the EK).
> 
> This will build a barebox that can load you image from multiple source in a sequence
> 
> and then use a std barebox
> 
> To switch to DT you will have to import the DT I did for the kernel
OK, should be straighforward.

> and replace the hw i2c by a i2c gpio as the i2c IP on at91 has a lot of quirks
> and for barebox it will not make sense to port it
Seems less straightforward but doable.

I will see if I can find time to give it a try and then post patches.

	Sam

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
