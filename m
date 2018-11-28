Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gRzfV-0005L0-V1
 for barebox@lists.infradead.org; Wed, 28 Nov 2018 13:14:20 +0000
Received: by mail-lj1-x241.google.com with SMTP id n18-v6so23381394lji.7
 for <barebox@lists.infradead.org>; Wed, 28 Nov 2018 05:14:02 -0800 (PST)
Date: Wed, 28 Nov 2018 16:13:57 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20181128161357.af3564140bf084202355690a@gmail.com>
In-Reply-To: <20181128112053.6027-1-m.tretter@pengutronix.de>
References: <20181128112053.6027-1-m.tretter@pengutronix.de>
Mime-Version: 1.0
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
Subject: Re: [PATCH v2 0/4] Xilinx Zynq Ultrascale+ MPSoC support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org, Michael Tretter <m.tretter@pengutronix.de>

On Wed, 28 Nov 2018 12:20:49 +0100
Michael Tretter <m.tretter@pengutronix.de> wrote:

> This is v2 of the series to add support for the Xilinx Zynq Ultrascale+ M=
PSoC
> platform and the ZCU104 Evaluation Kit.
> =

> The patch "[PATCH v2 3/4] ARM: aarch64: add ENTRY_PROC macro for arm64"
> probably needs a closer look, as it adds a generic macro that is expected=
 to
> be used by other arm64 architectures as well.
> =

> Changelog:
> =

> v1 -> v2:
> - move ENTRY_PROC to a more generic location
> - add separate patch for ENTRY_PROC
> - rebase onto piggydata patches
> - remove empty zynqmp.c and board.c
> - use SPDX-License-Identifiers

At the moment barebox uses SPDX identifiers in very few files.

Can we adopt Linux kernel licensing rules for barebox?
(https://github.com/torvalds/linux/blob/master/Documentation/process/licens=
e-rules.rst)

If so, we can add SPDX identifiers presense check into checkpatch.pl
as Linux kernel checkpatch.pl does (see https://lore.kernel.org/patchwork/p=
atch/883424/).

-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
