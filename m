Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bzexN-00061A-Bf
 for barebox@lists.infradead.org; Thu, 27 Oct 2016 07:18:37 +0000
Date: Thu, 27 Oct 2016 09:18:10 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20161027071810.g7web5cjygjqnus5@pengutronix.de>
References: <CABDcavZ08eW8scP2zi_5hUp7J8ex-xj17-n7SRx_5YNC3q-8eQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CABDcavZ08eW8scP2zi_5hUp7J8ex-xj17-n7SRx_5YNC3q-8eQ@mail.gmail.com>
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
Subject: Re: Read kernel from static UBI volume
To: Guillermo Rodriguez Garcia <guille.rodriguez@gmail.com>
Cc: barebox@lists.infradead.org

On Thu, Oct 27, 2016 at 09:10:02AM +0200, Guillermo Rodriguez Garcia wrote:
> I know Barebox can load files from UBIFS. However, is there support
> from booting a kernel directly from a static UBI volume?.

Are you using ptxdist? If so, enable BLSPEC which results in the kernel
being installed (together with a dtb if configured) in the rootfs and
barebox can boot this easily.

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
