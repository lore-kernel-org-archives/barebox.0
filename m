Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1glroT-0000vl-R2
 for barebox@lists.infradead.org; Tue, 22 Jan 2019 08:53:43 +0000
Date: Tue, 22 Jan 2019 09:53:37 +0100
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20190122085337.rs6iyfddji5qmtlv@pengutronix.de>
References: <20181213063356.19138-1-t.scherer@eckelmann.de>
 <20181217141852.9c9dd9acf3072d07af8af20b@gmail.com>
 <20181217113102.kjlim22expeyz627@pengutronix.de>
 <20190122081040.GA23658@ws067.eckelmann.group>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190122081040.GA23658@ws067.eckelmann.group>
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
Subject: Re: [PATCH] imd: model and compatible missing in metadata
To: "Scherer, Thorsten" <thorsten.scherer@eckelmann.de>
Cc: barebox@lists.infradead.org

Hello,

On Tue, Jan 22, 2019 at 09:10:40AM +0100, Scherer, Thorsten wrote:
> i spent some time trying to understand the usage of imd_used etc. =

> =

> In another reply I stated:
> =

> 'I misread the documenation on IMD as "of_compatible and model will be
> figured out and put into the proper location by barebox".'

That is wrong. The current code doesn't ensure that and I don't see a
way how this could be done comfortably without per-board changes.
 =

> I am not so sure, if that is really the case.
> =

> As far as i understand things:
> =

> 1. 	of_compatible and model are (should be) automagically added to imd fr=
om the
> 	entries in the dts.
> =

> git show 97e81f2d7 | grep -A 1 'For.*model.*of_compatible'
> cat scripts/gen-dtb-s | grep -A 23 -B 3 'barebox_imd_0'

The imd tags for compatible and model are generated, but not
automatically included with this change. This is AFAICT the current
state.

The problem is that the needed information is included in the "barebox"
image (i.e. the file with the name "barebox" that is build in the top
build dir) but then there is an additional step that extracts "all
needed" parts from that image to create a binary that then is able to be
started on your target. So if "barebox" has three entry points for
different machines, there are three images generated and each only has a
single entry point. Unused functions and data structures are stripped.
The linker detects that the imd section that contains the compatible and
model is not used and so this goes away in all three generated binaries.

> 2.	the IMD_USED macro puts arbitrary tags in the metadata.  Which may
> 	also be a tag named model.

The IMD_USED claims a certain data structure is used such that the
linker doesn't throw it away.
 =

> Now I wonder, if the lack of the patch just covers up an issue at another
> place or if there is something (in the context of multi image support?) w=
hich
> I do not understand. =


Did you look at the patch I sent you?

> Maybe there is something messed up with the entries in
> the device tree?
> =

> https://www.spinics.net/lists/arm-kernel/msg699453.html

This is unrelated, this is a patch for Linux to add a device tree.

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
