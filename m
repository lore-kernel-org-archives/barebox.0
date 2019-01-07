Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ggPnj-0006h0-I8
 for barebox@lists.infradead.org; Mon, 07 Jan 2019 07:58:25 +0000
Date: Mon, 7 Jan 2019 08:58:21 +0100
From: "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>
Message-ID: <20190107075821.x7gwx2mrlcyfvvz7@pengutronix.de>
References: <20181218132233.23669-1-florian.baeuerle@allegion.com>
 <20181219140146.11806-1-florian.baeuerle@allegion.com>
 <20190103105936.b3nkdub77cpeoad4@pengutronix.de>
 <61e7e82c99bb2d70b8e8502daaf2cab8135851cc.camel@allegion.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <61e7e82c99bb2d70b8e8502daaf2cab8135851cc.camel@allegion.com>
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
To: "Baeuerle, Florian" <Florian.Baeuerle@allegion.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Thu, Jan 03, 2019 at 11:53:27AM +0000, Baeuerle, Florian wrote:
> Hi Sascha,
> 
> thanks a lot!
> 
> There's two things I noticed when reviewing the patches:
> 
> The commit message of 47866ba5 is a bit misleading since poison.h is no longer
> being added in the commit.
> 
> 861ce6d looks a bit weird, I guess that's a typo (ACTION_SORT | ACTION_SORT). 

Ups, indeed. I fixed that.

Thanks,
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
