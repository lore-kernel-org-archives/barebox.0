Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x236.google.com ([2a00:1450:4010:c04::236])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WhITV-0004hv-25
 for barebox@lists.infradead.org; Mon, 05 May 2014 12:58:33 +0000
Received: by mail-lb0-f182.google.com with SMTP id q8so2755666lbi.13
 for <barebox@lists.infradead.org>; Mon, 05 May 2014 05:58:06 -0700 (PDT)
Date: Mon, 5 May 2014 17:08:50 +0400
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20140505170850.69ea223f68c8ac15ada5c16e@gmail.com>
In-Reply-To: <20140505122944.GA1567@mail.gnudd.com>
References: <20140505145512.133932fc3ee2247b660638c2@gmail.com>
 <20140505122944.GA1567@mail.gnudd.com>
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
To: Alessandro Rubini <rubini-list@gnudd.com>
Cc: barebox@lists.infradead.org

On Mon, 5 May 2014 14:29:44 +0200
Alessandro Rubini <rubini-list@gnudd.com> wrote:

> > The most notable is lwIP (http://savannah.nongnu.org/projects/lwip/).
> =

> I'm not happy at all about this code base, it looks quite ugly and
> old-fashioned. It's not the barebox kind of quality. I'd stay with the
> current code rather than lwip, despite the number of users.
> =

> If any, I'd evaluate picotcp (https://github.com/tass-belgium/picotcp).

Thanks for very interesting picotcp link!

At a glance picotcp looks better than lwip.

--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
