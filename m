Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cRPC0-0007rN-2M
 for barebox@lists.infradead.org; Wed, 11 Jan 2017 20:08:24 +0000
Date: Wed, 11 Jan 2017 21:07:57 +0100
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20170111200757.x33vfb4sdrsu4kmk@pengutronix.de>
References: <CAAMcf8CA-eTzHhQFXct7-udO1sYifL3zGULsoxiW9U1hcvKMvw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAAMcf8CA-eTzHhQFXct7-udO1sYifL3zGULsoxiW9U1hcvKMvw@mail.gmail.com>
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
Subject: Re: scripts/checkpatch.pl is deprecated
To: Vicente Bergas <vicencb@gmail.com>
Cc: barebox@lists.infradead.org

On Wed, Jan 11, 2017 at 08:35:11PM +0100, Vicente Bergas wrote:
> Hello,
> when using scripts/checkpatch.pl it may report:
>   Unescaped left brace in regex is deprecated,
>   passed through in regex at scripts/checkpatch.pl line 2267.

I bet this scripts originates from the kernel. So I'd recommend to test
if their version is affected to. If yes, report to them, if not, update
barebox to latest Linux version.

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
