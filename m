Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fNdjT-00035v-H1
 for barebox@lists.infradead.org; Tue, 29 May 2018 12:28:30 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>) id 1fNdjG-0003aN-FV
 for barebox@lists.infradead.org; Tue, 29 May 2018 14:27:54 +0200
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>) id 1fNdjG-0006BZ-7W
 for barebox@lists.infradead.org; Tue, 29 May 2018 14:27:54 +0200
Date: Tue, 29 May 2018 14:27:54 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20180529122754.2bhg5ysfcj33luq4@pengutronix.de>
References: <20180528214400.28252-1-u.kleine-koenig@pengutronix.de>
 <20180528214400.28252-2-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180528214400.28252-2-u.kleine-koenig@pengutronix.de>
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
Subject: Re: [PATCH 2/2] dove: fix bit layout of DOVE_CPU_CTRL register
To: barebox@lists.infradead.org

Hello,

On Mon, May 28, 2018 at 11:44:00PM +0200, Uwe Kleine-K=F6nig wrote:
> While creating the previous patch I checked the cpu's reference manual
> to see what the affected registers actually do and noticed that bits
> of the DOVE_CPU_CTRL actually used by the code doesn't match the bits
> described as AHBSlaveBase in the manual.
> =

> I'm not aware of any effect (neither positive nor negative) of this
> patch.

Just a little amendment:
I didn't find a usage of this register neither in Linux nor in the
vendor U-Boot for the cubox.

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
