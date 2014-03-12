Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-x22b.google.com ([2a00:1450:4013:c00::22b])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WNpw8-0003Oy-OQ
 for barebox@lists.infradead.org; Wed, 12 Mar 2014 20:39:37 +0000
Received: by mail-ee0-f43.google.com with SMTP id e53so22215eek.16
 for <barebox@lists.infradead.org>; Wed, 12 Mar 2014 13:39:14 -0700 (PDT)
Date: Wed, 12 Mar 2014 21:51:46 +0100
From: Alexander Aring <alex.aring@gmail.com>
Message-ID: <20140312205144.GA8051@x61s.Speedport_W_921V_1_24_000>
References: <1394451593-3090-1-git-send-email-d.lavnikevich@sam-solutions.com>
 <20140312202848.GL17250@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20140312202848.GL17250@pengutronix.de>
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
Subject: Re: [PATCH 1/5] mtd: Update internal API to support 64-bit device size
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Grigory Milev <g.milev@sam-solutions.com>, barebox@lists.infradead.org, Dmitry Lavnikevich <d.lavnikevich@sam-solutions.com>

Hi Sascha,

On Wed, Mar 12, 2014 at 09:28:48PM +0100, Sascha Hauer wrote:
> On Mon, Mar 10, 2014 at 02:39:49PM +0300, Dmitry Lavnikevich wrote:
> > MTD internal API presently uses 32-bit values to represent device
> > size. This patch updates them to 64-bits but leaves the external API
> > unchanged.
> > 
> > In general, changing from 32-bit to 64-bit values cause little
> > or no changes to the majority of the code with the following
> > exceptions:
> >   - printk message formats;
> >   - division and modulus of 64-bit values (mtd_div_by_wb,
> >     mtd_div_by_eb may be used in some of such cases).
> > 
> > Was tested on phyFLEX i.MX6.
> >
> 
> changed master_offset to 64bit aswell and applied this series.
> 
ok, cool!

But.. damn it there is still a ugly comment in lib/libmtd.c:

"NOTE: No support for 64 bit sizes yet!"

hehe. :-)

- Alex

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
