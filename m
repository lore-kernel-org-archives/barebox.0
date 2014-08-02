Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from top.free-electrons.com ([176.31.233.9]
 helo=mail.free-electrons.com)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XDPhD-0006fw-Fr
 for barebox@lists.infradead.org; Sat, 02 Aug 2014 03:09:24 +0000
Date: Sat, 2 Aug 2014 00:07:58 -0300
From: Ezequiel Garcia <ezequiel.garcia@free-electrons.com>
Message-ID: <20140802030758.GA2581@arch.cereza>
References: <1406107690-8605-1-git-send-email-sebastian.hesselbarth@gmail.com>
 <1406107690-8605-5-git-send-email-sebastian.hesselbarth@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1406107690-8605-5-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: Re: [PATCH 4/5] ARM: dts: mvebu: remove mbus ranges overwrite
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org

Sebastian,

While testing the mvneta I found that Openblocks AX3-4 is broken
on next: barebox just silently hangs.

Here's my config: http://sprunge.us/OiVM. Maybe there is something
wrong in the config?

On 23 Jul 11:28 AM, Sebastian Hesselbarth wrote:
> With proper DT fixup in place, we can now remove the overwrite of
> mbus ranges in Armada 370 Mirabox and Armada XP Openblocks AX3.
> =


Reverting this commit (c148e367a5) seems to solve the problem, so I'll
review this whole series tonight and see if I can spot anything.

I'll test Mirabox tomorrow.
-- =

Ezequiel Garc=EDa, Free Electrons
Embedded Linux, Kernel and Android Engineering
http://free-electrons.com

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
