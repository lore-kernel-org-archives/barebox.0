Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp3-g21.free.fr ([2a01:e0c:1:1599::12])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1S0fl1-0003Cv-KF
 for barebox@lists.infradead.org; Thu, 23 Feb 2012 20:59:21 +0000
Date: Thu, 23 Feb 2012 21:59:07 +0100
From: Eric =?ISO-8859-1?B?QuluYXJk?= <eric@eukrea.com>
Message-ID: <20120223215907.70906772@eb-e6520>
In-Reply-To: <CAACwSTLb5OkU5R_dUH5MVNP+UhVwvYZo8LK5Xo0sya2CeTgzaA@mail.gmail.com>
References: <CAACwSTKshGv05PfJWJkFTKzhof2q+hjupdh=U3VH2Fbdc-6VBQ@mail.gmail.com>
 <20120221210127.GG3852@pengutronix.de>
 <CAACwSTJxLsZxwfp4=7bunemR3SV8QqqVKz7Ox-Fo-Jt_zCnnVA@mail.gmail.com>
 <20120223201348.GR3852@pengutronix.de>
 <CAACwSTLb5OkU5R_dUH5MVNP+UhVwvYZo8LK5Xo0sya2CeTgzaA@mail.gmail.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: mx53 loco boot procedure
To: George Stefan <stefan.george87@gmail.com>
Cc: barebox@lists.infradead.org

Hi,

Le Thu, 23 Feb 2012 22:40:41 +0200,
George Stefan <stefan.george87@gmail.com> a =E9crit :
> What i have done so far is take vmlinux.o and vmlinux.lds  and try to
> "integrate"
> them into barebox.lds.s.
> Do you thing that this is the correct aproach?
> =

Why do you want to keep barebox in that case ? You may try to hack the
kernel so that is can boot standalone, add a DCD header to the
resulting kernel binary with the correct parameters to have the romcode
load your kernel, burn the resulting binary on your SD and forget
barebox as that's what you are trying to do.

Eric
-- =

http://eukrea.com/en/news/104-2012

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
