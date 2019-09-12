Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8Oo7-0005V7-LW
 for barebox@lists.infradead.org; Thu, 12 Sep 2019 13:06:45 +0000
Date: Thu, 12 Sep 2019 15:06:41 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20190912130641.iddh5b7svxbgjlf7@pengutronix.de>
References: <20190912102905.21307-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190912102905.21307-1-a.fatoum@pengutronix.de>
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
Subject: Re: [PATCH 1/7] libfile: introduce copy_file_2 for copying starting
 with offset
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

Hello Ahmad,

On Thu, Sep 12, 2019 at 12:28:59PM +0200, Ahmad Fatoum wrote:
> barebox already has a copy_file for copying files. Extend the API by a
> copy_file_2 that takes a source offset into account.

Can you give that function a more descriptive name? Something like
copy_file_from_offset()?

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
