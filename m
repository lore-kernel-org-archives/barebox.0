Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-eopbgr770129.outbound.protection.outlook.com
 ([40.107.77.129] helo=NAM02-SN1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ggnyW-0007mj-DO
 for barebox@lists.infradead.org; Tue, 08 Jan 2019 09:47:10 +0000
From: "Baeuerle, Florian" <Florian.Baeuerle@allegion.com>
Date: Tue, 8 Jan 2019 09:47:04 +0000
Message-ID: <a86ae0154c6069405619d7752fcb227d5f2384b6.camel@allegion.com>
References: <20181218132233.23669-1-florian.baeuerle@allegion.com>
 <20181219140146.11806-1-florian.baeuerle@allegion.com>
 <20190103105936.b3nkdub77cpeoad4@pengutronix.de>
 <61e7e82c99bb2d70b8e8502daaf2cab8135851cc.camel@allegion.com>
 <20190107075821.x7gwx2mrlcyfvvz7@pengutronix.de>
In-Reply-To: <20190107075821.x7gwx2mrlcyfvvz7@pengutronix.de>
Content-Language: en-US
Content-ID: <1FD7C35C48944143B4DC9930BC8AC79A@prod.exchangelabs.com>
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

NAK! NAK!

There are two terrible mistakes - indeed the patches produce a very reproducible
environment. Independent of what environment you want, you'd get an empty one.

Problem 1: a2f3b3d
it requires ACTION_RECURSE | ACTION_SORT

Problem 2: f5c0978
+			e->dirname = xstrdup(next->d_name);
should be much more like:
+			e->dirname = xstrdup(fileName);

Sorry for that, problem 2 should really *not* have happened.


- Florian

Am Montag, den 07.01.2019, 08:58 +0100 schrieb s.hauer@pengutronix.de:
> On Thu, Jan 03, 2019 at 11:53:27AM +0000, Baeuerle, Florian wrote:
> > Hi Sascha,
> > 
> > thanks a lot!
> > 
> > There's two things I noticed when reviewing the patches:
> > 
> > The commit message of 47866ba5 is a bit misleading since poison.h is no
> > longer
> > being added in the commit.
> > 
> > 861ce6d looks a bit weird, I guess that's a typo (ACTION_SORT |
> > ACTION_SORT). 
> 
> Ups, indeed. I fixed that.
> 
> Thanks,
> Sascha
> 
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
