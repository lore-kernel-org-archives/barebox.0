Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fEAdg-0007Lo-0m
 for barebox@lists.infradead.org; Thu, 03 May 2018 09:35:01 +0000
Received: from rettich.hi.pengutronix.de ([2001:67c:670:100:1d::c3]
 helo=rettich) by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <jlu@pengutronix.de>) id 1fEAdU-0008KI-7D
 for barebox@lists.infradead.org; Thu, 03 May 2018 11:34:48 +0200
Received: from jlu by rettich with local (Exim 4.89)
 (envelope-from <jlu@pengutronix.de>) id 1fEAdT-0003ox-W6
 for barebox@lists.infradead.org; Thu, 03 May 2018 11:34:47 +0200
Message-ID: <1525340087.17782.32.camel@pengutronix.de>
From: Jan =?ISO-8859-1?Q?L=FCbbe?= <jlu@pengutronix.de>
Date: Thu, 03 May 2018 11:34:47 +0200
In-Reply-To: <9451da5b-d585-34cc-9d4d-c2645329b760@schmidt-andreas.de>
References: <20180429160125.3193-1-mail@schmidt-andreas.de>
 <1525271572.17782.13.camel@pengutronix.de>
 <9451da5b-d585-34cc-9d4d-c2645329b760@schmidt-andreas.de>
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
Subject: Re: [PATCH] blspec: add checking of optional key machine-id
To: barebox@lists.infradead.org

On Thu, 2018-05-03 at 10:42 +0200, Andreas Schmidt wrote:
> > Your use-case sound like you'd need a way to add a more specific DT
> > board compatible at runtime. 
> 
> We need a decision witch DT has to be load at runtime. But they are all
> compatible with the barebox DT. We have only one barebox DT for all devices.

Yes. So you have additional device declarations in the kernel device
trees, which are not relevant to barebox.

> > Then the existing selection logic would
> > handle your case as well.
> 
> Ohh ... ok. And could you explain please, who we could do that? Because,
> all our DTs are compatible with barebox DT and barebox would choose simple
> the first one and boot it. Or is using of Bootloader Spec isn't right
> way, to solve this issue?

So in the barebox DT you'd have:
/ {
        model = "Foo Common i.MX6 Board";
        compatible = "foo,mx6-common", "fsl,imx6q";
};
[...]

Then for the kernel DTs you can use different compatible lists, which
each use a different and more specific entry.

mx6-variant1.dts:
/ {
        model = "Foo Variant 1 i.MX6 Board";
        compatible =
"foo,mx6-variant1", "foo,mx6-common", "fsl,imx6q";
};
[...]

mx6-variant2.dts:
/ {
        model = "Foo Variant 2 i.MX6 Board";
        compatible = "foo,mx6-variant2", "foo,mx6-common", "fsl,imx6q";
};
[...]

Then, in barebox, you need to have a way to override which compatible
string the bootspec code is looking for.

I'd prefer this to the machine-id approach, as the DT compatible list
mechanism is designed exactly for handing these different levels of
compatibility declarations.

Regards,
Jan
-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
