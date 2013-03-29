Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.free-electrons.com ([94.23.35.102])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ULaBs-0000l8-Hx
 for barebox@lists.infradead.org; Fri, 29 Mar 2013 14:22:01 +0000
Message-ID: <5155A385.5010107@free-electrons.com>
Date: Fri, 29 Mar 2013 15:21:57 +0100
From: Maxime Ripard <maxime.ripard@free-electrons.com>
MIME-Version: 1.0
References: <1364395236-539-1-git-send-email-alexandre.belloni@free-electrons.com>
In-Reply-To: <1364395236-539-1-git-send-email-alexandre.belloni@free-electrons.com>
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
Subject: Re: [PATCH v2] cfa10036: Retrieve the RAM size at runtime
To: Alexandre Belloni <alexandre.belloni@free-electrons.com>
Cc: barebox@lists.infradead.org, jimwall@q.com, brian@crystalfontz.com

Hi Alexandre,

Le 27/03/2013 15:40, Alexandre Belloni a =E9crit :
> The cfa-10036 comes in two flavours, with either 128MB or 256MB of RAM
> on it.
> =

> Since it's not stored anywhere, we need to runtime detect it by
> introducing the cfa10036_get_ram_size function.
> =

> Signed-off-by: Alexandre Belloni <alexandre.belloni@free-electrons.com>
> Cc: Maxime Ripard <maxime.ripard@free-electrons.com>

Acked-by: Maxime Ripard <maxime.ripard@free-electrons.com>

-- =

Maxime Ripard, Free Electrons
Embedded Linux, Kernel and Android engineering
http://free-electrons.com

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
