Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YLTr7-0007hZ-1u
 for barebox@lists.infradead.org; Wed, 11 Feb 2015 09:45:14 +0000
Date: Wed, 11 Feb 2015 10:44:50 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150211094450.GM12209@pengutronix.de>
References: <20150208232614.f704a8d152576f0c47ca9c50@gmail.com>
 <CAJfOKBz5UuqQJtcuPP8nLwLymje7+mPkKDgDSC8yHfj_pbvD+w@mail.gmail.com>
 <20150209074034.GT12209@pengutronix.de>
 <CAJfOKBx-KuUdPfQXeC9xCM7wFugBuo7i8dj7cBqGBXtSFQ4n6A@mail.gmail.com>
 <20150209154911.f0f1e90dac8229ad187bb20f@gmail.com>
 <CAJfOKBw8ZDEo4N_CRvoKFjx7Aacb0o5q6GSB+DSHNbLq5Yoa_A@mail.gmail.com>
 <20150211031646.4c6aaf0b21d3cd01883950a3@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20150211031646.4c6aaf0b21d3cd01883950a3@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: openrisc build problem
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox <barebox@lists.infradead.org>

On Wed, Feb 11, 2015 at 03:16:46AM +0400, Antony Pavlov wrote:
> On Mon, 9 Feb 2015 20:24:20 +0100
> Franck Jullien <franck.jullien@gmail.com> wrote:
> 
> > 2015-02-09 12:49 GMT+01:00 Antony Pavlov <antonynpavlov@gmail.com>:
> > > On Mon, 9 Feb 2015 12:26:05 +0100
> > > Franck Jullien <franck.jullien@gmail.com> wrote:
> > >
> > >> 2015-02-09 8:40 GMT+01:00 Sascha Hauer <s.hauer@pengutronix.de>:
> > >> > Hi,
> > >> >
> > >> > On Sun, Feb 08, 2015 at 08:35:40PM +0100, Franck Jullien wrote:
> > >> >>
> > >> >> Hi,
> > >> >>
> > >> >> Yes I know :) Until now, the official openrisc toolchain was called or32.
> > >> >> However, the new one (and maintained one)  is called or1k. So we need
> > >> >> to change "elf32-or32" to "elf32-or1k" in barebox.lds.S.
> > >> >>
> > >> >> Feel free to send a patch. Or I'll do that later.
> > >> >
> > >> > Is there a binary toolchain somewhere for download? I'll need for my
> > >> > build tests once this patch is in.
> > >> >
> > >>
> > >> Here: http://opencores.org/or1k/OpenRISC_GNU_tool_chain#Prebuilt_versions
> > >> Or more recent here:
> > >> http://lis.ei.tum.de/pub-download/openrisc-builds/or1k-elf/release/
> > >
> > >
> > > Hmmm.
> > >
> > > It looks like gcc-or1k-elf-4.8.1-x86_64 does not work on my amd64 Debian testing
> > > ('apt-cache search libmpc2' gives no results). E.g.
> > >
> > >
> > > $ /opt/gcc-or1k-elf-4.8.1-x86_64/bin/or1k-elf-gcc 1.c
> > > /opt/gcc-or1k-elf-4.8.1-x86_64/bin/../libexec/gcc/or1k-elf/4.8.1/cc1: error while loading shared libraries: libmpc.so.2: cannot open shared object file: No such file or directory
> > >
> > > --
> > > Best regards,
> > >   Antony Pavlov
> > 
> > To be honest, I never tried those prebuilt toolchain.
> > Did you try the newer version present on the second link ?
> > 
> 
> Sorry, I have forgotten this question.
> 
> This toolchain works fine:
>   http://lis.ei.tum.de/pub-download/openrisc-builds/or1k-elf/release/or1k-elf-latest-ubuntu-14.04-amd64.tgz

The server seems to be offline for the whole morning now. I'll try
later.

Sascha


-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
