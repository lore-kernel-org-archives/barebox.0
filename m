Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x230.google.com ([2a00:1450:4010:c04::230])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X6HFg-0004FR-NB
 for barebox@lists.infradead.org; Sun, 13 Jul 2014 10:43:29 +0000
Received: by mail-lb0-f176.google.com with SMTP id w7so2042873lbi.21
 for <barebox@lists.infradead.org>; Sun, 13 Jul 2014 03:43:04 -0700 (PDT)
Date: Sun, 13 Jul 2014 14:55:26 +0400
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20140713145526.2cf6407fc9a17a4e8db89a50@gmail.com>
In-Reply-To: <53C25B45.7010101@gmail.com>
References: <53C25B45.7010101@gmail.com>
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
Subject: Re: Adding IPv4 multicast support
To: Colin Leitner <colin.leitner@googlemail.com>
Cc: barebox@lists.infradead.org, Daniele Lacamera <daniele.lacamera@tass.be>

On Sun, 13 Jul 2014 12:11:17 +0200
Colin Leitner <colin.leitner@googlemail.com> wrote:

> Hello everyone,
>
> I'm working on adding multicast support to barebox (for device discovery)=
 and wanted to know if there's interest in having that included in upstream.

There is an initiative on integrating picotcp into barebox.

picotcp is a free TCP/IP stack implementation, see
  https://github.com/tass-belgium/picotcp

AFAIK latest picotcp-enbled barebox anounced here:
  http://lists.infradead.org/pipermail/barebox/2014-June/019723.html

Can be network device discovery realized using picotcp entities?

To Daniele: how things stand with picotcp tftp support?


> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox


-- =

--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
