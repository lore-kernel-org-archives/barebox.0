Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dCkg1-0007W8-5D
 for barebox@lists.infradead.org; Mon, 22 May 2017 10:35:03 +0000
From: Juergen Borleis <jbe@pengutronix.de>
Date: Mon, 22 May 2017 12:34:38 +0200
References: <20170522084930.6072-1-jbe@pengutronix.de>
 <20170522102643.outnjbd4ymnrph5f@pengutronix.de>
In-Reply-To: <20170522102643.outnjbd4ymnrph5f@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201705221234.39274.jbe@pengutronix.de>
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
Subject: Re: [PATCH] PPC: request a consistent memory layout (part II)
To: barebox@lists.infradead.org

Hi Sascha,

On Monday 22 May 2017 12:26:43 Sascha Hauer wrote:
> [...]
> I have the feeling that we should actively put the vector table to one
> of the two locations, so we should implicitly know where it is and not
> have to test the MSR_IP bit.

Sometimes it depends on the boot mode. You can locate the NOR flash memory =

at 0x00000 or 0xfff00000 (via bootstrap pins) and in the latter case the =

vector table is at 0xfff00000 (at least the reset vector)!

> Also there is no SDRAM at 0xfff00000, right?

Yes, but (maybe) flash.

> Requesting SDRAM there will fail every time for a good reason.

Good catch.

jb
-- =

Pengutronix e.K. =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=A0 =A0=
| Juergen Borleis =A0 =A0 =A0 =A0 =A0 =A0 |
Industrial Linux Solutions =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=A0 =A0| http://w=
ww.pengutronix.de/ =A0|

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
