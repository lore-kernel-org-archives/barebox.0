Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 15.mo5.mail-out.ovh.net ([178.33.107.29]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RzrvY-0002Wu-RK
 for barebox@lists.infradead.org; Tue, 21 Feb 2012 15:46:56 +0000
Received: from mail98.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 7C22CFFAE45
 for <barebox@lists.infradead.org>; Tue, 21 Feb 2012 16:49:26 +0100 (CET)
Date: Tue, 21 Feb 2012 16:38:56 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120221153856.GL9343@game.jcrosoft.org>
References: <1329784059-6006-1-git-send-email-eric@eukrea.com>
 <1329784059-6006-2-git-send-email-eric@eukrea.com>
 <20120221034835.GD9343@game.jcrosoft.org>
 <20120221080346.1501ec1f@eb-e6520>
 <20120221130318.GJ9343@game.jcrosoft.org>
 <20120221142255.547a4e67@eb-e6520>
 <20120221141011.GK9343@game.jcrosoft.org>
 <20120221163527.1a42ed2b@eb-e6520>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120221163527.1a42ed2b@eb-e6520>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 2/7] mfd: add mc34708 driver
To: Eric =?iso-8859-1?Q?B=E9nard?= <eric@eukrea.com>
Cc: barebox@lists.infradead.org

On 16:35 Tue 21 Feb     , Eric B=E9nard wrote:
> Le Tue, 21 Feb 2012 15:10:11 +0100,
> Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com> a =E9crit :
> > I still don't like the idea to export it
> > =

> > You need a proper API to manage the PMIC
> > =

> > so for today no need of this and I doubt the API will need it
> > =

> for today we have what is inside barebox and this patche is coherent
> with what is actually inside barebox (please check other drivers in mfd
> and mx35-3stack for example).
> For the future we may no more need this if we have a proper PMIC API
> but as this API actually is not written, this patchset makes sense.
today you do not need it

today you just need to known it the chip is here

so just check if the devfs is present

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
