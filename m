Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.savoirfairelinux.com ([208.88.110.44])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1eFhNn-0003zZ-Sa
 for barebox@lists.infradead.org; Fri, 17 Nov 2017 14:12:41 +0000
Date: Fri, 17 Nov 2017 09:12:44 -0500
From: =?iso-8859-1?Q?Ga=EBl?= PORTAY <gael.portay@savoirfairelinux.com>
Message-ID: <20171117141244.kvyx5ncl4x2ysg55@archlinux.local>
References: <20171117045814.16164-1-gael.portay@savoirfairelinux.com>
 <20171117091430.ifee3xoai4xatqyg@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20171117091430.ifee3xoai4xatqyg@pengutronix.de>
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
Subject: Re: [PATCH] readline_simple: use len instead of CONFIG_CBSIZE
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Sascha,

On Fri, Nov 17, 2017 at 10:14:30AM +0100, Sascha Hauer wrote:
> On Thu, Nov 16, 2017 at 11:58:14PM -0500, Ga=EBl PORTAY wrote:
> > It is safier to use the length given in parameter instead of using the
> > preprocessor CONFIG_CBSIZE value.
> > =

> > Signed-off-by: Ga=EBl PORTAY <gael.portay@savoirfairelinux.com>
> > ---
> =

> Applied, thanks
> =

> Sascha
>

Thanks

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
