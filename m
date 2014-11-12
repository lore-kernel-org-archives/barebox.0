Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x230.google.com ([2a00:1450:400c:c05::230])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XoW0e-000114-AU
 for barebox@lists.infradead.org; Wed, 12 Nov 2014 11:22:48 +0000
Received: by mail-wi0-f176.google.com with SMTP id h11so4521946wiw.3
 for <barebox@lists.infradead.org>; Wed, 12 Nov 2014 03:22:26 -0800 (PST)
Message-ID: <546342EE.20500@gmail.com>
Date: Wed, 12 Nov 2014 12:22:22 +0100
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
References: <1415544978-22392-1-git-send-email-ezequiel.garcia@free-electrons.com>
 <20141110080657.GA18558@pengutronix.de> <5460FFB0.9080205@free-electrons.com>
 <20141110184345.GC27002@pengutronix.de> <546113A7.30500@gmail.com>
 <20141111090649.GE27002@pengutronix.de>
 <20141112105637.GN27002@pengutronix.de>
In-Reply-To: <20141112105637.GN27002@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v3 0/4] mvebu: Add network support for Armada 370/XP
To: =?ISO-8859-1?Q?Uwe_Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org

On 11/12/2014 11:56 AM, Uwe Kleine-K=F6nig wrote:
> Hello again,
>
> here come the recent insights.
[...]
>
> It seems to be not possible to easily dump the register space in both
> U-Boot and barebox for comparison. md 0xf1074000+0x4000 just hangs
> somewhere in the middle.
>
> A difference between U-Boot and barebox is the location where the
> internal registers are mapped. Maybe something that depends on U-Boot's
> memory layout leaks into barebox because I do 2nd stage booting?
>
> Out of ideas at the moment. :-(

Uwe,

Nice comparison, but did you double check caches are disabled? There is
no support for Dcache on mvebu SoCs in barebox atm.

Sebastian


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
