Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1anMvV-0008L2-UC
 for barebox@lists.infradead.org; Tue, 05 Apr 2016 09:05:37 +0000
Date: Tue, 5 Apr 2016 11:05:11 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20160405090511.GC10108@pengutronix.de>
References: <CABDcavYEn0e8GkEzfJnayr32X85dA5tz-dRaMg3H6J8i-aXj0w@mail.gmail.com>
 <20160404200730.GA1618@pengutronix.de>
 <CABDcavbN_G2MOwjxv6Ags=L0GWwj_HGEMom4ks_s9MZB+GEDVg@mail.gmail.com>
 <20160405081413.GB10108@pengutronix.de>
 <CABDcavZM-45JiFmvzEcALOqmf8dVN8QrJP_2XUpXQe5GyZ+Gqg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CABDcavZM-45JiFmvzEcALOqmf8dVN8QrJP_2XUpXQe5GyZ+Gqg@mail.gmail.com>
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
Subject: Re: Scrolling issues in edit command
To: Guillermo Rodriguez Garcia <guille.rodriguez@gmail.com>
Cc: barebox@lists.infradead.org

Hello,

On Tue, Apr 05, 2016 at 10:40:48AM +0200, Guillermo Rodriguez Garcia wrote:
> I am wondering: If I am correct, serial in/out in barebox is not
> interrupt-driven. Plus, the default UART in the sama5d3_xplained board

right

> that I am using (DBGU) has no FIFOs. Plus, "edit" does a lot of
> repaint work while editing. Could it be the case that received chars
> are being missed by barebox due to the repainting work in "edit" ?

Sounds likely.

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
