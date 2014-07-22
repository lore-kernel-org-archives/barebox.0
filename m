Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x22d.google.com ([2a00:1450:4010:c04::22d])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X9cdF-0003Du-F5
 for barebox@lists.infradead.org; Tue, 22 Jul 2014 16:09:37 +0000
Received: by mail-lb0-f173.google.com with SMTP id p9so3041941lbv.18
 for <barebox@lists.infradead.org>; Tue, 22 Jul 2014 09:09:14 -0700 (PDT)
Date: Tue, 22 Jul 2014 20:21:50 +0400
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20140722202150.923eb98d9268383756226e99@gmail.com>
In-Reply-To: <53CE25FE.9070903@gmail.com>
References: <1405545909-9855-1-git-send-email-antonynpavlov@gmail.com>
 <1405545909-9855-2-git-send-email-antonynpavlov@gmail.com>
 <53CE25FE.9070903@gmail.com>
Mime-Version: 1.0
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
Subject: Re: [PATCH v2] i2c: add Marvell 64xxx driver
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: barebox@lists.infradead.org

On Tue, 22 Jul 2014 10:51:10 +0200
Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com> wrote:

> On 07/16/2014 11:25 PM, Antony Pavlov wrote:
> > This driver is also used for Allwinner SoCs I2C controllers.
> >
> > Ported from linux-3.15.
> >
> > The most notable barebox driver version changes:
> >
> >    * drop message offloading support;
> >    * add reg-io-width parameter to use driver with byte-oriented
> >      controller versions.
> >
> > Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> =

> Antony,
> =

> I finally finished work on xHCI and PCI on Armada 370. Now I come

Are you speaking about PCIe support for Armada 370 in barebox?

--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
