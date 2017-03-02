Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cjLnI-0007Iz-VC
 for barebox@lists.infradead.org; Thu, 02 Mar 2017 08:09:02 +0000
Date: Thu, 2 Mar 2017 09:08:39 +0100
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20170302080839.e5vc5kreogecnlq3@pengutronix.de>
References: <20170301142641.6596-1-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170301142641.6596-1-l.stach@pengutronix.de>
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
Subject: Re: [PATCH 1/3] ARM: align exception vectors to 32 byte
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org

Hello Lucas,

On Wed, Mar 01, 2017 at 03:26:39PM +0100, Lucas Stach wrote:
> On ARMv7 the exception vectors inside the barebox binary are used directly
> by remapping the vectors base through the VBAR register. While VBAR allows
> to remap the exception vectors freely, it still imposes a minimum alignme=
nt
> of 32 byte, as the lower bits are treated as the exception vector offset.
> Enforce this alignment inside the barebox binary.

maybe put a part of this into a comment?

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
