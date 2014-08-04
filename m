Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XENGi-000611-Iv
 for barebox@lists.infradead.org; Mon, 04 Aug 2014 18:46:01 +0000
Date: Mon, 4 Aug 2014 20:45:37 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140804184537.GH23235@pengutronix.de>
References: <1406899464-29144-1-git-send-email-poggi.raph@gmail.com>
 <1406899464-29144-2-git-send-email-poggi.raph@gmail.com>
 <2F914EFB-7A29-4025-8D54-080D28CF9FA8@jcrosoft.com>
 <CACqcpZAC77K-NgJYEATsoXKECa6ER0uHsU284D_qNOU7DecYiA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CACqcpZAC77K-NgJYEATsoXKECa6ER0uHsU284D_qNOU7DecYiA@mail.gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 1/2] pinctrl: at91: add pinctrl driver
To: =?iso-8859-15?Q?Rapha=EBl?= Poggi <raphio98@gmail.com>
Cc: barebox@lists.infradead.org

On Mon, Aug 04, 2014 at 08:37:35PM +0200, Rapha=EBl Poggi wrote:
> I have planned to add device tree support for the AT91 port.
> =

> So I port the pinctrl driver from linux to barebox to be able to use
> the pinctrl in device tree, but maybe I made a mistake and there is
> another solution.

Nope. When you want to add device tree support for AT91 that's exactly
the way to go.
I'm unsure about the duplication of at91_mux_set_A_periph() and friends
here. We already have them in the tree.

Sascha


-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
