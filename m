Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-sn1nam01on0108.outbound.protection.outlook.com
 ([104.47.32.108] helo=NAM01-SN1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fLqyn-0006cT-76
 for barebox@lists.infradead.org; Thu, 24 May 2018 14:12:38 +0000
From: "Baeuerle, Florian" <Florian.Baeuerle@allegion.com>
Date: Thu, 24 May 2018 14:12:20 +0000
Message-ID: <6fc771578dc59b189cebf73a3a9510042fce0c60.camel@allegion.com>
References: <7b0617ad32db44235a2f7efbe19b31e802a9493b.camel@allegion.com>
 <20180523133030.tjxqfxri5fxbaxor@pengutronix.de>
 <e77f7ef6c9ab77ca5fb2cdee4125efa6c9ae8fd2.camel@allegion.com>
 <20180524082047.44njsmnrvpxyar27@pengutronix.de>
In-Reply-To: <20180524082047.44njsmnrvpxyar27@pengutronix.de>
Content-Language: en-US
Content-ID: <463B7A98E1783C4D90F2B398FD4EC6DB@prod.exchangelabs.com>
MIME-Version: 1.0
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
Subject: Re: Modifying device-tree: /chosen
To: "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Hi Sascha,

Am Donnerstag, den 24.05.2018, 10:20 +0200 schrieb s.hauer@pengutronix.de:
> On Thu, May 24, 2018 at 08:13:44AM +0000, Baeuerle, Florian wrote:
> > Hi Sascha,
> > 
> > so I think we need a command, similar to of_property:
> > 
> > of_fixup_property [-sd] NODE PROPERTY VALUE
> > 
> > or should it rather be a new option for of_property, like this:
> > 
> > of_property [-sdf] NODE [PROPERTY] [VALUES]
> 
> I would first try it as a new option to of_property.
> If for some reason this turns out to be ugly, let me know.

of_property and of_node are pretty similar with regard to their options.

Do you want them to stay the same, so I'd also have to implement this
fixup functionality to of_node?

> 
> Sascha
> 
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
