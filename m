Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WNFGB-0000Bp-R9
 for barebox@lists.infradead.org; Tue, 11 Mar 2014 05:29:53 +0000
Date: Tue, 11 Mar 2014 06:29:22 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140311052922.GI17250@pengutronix.de>
References: <5319AA25.5050803@sam-solutions.net>
 <20140310072003.GH17250@pengutronix.de>
 <20140310080213.GA32061@x61s.Speedport_W_921V_1_24_000>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20140310080213.GA32061@x61s.Speedport_W_921V_1_24_000>
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
To: Alexander Aring <alex.aring@gmail.com>
Cc: Grigory Milev <G.Milev@sam-solutions.com>, barebox@lists.infradead.org, Dmitry Lavnikevich <D.Lavnikevich@sam-solutions.com>, Dmitry Lavnikevich <d.lavnikevich@sam-solutions.net>

On Mon, Mar 10, 2014 at 09:02:15AM +0100, Alexander Aring wrote:
> Hi Sascha,
> 
> we talked some time ago about >= 4GB mtd support. This patch series add
> only a size for uint64_t. But then we also need to change

That even wasn't so long ago ;)

> 
> uint32_t master_offset;
> 
> in mtd_info to:
> 
> uint64_t master_offset;
> 
> otherwise we can't create mtd partitions with a uint64_t offset. Or I am
> wrong with that? I mean... maybe they don't want to make a uint64_t
> offset but we should do it right at first time.

Yes, right. We should make this uint64_t.

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
