Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bn3nam01on0724.outbound.protection.outlook.com
 ([2a01:111:f400:fe41::724]
 helo=NAM01-BN3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gf1Z6-0000Dq-LK
 for barebox@lists.infradead.org; Thu, 03 Jan 2019 11:53:34 +0000
From: "Baeuerle, Florian" <Florian.Baeuerle@allegion.com>
Date: Thu, 3 Jan 2019 11:53:27 +0000
Message-ID: <61e7e82c99bb2d70b8e8502daaf2cab8135851cc.camel@allegion.com>
References: <20181218132233.23669-1-florian.baeuerle@allegion.com>
 <20181219140146.11806-1-florian.baeuerle@allegion.com>
 <20190103105936.b3nkdub77cpeoad4@pengutronix.de>
In-Reply-To: <20190103105936.b3nkdub77cpeoad4@pengutronix.de>
Content-Language: en-US
Content-ID: <81B7A0F8AD5715409DEB010F65C1C7EF@prod.exchangelabs.com>
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
Subject: Re: [PATCH v2 1/2] recursive_action: add ACTION_SORT flag
To: "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Hi Sascha,

thanks a lot!

There's two things I noticed when reviewing the patches:

The commit message of 47866ba5 is a bit misleading since poison.h is no longer
being added in the commit.

861ce6d looks a bit weird, I guess that's a typo (ACTION_SORT | ACTION_SORT). 


- Florian

Am Donnerstag, den 03.01.2019, 11:59 +0100 schrieb Sascha Hauer:
> Hi Florian,
> 
> On Wed, Dec 19, 2018 at 02:02:03PM +0000, Baeuerle, Florian wrote:
> > Add a flag to sort directory entries before recursing into them.
> > 
> > Since this part of lib/ is used inside barebox as well as in
> > scripts/bareboxenv.c, we cannot easily use stringlists from lib/, which
> > would have made the code a bit nicer.
> > 
> > Further, add poison.h from kernel 4.5-rc1, which was the base for
> > importing linux headers under scripts/ in a883d9a. This is required for
> > actually using kernel linked lists within scripts/ tools.
> 
> I applied this with some changes. It was important for me that the sort
> support does not leak into the barebox image so we do not increase the
> binary size. Please check the result in the -next branch, it should do
> what you need.
> 
> Sascha
> 
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
