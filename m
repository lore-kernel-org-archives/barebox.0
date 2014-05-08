Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x230.google.com ([2a00:1450:4010:c04::230])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WiRy2-0004AU-PT
 for barebox@lists.infradead.org; Thu, 08 May 2014 17:18:48 +0000
Received: by mail-lb0-f176.google.com with SMTP id p9so3980100lbv.21
 for <barebox@lists.infradead.org>; Thu, 08 May 2014 10:18:24 -0700 (PDT)
Date: Thu, 8 May 2014 21:20:57 +0400
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20140508212057.6b34d32cdc0e49ed0ad287d5@gmail.com>
In-Reply-To: <20140508124315.GC15426@ns203013.ovh.net>
References: <20140505145512.133932fc3ee2247b660638c2@gmail.com>
 <20140505122944.GA1567@mail.gnudd.com>
 <20140508124315.GC15426@ns203013.ovh.net>
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
Subject: Re: TODO: Rewrite network stack.
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Thu, 8 May 2014 14:43:15 +0200
Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com> wrote:

> On 14:29 Mon 05 May     , Alessandro Rubini wrote:
> > =

> > > The most notable is lwIP (http://savannah.nongnu.org/projects/lwip/).
> > =

> > I'm not happy at all about this code base, it looks quite ugly and
> > old-fashioned. It's not the barebox kind of quality. I'd stay with the
> > current code rather than lwip, despite the number of users.
> > =

> > If any, I'd evaluate picotcp (https://github.com/tass-belgium/picotcp).
> =

> uIP  too

Hmm, uIP looks like a light version of lwip or have I missed something?

> =

> Best Regards,
> J.
> > =

> > /alessandro
> > =

> > _______________________________________________
> > barebox mailing list
> > barebox@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/barebox


-- =

--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
