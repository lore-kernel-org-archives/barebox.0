Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 2.mo2.mail-out.ovh.net ([188.165.53.149]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UdIdU-0005OG-Q6
 for barebox@lists.infradead.org; Fri, 17 May 2013 11:15:45 +0000
Received: from mail606.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 6E27BDC131C
 for <barebox@lists.infradead.org>; Fri, 17 May 2013 13:15:20 +0200 (CEST)
Mime-Version: 1.0 (Mac OS X Mail 6.3 \(1503\))
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
In-Reply-To: <20130517054349.GQ32299@pengutronix.de>
Date: Fri, 17 May 2013 19:15:12 +0800
Message-Id: <F6661D01-12A7-4ED2-A277-CF829AE802CD@jcrosoft.com>
References: <1368603809-5476-1-git-send-email-eric@eukrea.com>
 <20130517054349.GQ32299@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v2] nand_base: sync flash detection functions with linux
 3.9's code
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

HI,

	can we have stable release as this patch fix the band support as it's brok=
en since
	4c2bdc8728016b3412523e3264651651fe752860

Best Regards,
J.
On May 17, 2013, at 1:43 PM, Sascha Hauer <s.hauer@pengutronix.de> wrote:

> On Wed, May 15, 2013 at 09:43:29AM +0200, Eric B=E9nard wrote:
>> this fix the problems introduced when detecting non ONFI flashes in
>> commit 4c2bdc8728016b3412523e3264651651fe752860
>> "nand_base: detect more ONFI flash"
>> =

>> Signed-off-by: Eric B=E9nard <eric@eukrea.com>
> =

> Applied, thanks
> =

> Sascha
> =

> -- =

> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> =

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
